#!/usr/bin/env bash
# scripts/extract-cmd-context.sh: META/HINTS/DIFF extraction, ordering, and
# notation/choice_fn/terminated diffing against a fragment baseline.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

context="$FIXTURES/contexts/context.sh"
cache="$TMP_DIR/context-cache"
mkdir -p "$cache"
cp -R "$FIXTURES/fragments/with-choice/." "$cache/"

# ---------------------------------------------------------------------------
# Fragment baseline present: only the real differences are emitted.
# ---------------------------------------------------------------------------
cat >"$TMP_DIR/context-expected.txt" <<'EXPECTED'
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote \
    --completion "$context" --cache-dir "$cache" >"$TMP_DIR/context-actual.txt"
check "extract new-layout context order" diff -u "$TMP_DIR/context-expected.txt" "$TMP_DIR/context-actual.txt"

# A missing fragment is an empty baseline: script values are recovered.
cat >"$TMP_DIR/context-empty-expected.txt" <<'EXPECTED'
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote \
    --completion "$context" --cache-dir "$TMP_DIR/no-such-cache" >"$TMP_DIR/context-empty.txt"
check "extract empty baseline recovers script values" diff -u "$TMP_DIR/context-empty-expected.txt" "$TMP_DIR/context-empty.txt"

# --no-meta is the hash body: HINTS and DIFF only.
cat >"$TMP_DIR/context-no-meta-expected.txt" <<'EXPECTED'
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote \
    --completion "$context" --cache-dir "$TMP_DIR/no-such-cache" --no-meta >"$TMP_DIR/context-no-meta.txt"
check "extract --no-meta omits META" diff -u "$TMP_DIR/context-no-meta-expected.txt" "$TMP_DIR/context-no-meta.txt"

# An empty HINTS/DIFF body is empty so a first-generation hash matches the
# script assembled afterwards.
cat >"$TMP_DIR/empty-context.sh" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# <<< SPEC

# >>> HINTS
# <<< HINTS
SCRIPT
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo \
    --completion "$TMP_DIR/empty-context.sh" --no-meta >"$TMP_DIR/context-empty-body.txt"
check "extract --no-meta empty body" test ! -s "$TMP_DIR/context-empty-body.txt"
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo \
    --completion "$TMP_DIR/empty-context.sh" >"$TMP_DIR/context-empty-full.txt"
assert_contains "extract default keeps markers" "$TMP_DIR/context-empty-full.txt" '# >>> HINTS
# <<< HINTS

# >>> DIFF
# <<< DIFF'

# An explicit --fragment overrides the cache lookup.
jq '.items[0].notations = ["<OVERRIDE>"]' "$(native_path "$cache/remote.json")" >"$TMP_DIR/context-override.json"
assert_contains "extract --fragment baseline" <(
    bash "$SCRIPTS/extract-cmd-context.sh" demo remote --completion "$context" \
        --cache-dir "$cache" --fragment "$TMP_DIR/context-override.json"
) '#   notation: <OVERRIDE> => <VALUE>'
expect_failure "extract rejects missing --fragment" bash "$SCRIPTS/extract-cmd-context.sh" \
    demo remote --completion "$context" --fragment "$TMP_DIR/no-such-fragment.json"

# The root has a fragment match and no DIFF.
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo \
    --completion "$context" --cache-dir "$cache" >"$TMP_DIR/root-context.txt"
assert_contains "extract root prompt" "$TMP_DIR/root-context.txt" '# - prompt for demo'
assert_contains "extract root empty diff" "$TMP_DIR/root-context.txt" '# >>> DIFF
# <<< DIFF'
meta_line="$(grep -n '^# >>> META$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
prompt_line="$(grep -n '^# >>> HINTS$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
diff_line="$(grep -n '^# >>> DIFF$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
check "extract section order" test "$meta_line" -lt "$prompt_line" -a "$prompt_line" -lt "$diff_line"

# ---------------------------------------------------------------------------
# HINTS body selection.
# ---------------------------------------------------------------------------
check_to "$TMP_DIR/hints-root.txt" "extract hints root body" bash -c \
    "bash '$SCRIPTS/extract-cmd-context.sh' demo --completion '$context' | gawk '/^# >>> HINTS\$/ {b=1;next} /^# <<< HINTS\$/ {b=0} b' >'$TMP_DIR/hints-root.body'"
printf '%s\n' '# - prompt common to every demo command' '# - prompt for demo' >"$TMP_DIR/hints-root.expected"
check "extract hints root content" cmp -s "$TMP_DIR/hints-root.expected" "$TMP_DIR/hints-root.body"

# The exact comparison proves the root section is not inherited by the child.
check_to "$TMP_DIR/hints-sub.txt" "extract hints subcommand body" bash -c \
    "bash '$SCRIPTS/extract-cmd-context.sh' demo remote --completion '$context' | gawk '/^# >>> HINTS\$/ {b=1;next} /^# <<< HINTS\$/ {b=0} b' >'$TMP_DIR/hints-sub.body'"
printf '%s\n' '# - prompt common to every demo command' '# - prompt for demo remote' >"$TMP_DIR/hints-sub.expected"
check "extract hints subcommand content" cmp -s "$TMP_DIR/hints-sub.expected" "$TMP_DIR/hints-sub.body"

# Common lines reach a path that has no section of its own.
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo missing --completion "$context" >"$TMP_DIR/hints-none.txt"
assert_contains "extract hints common lines reach every path" "$TMP_DIR/hints-none.txt" '# - prompt common to every demo command'
check "extract hints missing path has no section" bash -c \
    "! grep -Fqx -- '# - prompt for demo' '$TMP_DIR/hints-none.txt' && ! grep -Fqx -- '# - prompt for demo remote' '$TMP_DIR/hints-none.txt'"

quiet bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/no-such-completion.sh" >"$TMP_DIR/hints-no-completion.txt"
check "extract hints missing completion empty" test ! -s "$TMP_DIR/hints-no-completion.txt"

printf '#!/usr/bin/env bash\n# nothing here\n' >"$TMP_DIR/no-hints.sh"
expect_failure "extract rejects unmarked script" bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/no-hints.sh"
no_block_log="$TMP_DIR/hints-no-block.err"
bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/no-hints.sh" >"$TMP_DIR/hints-no-block.txt" 2>"$no_block_log" || true
check "extract unmarked script prints no context" test ! -s "$TMP_DIR/hints-no-block.txt"
assert_contains "extract reports no block markers" "$no_block_log" "no block markers"

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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/wrong-block.sh" >"$TMP_DIR/hints-wrong-block.txt"
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote --completion "$TMP_DIR/hints-spacing.sh" >"$TMP_DIR/hints-spacing.txt"
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$TMP_DIR/hints-empty-marker.sh" >"$TMP_DIR/hints-empty-marker.txt"
assert_contains "extract hints empty marker keeps common lines" "$TMP_DIR/hints-empty-marker.txt" '# - common hint'
assert_not_contains "extract hints empty marker matches nothing" "$TMP_DIR/hints-empty-marker.txt" '# - unattached hint'

# ---------------------------------------------------------------------------
# Prefixed names, terminated markers, two names, and generated _static_ names.
# ---------------------------------------------------------------------------
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
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo-tags \
    --completion "$TMP_DIR/tags.sh" --cache-dir "$TMP_DIR/tags-cache" >"$TMP_DIR/tags.txt"
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
