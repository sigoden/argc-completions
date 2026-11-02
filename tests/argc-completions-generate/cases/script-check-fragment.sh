#!/usr/bin/env bash
# scripts/check-fragment.sh: hit, invalid, missing, unverified, failed.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/check-fragment.sh" --help >"$TMP_DIR/check-fragment-help.txt" 2>&1
check "check-fragment usage exit status" grep -Fq 'Exit status is 0 for every reported status' "$TMP_DIR/check-fragment-help.txt"

mkdir -p "$TMP_DIR/bin"
cat >"$TMP_DIR/bin/check-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: check-demo [OPTIONS]\n\nOptions:\n  --foo  Foo value\n'
DEMO
chmod +x "$TMP_DIR/bin/check-demo"
PATH="$TMP_DIR/bin:$PATH"

check_cache="$TMP_DIR/cache-check"
mkdir -p "$check_cache"
completion="$TMP_DIR/check-completion.sh"
cat >"$completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @option --foo[?`_choice_foo`] <VALUE>  Foo value
# <<< SPEC

# >>> HINTS
# %%check-demo
# - check hint
# <<< HINTS
SCRIPT

write_fragment() {
    local file="$1" kind="$2" command="$3" hash="$4"
    if [[ "$kind" == "none" ]]; then
        jq -n '
            {schemaVersion: 1, path: ["check-demo"], description: "Check demo", aliases: [], meta: [], items: [], subcommands: [],
             source: {kind: "none"}, hash: "", notes: ""}
        ' >"$file"
        return
    fi
    jq -n --arg kind "$kind" --arg command "$command" --arg hash "$hash" '
        {schemaVersion: 1, path: ["check-demo"], description: "Check demo", aliases: [], meta: [],
         items: [{"kind": "option", "names": ["--foo"], "notations": ["<VALUE>"], "choices": [],
                  "choice_fn": "_choice_foo", "repeatable": false, "prefixed": false,
                  "delimiter": null, "description": "Foo value"}],
         subcommands: [], source: {kind: $kind, command: $command}, hash: $hash, notes: ""}
    ' >"$file"
}

write_fragment "$check_cache/_root.json" help 'check-demo --help' ''
root_hash="$(bash "$SCRIPTS/fragment-hash.sh" check-demo --cache-dir "$check_cache" \
    --completion "$completion" --command 'check-demo --help' \
    --fragment "$check_cache/_root.json")"
write_fragment "$check_cache/_root.json" help 'check-demo --help' "$root_hash"
check_to "$TMP_DIR/check-hit.txt" "check-fragment hit" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment hit status" "$TMP_DIR/check-hit.txt" "status=hit"
assert_contains "check-fragment hit hash" "$TMP_DIR/check-hit.txt" "hash=$root_hash"

# Only the target fragment is consulted: an unrelated invalid file does not
# affect the root check.
printf '{}\n' >"$check_cache/other.json"
check_to "$TMP_DIR/check-hit-other.txt" "check-fragment ignores other nodes" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment other ignored" "$TMP_DIR/check-hit-other.txt" "status=hit"
rm -f "$check_cache/other.json"

# A manual SPEC notation/choice_fn edit changes the context DIFF -> mismatch.
sed 's/_choice_foo/_choice_bar/' "$completion" >"$TMP_DIR/check-completion-edit.sh"
check_to "$TMP_DIR/check-diff.txt" "check-fragment context diff mismatch" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" \
    --completion "$TMP_DIR/check-completion-edit.sh"
assert_contains "check-fragment context diff status" "$TMP_DIR/check-diff.txt" "status=invalid reason=hash-mismatch"

# Changed help -> hash mismatch.
cat >"$TMP_DIR/bin/check-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: check-demo [OPTIONS]\n\nOptions:\n  --foo  Changed value\n'
DEMO
chmod +x "$TMP_DIR/bin/check-demo"
check_to "$TMP_DIR/check-mismatch.txt" "check-fragment hash mismatch" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment mismatch status" "$TMP_DIR/check-mismatch.txt" "status=invalid reason=hash-mismatch"

# A missing fragment is reported without touching the cache.
check_to "$TMP_DIR/check-missing.txt" "check-fragment missing" \
    bash "$SCRIPTS/check-fragment.sh" check-demo missing --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment missing status" "$TMP_DIR/check-missing.txt" "path=check-demo missing status=missing"

# kind none -> failed, reusing the minimal fragment.
write_fragment "$check_cache/_root.json" none '' ''
check_to "$TMP_DIR/check-failed.txt" "check-fragment failed" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment failed status" "$TMP_DIR/check-failed.txt" "status=failed hash="

# Unavailable help -> unverified, not invalid.
printf '{"schemaVersion":1,"path":["check-demo"],"description":"Check demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"help","command":"no-such-check-command --help"},"hash":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","notes":""}\n' >"$check_cache/_root.json"
check_to "$TMP_DIR/check-unverified.txt" "check-fragment unverified" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment unverified status" "$TMP_DIR/check-unverified.txt" "status=unverified reason=help-unavailable"

# Schema failures are invalid and are never migrated.
write_fragment "$check_cache/_root.json" help 'check-demo --help' "$root_hash"
jq 'del(.hash)' "$check_cache/_root.json" >"$TMP_DIR/no-hash.json" && mv "$TMP_DIR/no-hash.json" "$check_cache/_root.json"
check_to "$TMP_DIR/check-no-hash.txt" "check-fragment missing hash" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment missing hash invalid" "$TMP_DIR/check-no-hash.txt" "status=invalid reason=schema"

printf '{"schemaVersion":1,"path":["check-demo"],"description":"Check demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","notes":""}\n' >"$check_cache/_root.json"
check_to "$TMP_DIR/check-none-hash.txt" "check-fragment none non-empty hash" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment none hash invalid" "$TMP_DIR/check-none-hash.txt" "status=invalid reason=schema"

printf '{"schemaVersion":1,"path":["check-demo"],"description":"Check demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"help","command":"check-demo --help; rm -rf /"},"hash":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","notes":""}\n' >"$check_cache/_root.json"
check_to "$TMP_DIR/check-unsafe.txt" "check-fragment unsafe command" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" --completion "$completion"
assert_contains "check-fragment unsafe invalid" "$TMP_DIR/check-unsafe.txt" "status=invalid reason=schema"

# The check writes no help file.
check "check-fragment writes no txt" bash -c "! find '$check_cache' -name '*.txt' | grep -q ."

helper_finish
