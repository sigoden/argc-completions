#!/usr/bin/env bash
# scripts/assemble.sh: one jq invocation per fragment, not one per field.
#
# The guard is deterministic (a PATH shim counts jq runs), so it never depends on
# wall-clock timing: re-introducing a per-field jq call in the loader, renderer,
# or reference check fails the count immediately.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

leaves=24
fragments="$TMP_DIR/fragments-perf"
mkdir -p "$fragments"

# A parent plus N terminal subcommands. Each leaf is a minimal valid fragment
# (source.kind none needs an empty hash), so loading them exercises exactly the
# per-fragment path: validate, derive, render.
subcommands='['
for i in $(seq -w 1 "$leaves"); do
    name="leaf$i"
    printf '{\n  "schemaVersion": 1,\n  "path": ["perf", "%s"],\n  "description": "Leaf %s",\n  "aliases": [],\n  "meta": [],\n  "items": [],\n  "subcommands": [],\n  "source": {"kind": "none"},\n  "notes": "",\n  "hash": ""\n}\n' \
        "$name" "$i" >"$fragments/$name.json"
    subcommands+="{\"name\": \"$name\", \"aliases\": [], \"description\": \"Leaf $i\", \"status\": \"succeeded\"},"
done
subcommands="${subcommands%,}]"

printf '{\n  "schemaVersion": 1,\n  "path": ["perf"],\n  "description": "Perf root",\n  "aliases": [],\n  "meta": [],\n  "items": [\n    {"kind": "flag", "names": ["-v", "--verbose"], "repeatable": false, "description": "Verbose output"},\n    {"kind": "option", "names": ["--format"], "notations": ["<FORMAT>"], "choices": [{"value": "text", "description": "Plain text"}, {"value": "json", "description": "JSON output"}], "choice_fn": null, "repeatable": false, "description": "Output format"}\n  ],\n  "subcommands": %s,\n  "source": {"kind": "none"},\n  "notes": "",\n  "hash": ""\n}\n' \
    "$subcommands" >"$fragments/_root.json"

# --- counting shim --------------------------------------------------------
shim_dir="$TMP_DIR/shim"
mkdir -p "$shim_dir"
real_jq="$(command -v jq)"
counter="$TMP_DIR/jq-count"
printf '#!/usr/bin/env bash\nprintf "x\\n" >>"%s"\nexec "%s" "$@"\n' "$counter" "$real_jq" >"$shim_dir/jq"
chmod +x "$shim_dir/jq"

plain_script="$TMP_DIR/plain.sh"
assemble_to "$plain_script" perf --cache-dir "$fragments" --stdout

shim_script="$TMP_DIR/shim.sh"
: >"$counter"
PATH="$shim_dir:$PATH" assemble_to "$shim_script" perf --cache-dir "$fragments" --stdout
jq_run_lines=()
mapfile -t jq_run_lines <"$counter" || true
jq_runs="${#jq_run_lines[@]}"
# One run per fragment, plus the export/static-name checks after rendering.
budget=$((leaves + 8))
if [[ "$jq_runs" -le "$budget" ]]; then
    pass "assemble uses one jq run per fragment ($jq_runs <= $budget)"
else
    fail "assemble uses one jq run per fragment ($jq_runs > $budget): per-field jq calls are back"
fi
assert_same "assemble output is unchanged by the shim" "$plain_script" "$shim_script"
check_export "assemble output is a valid argc script" "$plain_script"
assert_contains "assemble still renders static choices" "$plain_script" '--format[?`_static_format`] <FORMAT>'
assert_contains "assemble still renders every subcommand" "$plain_script" 'leaf24() {'

helper_finish
