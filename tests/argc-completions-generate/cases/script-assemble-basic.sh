#!/usr/bin/env bash
# scripts/assemble.sh: new script rendering, tag order, and alignment.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/assemble.sh" --help >"$TMP_DIR/assemble-help.txt" 2>&1
assert_contains "assemble usage default output" "$TMP_DIR/assemble-help.txt" 'default: existing completion'

# --- a new script, no context ----------------------------------------------
build_new_script
new_script="$NEW_SCRIPT"
check "assemble new bash syntax" bash -n "$new_script"
check_export "assemble new argc export" "$new_script"
assert_contains "assemble new SPEC marker" "$new_script" '# >>> SPEC'
assert_contains "assemble new HINTS marker" "$new_script" '# >>> HINTS'
assert_contains "assemble new static choices" "$new_script" '--format[text|json]'
assert_contains "assemble new nested command" "$new_script" 'remote::add() {'
assert_contains "assemble new subcommand alias" "$new_script" '# @alias r'
assert_contains "assemble new shadow function" "$new_script" 'cat_() {'
assert_contains "assemble arg optional" "$new_script" '# @arg v1 <V1>'
assert_contains "assemble arg required" "$new_script" '# @arg name! <NAME>'
check "assemble aligns flag description at column 49" \
    gawk '/^# @flag -v --verbose / { found = index($0, "Verbose output") == 49 } END { exit !found }' "$new_script"
assert_not_contains "assemble new no choice fn" "$new_script" '_choice_'
check_block "assemble new empty prompt block" "$new_script" HINTS </dev/null
assert_not_contains "assemble new omits empty STATIC block" "$new_script" '# >>> STATIC'
assert_not_contains "assemble new omits empty CHOICES block" "$new_script" '# >>> CHOICES'
verify_check "verify new no-choice" "$new_script" --cache-dir "$FIXTURES/fragments/no-choice" --require-no-choice-fns

# --- tag order inside a command block --------------------------------------
# Assembly owns the order: a fragment that lists an arg among the options still
# renders flag/option tags first, then args, and each group keeps the fragment
# order.
order_fragments="$TMP_DIR/fragments-item-order"
fragment_dir "$order_fragments"
fragment_jq "$order_fragments/_root.json" '.items = ([
  {"kind": "arg", "name": "first", "repeatable": false, "required": false, "notation": "<FIRST>", "choices": [{"value": "x", "description": "Ex"}, {"value": "y", "description": "Why"}], "choice_fn": null, "description": "First value"},
  {"kind": "option", "names": ["--late"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": "Mode A"}, {"value": "b", "description": "Mode B"}], "choice_fn": null, "repeatable": false, "description": "Late option"},
  {"kind": "arg", "name": "second", "repeatable": false, "required": true, "notation": "<SECOND>", "choices": [], "choice_fn": null, "description": "Second value"}
] + .items)'
order_script="$TMP_DIR/item-order.sh"
assemble_to "$order_script" demo --cache-dir "$order_fragments" --stdout
gawk '/^# \{+ / { exit } /^# @(flag|option|arg) / { print $2 }' "$order_script" >"$TMP_DIR/item-order-tags.txt"
check_matches "assemble renders flag/option tags before arg tags" "$TMP_DIR/item-order-tags.txt" <<'TAGS'
@option
@flag
@option
@option
@arg
@arg
TAGS
check_export "assemble item order exports" "$order_script"
quiet argc_export "$order_script" "$TMP_DIR/item-order-export.json"
assert_jq "assemble keeps positional order" '.positionals | map(.id) == ["first", "second"]' \
    "$TMP_DIR/item-order-export.json"
check "assemble moves static functions with their items" gawk '
    /^_static_late\(\)/ { late = NR }
    /^_static_first\(\)/ { first = NR }
    END { exit !(late && first && late < first) }
' "$order_script"
assemble_to "$TMP_DIR/item-order-again.sh" demo --cache-dir "$order_fragments" --context "$order_script" --stdout
assert_same "assemble item order idempotent" "$order_script" "$TMP_DIR/item-order-again.sh"
verify_check "verify item order script" "$order_script" --cache-dir "$order_fragments"

# A long tag falls back to a plain two-space separator instead of being padded.
align_fragments="$TMP_DIR/fragments-align"
fragment_with_items "$align_fragments" '[{"kind": "option", "names": ["--tiebreak"], "notations": ["<CRI>"], "choices": [{"value": "length", "description": ""}, {"value": "chunk", "description": ""}, {"value": "pathname", "description": ""}, {"value": "begin", "description": ""}, {"value": "end", "description": ""}, {"value": "index", "description": ""}], "repeatable": false, "description": "Comma-separated list of sort criteria"}]'
align_script="$TMP_DIR/align.sh"
assemble_to "$align_script" demo --cache-dir "$align_fragments" --stdout
assert_contains "assemble long tag keeps two spaces" "$align_script" \
    '# @option --tiebreak[length|chunk|pathname|begin|end|index] <CRI>  Comma-separated list'

# --- regeneration keeps the script byte-stable -----------------------------
# Empty optional blocks left by an older run are dropped instead of re-emitted.
assemble_to "$TMP_DIR/new-again.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$new_script" --stdout
assert_same "assemble new idempotent" "$new_script" "$TMP_DIR/new-again.sh"
empty_blocks="$TMP_DIR/empty-blocks.sh"
insert_before "$new_script" "$empty_blocks" "$COMMAND_EVAL_LINE" \
    $'# >>> STATIC\n# <<< STATIC\n\n# >>> CHOICES\n# <<< CHOICES\n'
assemble_to "$TMP_DIR/empty-blocks-again.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$empty_blocks" --stdout
assert_same "assemble drops empty optional blocks" "$new_script" "$TMP_DIR/empty-blocks-again.sh"

helper_finish
