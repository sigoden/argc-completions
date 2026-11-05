#!/usr/bin/env bash
# scripts/assemble.sh: status, validation, and arg schema failures.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# --- status and tree validation failures -----------------------------------
todo_fragments="$TMP_DIR/fragments-todo"
fragment_dir "$todo_fragments"
fragment_jq "$todo_fragments/_root.json" '(.subcommands[] | select(.name == "remote") | .status) = "todo"'
assemble_rejects "assemble rejects todo" "$todo_fragments"

missing_fragments="$TMP_DIR/fragments-missing"
fragment_dir "$missing_fragments"
rm "$missing_fragments/remote/add.json"
assemble_rejects "assemble rejects missing fragment" "$missing_fragments"

stale_fragments="$TMP_DIR/fragments-stale"
fragment_dir "$stale_fragments"
cp "$stale_fragments/remote/add.json" "$stale_fragments/extra.json"
fragment_jq "$stale_fragments/extra.json" '.path = ["demo", "extra"] | .subcommands = []'
assemble_rejects "assemble rejects stale fragment" "$stale_fragments"

mismatch_fragments="$TMP_DIR/fragments-path-mismatch"
fragment_dir "$mismatch_fragments"
fragment_jq "$mismatch_fragments/remote.json" '.path = ["demo", "wrong"]'
assemble_rejects "assemble rejects path mismatch" "$mismatch_fragments"

unknown_status="$TMP_DIR/fragments-bad-status"
fragment_dir "$unknown_status"
fragment_jq "$unknown_status/_root.json" '(.subcommands[] | select(.name == "remote") | .status) = "unknown"'
assemble_rejects "assemble rejects invalid status" "$unknown_status"

bad_choice="$TMP_DIR/fragments-bad-choice"
fragment_dir "$bad_choice" "$FIXTURES/fragments/with-choice"
fragment_jq "$bad_choice/remote.json" '(.items[] | select(.names | index("--foo")) | .choice_fn) = ["_choice_foo"]'
assemble_rejects "assemble rejects non-string choice_fn" "$bad_choice" --context "$FIXTURES/contexts/context.sh"

# A fragment may name a function the context does not define.
missing_fn="$TMP_DIR/fragments-missing-fn"
fragment_dir "$missing_fn" "$FIXTURES/fragments/with-choice"
sed '/^_choice_foo() {/,/^}/d' "$FIXTURES/contexts/context.sh" >"$TMP_DIR/context-missing-fn.sh"
assemble_rejects "assemble rejects missing choice function" "$missing_fn" --context "$TMP_DIR/context-missing-fn.sh"

# --- path notations -------------------------------------------------------
# <path>, <file> and <dir> keep their literal text: argc expands them itself.
path_fragments="$TMP_DIR/fragments-path"
fragment_with_items "$path_fragments" '[
  {"kind": "option", "names": ["--config"], "notations": ["<path>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Config path"},
  {"kind": "option", "names": ["--file"], "notations": ["<file>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Input file"},
  {"kind": "option", "names": ["--dir"], "notations": ["<dir>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Output dir"}
]'
path_script="$TMP_DIR/path-notation.sh"
assemble_to "$path_script" demo --cache-dir "$path_fragments" --stdout
assert_contains "assemble path notation" "$path_script" '--config <path>'
assert_contains "assemble file notation" "$path_script" '--file <file>'
assert_contains "assemble dir notation" "$path_script" '--dir <dir>'
verify_check "verify path notation" "$path_script" --cache-dir "$path_fragments"

# --- arg repeatable/required schema --------------------------------------
required_repeatable="$TMP_DIR/fragments-arg-required-repeatable"
fragment_with_items "$required_repeatable" '[{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "description": "Files"}]' remote/add.json
assemble_to "$TMP_DIR/arg-required-repeatable.sh" demo --cache-dir "$required_repeatable" --stdout
assert_contains "assemble arg repeatable required" "$TMP_DIR/arg-required-repeatable.sh" '# @arg files+ <FILE>'

optional_repeatable="$TMP_DIR/fragments-arg-optional-repeatable"
fragment_with_items "$optional_repeatable" '[{"kind": "arg", "name": "rest", "repeatable": true, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "description": "Rest"}]' remote.json
assemble_to "$TMP_DIR/arg-optional-repeatable.sh" demo --cache-dir "$optional_repeatable" --stdout
assert_contains "assemble arg repeatable optional" "$TMP_DIR/arg-optional-repeatable.sh" '# @arg rest* <ARG>'

modifier_fragments="$TMP_DIR/fragments-modifier"
fragment_dir "$modifier_fragments"
fragment_jq "$modifier_fragments/remote/add.json" '.items[0].modifier = "!"'
assemble_rejects "assemble rejects modifier field" "$modifier_fragments"

no_required="$TMP_DIR/fragments-missing-required"
fragment_dir "$no_required"
fragment_jq "$no_required/remote/add.json" 'del(.items[0].required)'
assemble_rejects "assemble rejects arg without required" "$no_required"

helper_finish
