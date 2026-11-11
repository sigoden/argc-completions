#!/usr/bin/env bash
# scripts/assemble.sh: option, terminated, and notation schema.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# --- prefixed/delimiter options -------------------------------------------
build_prefix_fixture
prefix_script="$PREFIX_SCRIPT"
assert_contains "assemble prefixed option" "$prefix_script" '# @option -ao-*[a|s|t|u]'
assert_contains "assemble prefixed non-repeatable" "$prefix_script" '# @option -Q-[X]'
assert_contains "assemble delimiter option" "$prefix_script" '# @option --type*,[d|f] <TYPE>'
assert_contains "assemble delimiter arg" "$prefix_script" '# @arg types*,[d|f] <TYPE>'
assert_contains "assemble combined prefix delimiter" "$prefix_script" '# @option -Z-*,[a|b]'
check "assemble prefixed/delimiter syntax" bash -n "$prefix_script"
quiet argc_export "$prefix_script" "$TMP_DIR/prefix-delimiter-export.json"
assert_jq "export prefixed option" \
    '.flag_options[] | select(.names | index("-ao")) | .prefixed == true and .multiple_occurs == true and .choice.data == ["a", "s", "t", "u"]' \
    "$TMP_DIR/prefix-delimiter-export.json"
assert_jq "export prefixed non-repeatable" \
    '.flag_options[] | select(.names | index("-Q")) | .prefixed == true and .multiple_occurs == false and .choice.data == ["X"]' \
    "$TMP_DIR/prefix-delimiter-export.json"
assert_jq "export delimiter option" \
    '.flag_options[] | select(.names | index("--type")) | .delimiter == "," and .multiple_occurs == true and .choice.data == ["d", "f"]' \
    "$TMP_DIR/prefix-delimiter-export.json"
assert_jq "export delimiter arg" \
    '.positionals[] | select(.id == "types") | .delimiter == "," and .multiple == true and .required == false and .choice.data == ["d", "f"]' \
    "$TMP_DIR/prefix-delimiter-export.json"
assert_jq "export combined prefix delimiter" \
    '.flag_options[] | select(.names | index("-Z")) | .prefixed == true and .delimiter == "," and .multiple_occurs == true and .choice.data == ["a", "b"]' \
    "$TMP_DIR/prefix-delimiter-export.json"
verify_check "verify prefixed/delimiter" "$prefix_script" --cache-dir "$PREFIX_FRAGMENTS"

# A required, repeatable arg keeps the delimiter outside its notation.
required_delimiter="$TMP_DIR/fragments-arg-delimiter-required"
fragment_with_items "$required_delimiter" '[{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "delimiter": ",", "description": "Files"}]'
required_arg_script="$TMP_DIR/required-arg-delimiter.sh"
assemble_to "$required_arg_script" demo --cache-dir "$required_delimiter" --stdout
assert_contains "assemble required delimiter arg" "$required_arg_script" '# @arg files+, <FILE>'
quiet argc_export "$required_arg_script" "$TMP_DIR/required-arg-delimiter-export.json"
assert_jq "export required delimiter arg fields" \
    '.positionals[] | select(.id == "files") | .delimiter == "," and .multiple == true and .required == true' \
    "$TMP_DIR/required-arg-delimiter-export.json"

# --- terminated values ----------------------------------------------------
build_terminated_fixture
terminated_script="$TERMINATED_SCRIPT"
assert_contains "assemble terminated option" "$terminated_script" '# @option --command~ <COMMAND>'
assert_contains "assemble terminated arg" "$terminated_script" '# @arg args~ <ARG>'
quiet argc_export "$terminated_script" "$TMP_DIR/terminated-export.json"
assert_jq "export terminated option" \
    '.flag_options[] | select(.names | index("--command")) | .terminated == true and .multiple_values == true and .multiple_occurs == false' \
    "$TMP_DIR/terminated-export.json"
assert_jq "export terminated arg" \
    '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true' \
    "$TMP_DIR/terminated-export.json"
verify_check "verify terminated" "$terminated_script" --cache-dir "$TERMINATED_FRAGMENTS"

# A required terminated arg renders "~" alone: argc rejects name!~, so assembly
# drops the requiredness and keeps it in the fragment as provenance only.
required_terminated="$TMP_DIR/fragments-terminated-required"
fragment_with_items "$required_terminated" '[
  {"kind": "arg", "name": "args", "repeatable": false, "required": true, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
required_terminated_script="$TMP_DIR/terminated-required.sh"
assemble_to "$required_terminated_script" demo --cache-dir "$required_terminated" --stdout
assert_contains "assemble required terminated arg" "$required_terminated_script" '# @arg args~ <ARG>'
assert_not_contains "assemble required terminated arg drops bang" "$required_terminated_script" '# @arg args!~'
quiet argc_export "$required_terminated_script" "$TMP_DIR/terminated-required-export.json"
assert_jq "export required terminated arg fields" \
    '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true and .required == false' \
    "$TMP_DIR/terminated-required-export.json"
verify_check "verify required terminated arg" "$required_terminated_script" --cache-dir "$required_terminated"

literal_tilde="$TMP_DIR/fragments-terminated-literal"
fragment_with_items "$literal_tilde" '[{"kind": "option", "names": ["-~", "--value"], "notations": ["<VALUE>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Literal"}]'
literal_script="$TMP_DIR/terminated-literal.sh"
assemble_to "$literal_script" demo --cache-dir "$literal_tilde" --stdout
assert_contains "assemble literal tilde name" "$literal_script" '# @option -~ --value <VALUE>'
verify_check "verify literal tilde name" "$literal_script" --cache-dir "$literal_tilde"

bad_terminated_repeatable="$TMP_DIR/fragments-bad-terminated-repeatable"
fragment_with_items "$bad_terminated_repeatable" '[{"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Bad", "terminated": true}]'
assemble_rejects "assemble rejects terminated repeatable" "$bad_terminated_repeatable"
bad_terminated_flag="$TMP_DIR/fragments-bad-terminated-flag"
fragment_with_items "$bad_terminated_flag" '[{"kind": "flag", "names": ["--command"], "repeatable": false, "description": "Bad", "terminated": true}]'
assemble_rejects "assemble rejects terminated flag" "$bad_terminated_flag"
bad_terminated_name="$TMP_DIR/fragments-bad-terminated-name"
fragment_with_items "$bad_terminated_name" '[{"kind": "option", "names": ["--command~"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
assemble_rejects "assemble rejects name ending in tilde" "$bad_terminated_name"

# --- notation modifiers ---------------------------------------------------
notation_fragments="$TMP_DIR/fragments-notation-modifiers"
fragment_with_items "$notation_fragments" '[
  {"kind": "option", "names": ["--files"], "notations": ["<FILE+>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Input files"},
  {"kind": "option", "names": ["--maybe"], "notations": ["<VALUE?>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Optional value"},
  {"kind": "option", "names": ["-l"], "notations": ["<script>", "<args*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Execute script", "terminated": true}
]'
notation_script="$TMP_DIR/notation-modifiers.sh"
assemble_to "$notation_script" demo --cache-dir "$notation_fragments" --stdout
assert_contains "assemble notation plus" "$notation_script" '# @option --files <FILE+>'
assert_contains "assemble notation optional" "$notation_script" '# @option --maybe <VALUE?>'
assert_contains "assemble notation terminated args" "$notation_script" '# @option -l~ <script> <args*>'
quiet argc_export "$notation_script" "$TMP_DIR/notation-modifiers-export.json"
assert_jq "export notation plus" \
    '.flag_options[] | select(.names | index("--files")) | .notations == ["FILE+"] and .num_args[0] == 1 and .num_args[1] > 1 and .multiple_occurs == false' \
    "$TMP_DIR/notation-modifiers-export.json"
assert_jq "export notation optional" \
    '.flag_options[] | select(.names | index("--maybe")) | .notations == ["VALUE?"] and .num_args == [0, 1]' \
    "$TMP_DIR/notation-modifiers-export.json"
assert_jq "export notation terminated args" \
    '.flag_options[] | select(.names | index("-l")) | .notations == ["SCRIPT", "ARGS*~"] and .terminated == true' \
    "$TMP_DIR/notation-modifiers-export.json"
verify_check "verify notation modifiers" "$notation_script" --cache-dir "$notation_fragments"

# Only the final notation may carry a modifier, and an arg notation may never
# carry one: argc would silently read them as a different arity.
non_final_notation="$TMP_DIR/fragments-bad-nonfinal-notation"
fragment_with_items "$non_final_notation" '[{"kind": "option", "names": ["--pair"], "notations": ["<LEFT*>", "<RIGHT>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
check_rejects "assemble rejects non-final notation modifier" "only the final option notation" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$non_final_notation" --stdout
arg_notation="$TMP_DIR/fragments-bad-arg-notation"
fragment_with_items "$arg_notation" '[{"kind": "arg", "name": "files", "repeatable": true, "required": false, "notation": "<FILE*>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Bad"}]'
check_rejects "assemble rejects arg notation modifier" "arg notation must not carry" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$arg_notation" --stdout
empty_notation="$TMP_DIR/fragments-bad-empty-notation"
fragment_with_items "$empty_notation" '[{"kind": "option", "names": ["--empty"], "notations": ["<*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
assemble_rejects "assemble rejects empty notation name" "$empty_notation"

helper_finish
