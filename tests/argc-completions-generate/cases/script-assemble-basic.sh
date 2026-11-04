#!/usr/bin/env bash
# scripts/assemble.sh: new script rendering, tag order, and alignment.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/assemble.sh" --help >"$TMP_DIR/assemble-help.txt" 2>&1
check "assemble usage default output" grep -Fq 'default: existing completion' "$TMP_DIR/assemble-help.txt"

# ---------------------------------------------------------------------------
# assemble.sh: new script, no context
# ---------------------------------------------------------------------------
new_script="$TMP_DIR/new.sh"
quiet bash "$SCRIPTS/assemble.sh" demo -c "$FIXTURES/fragments/no-choice" --stdout >"$new_script"
check "assemble new bash syntax" bash -n "$new_script"
check "assemble new argc export" bash -c "argc --argc-export '$(native_path "$new_script")' >/dev/null"
check "assemble new block markers" bash -c "grep -Fq '# >>> SPEC' '$new_script' && grep -Fq '# >>> HINTS' '$new_script'"
assert_contains "assemble new static choices" "$new_script" '--format[text|json]'
assert_contains "assemble new nested command" "$new_script" 'remote::add() {'
assert_contains "assemble new subcommand alias" "$new_script" '# @alias r'
assert_contains "assemble new shadow function" "$new_script" 'cat_() {'
assert_contains "assemble arg optional" "$new_script" '# @arg v1 <V1>'
assert_contains "assemble arg required" "$new_script" '# @arg name! <NAME>'
check "assemble aligns flag description at column 49" \
    gawk '/^# @flag -v --verbose / { found = index($0, "Verbose output") == 49 } END { exit !found }' "$new_script"

# Tag order inside a command block is owned by assembly: a fragment that lists
# an arg among the options still renders flag/option tags first, then args, and
# each group keeps the fragment order.
mkdir -p "$TMP_DIR/fragments-item-order"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-item-order/"
jq '.items = ([
  {"kind": "arg", "name": "first", "repeatable": false, "required": false, "notation": "<FIRST>", "choices": [{"value": "x", "description": "Ex"}, {"value": "y", "description": "Why"}], "choice_fn": null, "description": "First value"},
  {"kind": "option", "names": ["--late"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": "Mode A"}, {"value": "b", "description": "Mode B"}], "choice_fn": null, "repeatable": false, "description": "Late option"},
  {"kind": "arg", "name": "second", "repeatable": false, "required": true, "notation": "<SECOND>", "choices": [], "choice_fn": null, "description": "Second value"}
] + .items)' \
    "$(native_path "$TMP_DIR/fragments-item-order/_root.json")" >"$TMP_DIR/item-order.tmp" && \
    mv "$TMP_DIR/item-order.tmp" "$TMP_DIR/fragments-item-order/_root.json"
order_script="$TMP_DIR/item-order.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-item-order" --stdout >"$order_script"
gawk '/^# \{+ / { exit } /^# @(flag|option|arg) / { print $2 }' "$order_script" >"$TMP_DIR/item-order-tags.txt"
printf '%s\n' "@option" "@flag" "@option" "@option" "@arg" "@arg" >"$TMP_DIR/item-order-expected.txt"
check "assemble renders flag/option tags before arg tags" cmp -s "$TMP_DIR/item-order-tags.txt" "$TMP_DIR/item-order-expected.txt"
check "assemble keeps positional order" bash -c "
    argc --argc-export '$(native_path "$order_script")' | jq -e '.positionals | map(.id) == [\"first\", \"second\"]' >/dev/null
"
check "assemble moves static functions with their items" gawk '
    /^_static_late\(\)/ { late = NR }
    /^_static_first\(\)/ { first = NR }
    END { exit !(late && first && late < first) }
' "$order_script"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-item-order" --context "$order_script" --stdout >"$TMP_DIR/item-order-again.sh"
check "assemble item order idempotent" cmp -s "$order_script" "$TMP_DIR/item-order-again.sh"
check "verify item order script" bash "$SCRIPTS/verify-completion.sh" "$order_script" --cmd demo --cache-dir "$TMP_DIR/fragments-item-order" --skip-compgen

# Long tags fall back to a plain two-space separator instead of being padded.
mkdir -p "$TMP_DIR/fragments-align"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-align/"
jq '.items += [{"kind": "option", "names": ["--tiebreak"], "notations": ["<CRI>"], "choices": [{"value": "length", "description": ""}, {"value": "chunk", "description": ""}, {"value": "pathname", "description": ""}, {"value": "begin", "description": ""}, {"value": "end", "description": ""}, {"value": "index", "description": ""}], "repeatable": false, "description": "Comma-separated list of sort criteria"}]' \
    "$(native_path "$TMP_DIR/fragments-align/_root.json")" >"$TMP_DIR/align-root.json" && \
    mv "$TMP_DIR/align-root.json" "$TMP_DIR/fragments-align/_root.json"
align_script="$TMP_DIR/align.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-align" --stdout >"$align_script"
check "assemble long tag keeps two spaces" \
    gawk 'index($0, "# @option --tiebreak[length|chunk|pathname|begin|end|index] <CRI>  Comma-separated list") == 1 { found = 1 } END { exit !found }' "$align_script"
assert_not_contains "assemble new no choice fn" "$new_script" '_choice_'
check "assemble new empty prompt block" bash -c "grep -A1 '^# >>> HINTS$' '$new_script' | grep -q '^# <<< HINTS$'"
check "assemble new omits empty optional blocks" bash -c "! grep -Eq '^# >>> (STATIC|CHOICES)$' '$new_script'"
check "verify new no-choice" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$FIXTURES/fragments/no-choice" --skip-compgen --require-no-choice-fns
# Re-assembly is byte-stable, and empty optional blocks left by older runs are
# dropped instead of being re-emitted.
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$new_script" --stdout >"$TMP_DIR/new-again.sh"
check "assemble new idempotent" cmp -s "$new_script" "$TMP_DIR/new-again.sh"
empty_blocks="$TMP_DIR/empty-blocks.sh"
gawk '/^command eval / && !done {
        print "# >>> STATIC"
        print "# <<< STATIC"
        print ""
        print "# >>> CHOICES"
        print "# <<< CHOICES"
        print ""
        done = 1
    }
    { print }' "$new_script" >"$empty_blocks"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$empty_blocks" --stdout >"$TMP_DIR/empty-blocks-again.sh"
check "assemble drops empty optional blocks" cmp -s "$new_script" "$TMP_DIR/empty-blocks-again.sh"

helper_finish
