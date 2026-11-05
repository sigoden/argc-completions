#!/usr/bin/env bash
# scripts/extract-cmd-context.sh: META/HINTS/DIFF extraction, ordering, and
# notation/choice_fn/terminated diffing against a fragment baseline.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

context="$FIXTURES/contexts/context.sh"
cache="$TMP_DIR/context-cache"
fragment_dir "$cache" "$FIXTURES/fragments/with-choice"

# extract_ctx <out> <args...>: the context emitter's stdout for a command path.
extract_ctx() {
    local out="$1"
    shift
    quiet bash "$SCRIPTS/extract-cmd-context.sh" "$@" >"$out"
}

# --- fragment baseline present: only the real differences are emitted -----
extract_ctx "$TMP_DIR/context-actual.txt" demo remote --completion "$context" --cache-dir "$cache"
check_matches "extract new-layout context order" "$TMP_DIR/context-actual.txt" <<'EXPECTED'
# >>> META
# @meta inherit-flag-options
# <<< META

# >>> HINTS
# - prompt common to every demo command
# - prompt for demo remote
# <<< HINTS

# >>> DIFF
# @arg v1
#   notation: <V1> => (none)
#   choice_fn: (none) => _choice_val
# <<< DIFF
EXPECTED

# A missing fragment is an empty baseline: script values are recovered.
extract_ctx "$TMP_DIR/context-empty.txt" demo remote --completion "$context" --cache-dir "$TMP_DIR/no-such-cache"
check_matches "extract empty baseline recovers script values" "$TMP_DIR/context-empty.txt" <<'EXPECTED'
# >>> META
# @meta inherit-flag-options
# <<< META

# >>> HINTS
# - prompt common to every demo command
# - prompt for demo remote
# <<< HINTS

# >>> DIFF
# @option --foo
#   notation: (none) => <VALUE>
#   choice_fn: (none) => _choice_foo
# @arg v1
#   choice_fn: (none) => _choice_val
# <<< DIFF
EXPECTED

# --no-meta is the hash body: HINTS and DIFF only.
extract_ctx "$TMP_DIR/context-no-meta.txt" demo remote --completion "$context" \
    --cache-dir "$TMP_DIR/no-such-cache" --no-meta
check_matches "extract --no-meta omits META" "$TMP_DIR/context-no-meta.txt" <<'EXPECTED'
# >>> HINTS
# - prompt common to every demo command
# - prompt for demo remote
# <<< HINTS

# >>> DIFF
# @option --foo
#   notation: (none) => <VALUE>
#   choice_fn: (none) => _choice_foo
# @arg v1
#   choice_fn: (none) => _choice_val
# <<< DIFF
EXPECTED

# An empty HINTS/DIFF body is empty so a first-generation hash matches the
# script assembled afterwards.
cat >"$TMP_DIR/empty-context.sh" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# <<< SPEC

# >>> HINTS
# <<< HINTS
SCRIPT
extract_ctx "$TMP_DIR/context-empty-body.txt" demo --completion "$TMP_DIR/empty-context.sh" --no-meta
check "extract --no-meta empty body" test ! -s "$TMP_DIR/context-empty-body.txt"
extract_ctx "$TMP_DIR/context-empty-full.txt" demo --completion "$TMP_DIR/empty-context.sh"
check_matches "extract default keeps markers" "$TMP_DIR/context-empty-full.txt" <<'EXPECTED'
# >>> META
# <<< META

# >>> HINTS
# <<< HINTS

# >>> DIFF
# <<< DIFF
EXPECTED

# --- an explicit baseline -------------------------------------------------
fragment_jq "$cache/remote.json" '.items[0].notations = ["<OVERRIDE>"]'
cp "$cache/remote.json" "$TMP_DIR/context-override.json"
# Restore the fixture for the checks below.
fragment_dir "$cache" "$FIXTURES/fragments/with-choice"
extract_ctx "$TMP_DIR/context-override.txt" demo remote --completion "$context" \
    --cache-dir "$cache" --fragment "$TMP_DIR/context-override.json"
assert_contains "extract --fragment baseline" "$TMP_DIR/context-override.txt" '#   notation: <OVERRIDE> => <VALUE>'
expect_failure "extract rejects missing --fragment" bash "$SCRIPTS/extract-cmd-context.sh" \
    demo remote --completion "$context" --fragment "$TMP_DIR/no-such-fragment.json"

# The root has a fragment match and no DIFF.
extract_ctx "$TMP_DIR/root-context.txt" demo --completion "$context" --cache-dir "$cache"
assert_contains "extract root prompt" "$TMP_DIR/root-context.txt" '# - prompt for demo'
check_block "extract root empty diff" "$TMP_DIR/root-context.txt" DIFF </dev/null
check "extract section order" gawk '
    /^# >>> META$/ { meta = NR }
    /^# >>> HINTS$/ { hints = NR }
    /^# >>> DIFF$/ { diff = NR }
    END { exit !(meta && hints && diff && meta < hints && hints < diff) }
' "$TMP_DIR/root-context.txt"

# --- HINTS body selection -------------------------------------------------
extract_ctx "$TMP_DIR/hints-root.txt" demo --completion "$context"
block_body "$TMP_DIR/hints-root.txt" HINTS >"$TMP_DIR/hints-root.body"
check_matches "extract hints root content" "$TMP_DIR/hints-root.body" <<'HINTS'
# - prompt common to every demo command
# - prompt for demo
HINTS

# The exact comparison proves the root section is not inherited by the child.
extract_ctx "$TMP_DIR/hints-sub.txt" demo remote --completion "$context"
block_body "$TMP_DIR/hints-sub.txt" HINTS >"$TMP_DIR/hints-sub.body"
check_matches "extract hints subcommand content" "$TMP_DIR/hints-sub.body" <<'HINTS'
# - prompt common to every demo command
# - prompt for demo remote
HINTS

# Common lines reach a path that has no section of its own.
extract_ctx "$TMP_DIR/hints-none.txt" demo missing --completion "$context"
assert_contains "extract hints common lines reach every path" "$TMP_DIR/hints-none.txt" '# - prompt common to every demo command'
assert_lacks_line "extract hints missing path has no root section" "$TMP_DIR/hints-none.txt" '# - prompt for demo'
assert_lacks_line "extract hints missing path has no child section" "$TMP_DIR/hints-none.txt" '# - prompt for demo remote'

extract_ctx "$TMP_DIR/hints-no-completion.txt" demo --completion "$TMP_DIR/no-such-completion.sh"
check "extract hints missing completion empty" test ! -s "$TMP_DIR/hints-no-completion.txt"

printf '#!/usr/bin/env bash\n# nothing here\n' >"$TMP_DIR/no-hints.sh"
check_rejects "extract rejects unmarked script" "no block markers" \
    bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/no-hints.sh"
bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/no-hints.sh" \
    >"$TMP_DIR/hints-no-block.txt" 2>/dev/null || true
check "extract unmarked script prints no context" test ! -s "$TMP_DIR/hints-no-block.txt"

# A path marker in another block must not be read.
cat >"$TMP_DIR/wrong-block.sh" <<'SCRIPT'
# >>> SPEC
# %%demo
# @flag -x  Wrong block
# <<< SPEC
# >>> HINTS
# %%other
# - other hint
# <<< HINTS
SCRIPT
extract_ctx "$TMP_DIR/hints-wrong-block.txt" demo --completion "$TMP_DIR/wrong-block.sh"
assert_not_contains "extract hints only HINTS block" "$TMP_DIR/hints-wrong-block.txt" '# - other hint'

# Marker paths compare with collapsed whitespace.
cat >"$TMP_DIR/hints-spacing.sh" <<'SCRIPT'
# >>> SPEC
# @flag -x  X
# <<< SPEC
# >>> HINTS
# - common hint
# %%demo   remote
# - spaced marker hint
# %%demo
# - root marker hint
# <<< HINTS
SCRIPT
extract_ctx "$TMP_DIR/hints-spacing.txt" demo remote --completion "$TMP_DIR/hints-spacing.sh"
assert_contains "extract hints marker whitespace insensitive" "$TMP_DIR/hints-spacing.txt" '# - spaced marker hint'
assert_not_contains "extract hints marker stays scoped" "$TMP_DIR/hints-spacing.txt" '# - root marker hint'

# A marker without a path matches no command.
cat >"$TMP_DIR/hints-empty-marker.sh" <<'SCRIPT'
# >>> SPEC
# @flag -x  X
# <<< SPEC
# >>> HINTS
# - common hint
# %%
# - unattached hint
# <<< HINTS
SCRIPT
extract_ctx "$TMP_DIR/hints-empty-marker.txt" demo --completion "$TMP_DIR/hints-empty-marker.sh"
assert_contains "extract hints empty marker keeps common lines" "$TMP_DIR/hints-empty-marker.txt" '# - common hint'
assert_not_contains "extract hints empty marker matches nothing" "$TMP_DIR/hints-empty-marker.txt" '# - unattached hint'

# --- prefixed names, terminated markers, two names, _static_ names --------
cat >"$TMP_DIR/tags.sh" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @option --command~[?`_choice_command`] <CMD> <ARGS*>
# @option -ao-[?`_choice_mode`]
# @option --plain[?`_static_demo_plain`] <V>
# @option -f --format[?`_choice_format`] <FORMAT>
# @arg rest~[?`_choice_rest`] <ARG>
# <<< SPEC
# >>> HINTS
# <<< HINTS
SCRIPT
mkdir -p "$TMP_DIR/tags-cache"
cat >"$TMP_DIR/tags-cache/_root.json" <<'JSON'
{
  "schemaVersion": 1,
  "path": ["demo-tags"],
  "description": "Tags",
  "aliases": [],
  "meta": [],
  "items": [
    {"kind": "option", "names": ["--command"], "notations": ["<CMD>", "<ARGS*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command"},
    {"kind": "option", "names": ["-ao"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Mode"},
    {"kind": "option", "names": ["--plain"], "notations": ["<V>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Plain"},
    {"kind": "option", "names": ["-f", "--format"], "notations": ["<FORMAT>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Format"},
    {"kind": "arg", "name": "rest", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Rest"}
  ],
  "subcommands": [],
  "source": {"kind": "help", "command": "demo-tags --help"},
  "hash": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  "notes": ""
}
JSON
extract_ctx "$TMP_DIR/tags.txt" demo-tags --completion "$TMP_DIR/tags.sh" --cache-dir "$TMP_DIR/tags-cache"
assert_contains "extract terminated option" "$TMP_DIR/tags.txt" '#   terminated: false => true'
assert_contains "extract terminated choice" "$TMP_DIR/tags.txt" '#   choice_fn: (none) => _choice_command'
assert_contains "extract prefixed name is normalized" "$TMP_DIR/tags.txt" '# @option -ao
#   choice_fn: (none) => _choice_mode'
assert_contains "extract two-name option" "$TMP_DIR/tags.txt" '# @option -f --format
#   choice_fn: (none) => _choice_format'
assert_contains "extract terminated arg" "$TMP_DIR/tags.txt" '# @arg rest
#   choice_fn: (none) => _choice_rest
#   terminated: false => true'
assert_not_contains "extract ignores generated static name" "$TMP_DIR/tags.txt" '_static_demo_plain'

helper_finish
