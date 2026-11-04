#!/usr/bin/env bash
# scripts/assemble.sh: option, terminated, and notation schema.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# Option prefixed/delimiter schema
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-prefix-delimiter" '[
  {"kind": "option", "names": ["-ao"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "s", "description": ""}, {"value": "t", "description": ""}, {"value": "u", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Overwrite mode"},
  {"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"},
  {"kind": "option", "names": ["-Q"], "notations": [], "choices": [{"value": "X", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefix without repeat"},
  {"kind": "option", "names": ["-Z"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": ",", "description": "Prefix with delimiter"},
  {"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
]'
prefix_script="$TMP_DIR/prefix-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --stdout >"$prefix_script"
assert_contains "assemble prefixed option" "$prefix_script" '# @option -ao-*[a|s|t|u]'
assert_contains "assemble prefixed non-repeatable" "$prefix_script" '# @option -Q-[X]'
assert_contains "assemble delimiter option" "$prefix_script" '# @option --type*,[d|f] <TYPE>'
assert_contains "assemble delimiter arg" "$prefix_script" '# @arg types*,[d|f] <TYPE>'
assert_contains "assemble combined prefix delimiter" "$prefix_script" '# @option -Z-*,[a|b]'
check "assemble prefixed/delimiter syntax" bash -n "$prefix_script"
check "export prefixed/delimiter" bash -c "argc --argc-export '$(native_path "$prefix_script")' >'$TMP_DIR/prefix-delimiter-export.json'"
check "export prefixed option" jq -e '.flag_options[] | select(.long_name == "-ao") | .prefixed == true and .multiple_occurs == true and .choice.data == ["a", "s", "t", "u"]' "$(native_path "$TMP_DIR/prefix-delimiter-export.json")"
check "export prefixed non-repeatable" jq -e '.flag_options[] | select(.long_name == "-Q") | .prefixed == true and .multiple_occurs == false and .choice.data == ["X"]' "$(native_path "$TMP_DIR/prefix-delimiter-export.json")"
check "export delimiter option" jq -e '.flag_options[] | select(.long_name == "--type") | .delimiter == "," and .multiple_occurs == true and .choice.data == ["d", "f"]' "$(native_path "$TMP_DIR/prefix-delimiter-export.json")"
check "export delimiter arg" jq -e '.positionals[] | select(.id == "types") | .delimiter == "," and .multiple == true and .required == false and .choice.data == ["d", "f"]' "$(native_path "$TMP_DIR/prefix-delimiter-export.json")"
check "export combined prefix delimiter" jq -e '.flag_options[] | select(.long_name == "-Z") | .prefixed == true and .delimiter == "," and .multiple_occurs == true and .choice.data == ["a", "b"]' "$(native_path "$TMP_DIR/prefix-delimiter-export.json")"
check "verify prefixed/delimiter" bash "$SCRIPTS/verify-completion.sh" "$prefix_script" --cmd demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --skip-compgen

inject_root_items "$TMP_DIR/fragments-arg-delimiter-required" '[{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "delimiter": ",", "description": "Files"}]'
required_arg_script="$TMP_DIR/required-arg-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-delimiter-required" --stdout >"$required_arg_script"
assert_contains "assemble required delimiter arg" "$required_arg_script" '# @arg files+, <FILE>'
check "export required delimiter arg" bash -c "argc --argc-export '$(native_path "$required_arg_script")' >'$TMP_DIR/required-arg-delimiter-export.json'"
check "export required delimiter arg fields" jq -e '.positionals[] | select(.id == "files") | .delimiter == "," and .multiple == true and .required == true' "$(native_path "$TMP_DIR/required-arg-delimiter-export.json")"


# ---------------------------------------------------------------------------
# Terminated values
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-terminated" '[
  {"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command", "terminated": true},
  {"kind": "arg", "name": "args", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
terminated_script="$TMP_DIR/terminated.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated" --stdout >"$terminated_script"
assert_contains "assemble terminated option" "$terminated_script" '# @option --command~ <COMMAND>'
assert_contains "assemble terminated arg" "$terminated_script" '# @arg args~ <ARG>'
check "export terminated fields" bash -c "argc --argc-export '$(native_path "$terminated_script")' >'$TMP_DIR/terminated-export.json'"
check "export terminated option" jq -e '.flag_options[] | select(.long_name == "--command") | .terminated == true and .multiple_values == true and .multiple_occurs == false' "$(native_path "$TMP_DIR/terminated-export.json")"
check "export terminated arg" jq -e '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true' "$(native_path "$TMP_DIR/terminated-export.json")"
check "verify terminated" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen

# A required terminated arg renders "~" alone: argc rejects name!~, so assembly
# drops the requiredness and keeps it in the fragment as provenance only.
inject_root_items "$TMP_DIR/fragments-terminated-required" '[
  {"kind": "arg", "name": "args", "repeatable": false, "required": true, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
terminated_required_script="$TMP_DIR/terminated-required.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated-required" --stdout >"$terminated_required_script"
assert_contains "assemble required terminated arg" "$terminated_required_script" '# @arg args~ <ARG>'
assert_not_contains "assemble required terminated arg drops bang" "$terminated_required_script" '# @arg args!~'
check "export required terminated arg" bash -c "argc --argc-export '$(native_path "$terminated_required_script")' >'$TMP_DIR/terminated-required-export.json'"
check "export required terminated arg fields" jq -e '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true and .required == false' "$(native_path "$TMP_DIR/terminated-required-export.json")"
check "verify required terminated arg" bash "$SCRIPTS/verify-completion.sh" "$terminated_required_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-required" --skip-compgen

inject_root_items "$TMP_DIR/fragments-terminated-literal" '[{"kind": "option", "names": ["-~", "--value"], "notations": ["<VALUE>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Literal"}]'
literal_script="$TMP_DIR/terminated-literal.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --stdout >"$literal_script"
assert_contains "assemble literal tilde name" "$literal_script" '# @option -~ --value <VALUE>'
check "verify literal tilde name" bash "$SCRIPTS/verify-completion.sh" "$literal_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-terminated-repeatable" '[{"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-repeatable" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-flag" '[{"kind": "flag", "names": ["--command"], "repeatable": false, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-flag" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-name" '[{"kind": "option", "names": ["--command~"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects name ending in tilde" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-name" --stdout

# ---------------------------------------------------------------------------
# Notation modifiers
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-notation-modifiers" '[
  {"kind": "option", "names": ["--files"], "notations": ["<FILE+>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Input files"},
  {"kind": "option", "names": ["--maybe"], "notations": ["<VALUE?>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Optional value"},
  {"kind": "option", "names": ["-l"], "notations": ["<script>", "<args*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Execute script", "terminated": true}
]'
notation_script="$TMP_DIR/notation-modifiers.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-notation-modifiers" --stdout >"$notation_script"
assert_contains "assemble notation plus" "$notation_script" '# @option --files <FILE+>'
assert_contains "assemble notation optional" "$notation_script" '# @option --maybe <VALUE?>'
assert_contains "assemble notation terminated args" "$notation_script" '# @option -l~ <script> <args*>'
check "export notation modifiers" bash -c "argc --argc-export '$(native_path "$notation_script")' >'$TMP_DIR/notation-modifiers-export.json'"
check "export notation plus" jq -e '.flag_options[] | select(.long_name == "--files") | .notations == ["FILE+"] and .num_args[0] == 1 and .num_args[1] > 1 and .multiple_occurs == false' "$(native_path "$TMP_DIR/notation-modifiers-export.json")"
check "export notation optional" jq -e '.flag_options[] | select(.long_name == "--maybe") | .notations == ["VALUE?"] and .num_args == [0, 1]' "$(native_path "$TMP_DIR/notation-modifiers-export.json")"
check "export notation terminated args" jq -e '.flag_options[] | select(.long_name == "-l") | .notations == ["SCRIPT", "ARGS*~"] and .terminated == true' "$(native_path "$TMP_DIR/notation-modifiers-export.json")"
check "verify notation modifiers" bash "$SCRIPTS/verify-completion.sh" "$notation_script" --cmd demo --cache-dir "$TMP_DIR/fragments-notation-modifiers" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-nonfinal-notation" '[{"kind": "option", "names": ["--pair"], "notations": ["<LEFT*>", "<RIGHT>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
nonfinal_log="$(new_log)"
if run_quiet "$nonfinal_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-nonfinal-notation" --stdout; then
    fail "assemble rejects non-final notation modifier (unexpected success)"
else
    pass "assemble rejects non-final notation modifier"
fi
assert_contains "non-final notation modifier message" "$nonfinal_log" "only the final option notation"
inject_root_items "$TMP_DIR/fragments-bad-arg-notation" '[{"kind": "arg", "name": "files", "repeatable": true, "required": false, "notation": "<FILE*>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Bad"}]'
argmod_log="$(new_log)"
if run_quiet "$argmod_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-notation" --stdout; then
    fail "assemble rejects arg notation modifier (unexpected success)"
else
    pass "assemble rejects arg notation modifier"
fi
assert_contains "arg notation modifier message" "$argmod_log" "arg notation must not carry"
inject_root_items "$TMP_DIR/fragments-bad-empty-notation" '[{"kind": "option", "names": ["--empty"], "notations": ["<*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects empty notation name" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-empty-notation" --stdout


helper_finish
