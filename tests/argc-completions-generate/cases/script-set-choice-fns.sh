#!/usr/bin/env bash
# scripts/set-choice-fns.sh: bindings, atomic batches, terminated conflicts.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# set-choice-fns.sh
# ---------------------------------------------------------------------------
scf_script="$SCRIPTS/set-choice-fns.sh"
check "set-choice-fns script" test -x "$scf_script"
check "set-choice-fns syntax" bash -n "$scf_script"

scf_dir="$TMP_DIR/fragments-set-choice"
mkdir -p "$scf_dir"
cp -R "$FIXTURES/fragments/with-choice/." "$scf_dir/"

scf_out="$TMP_DIR/set-choice-option.txt"
check_to "$scf_out" "set-choice-fns option" bash "$scf_script" "$scf_dir/_root.json" '--output[`_choice_out`]'
assert_contains "set-choice-fns reports match" "$scf_out" "matched=1"
assert_contains "set-choice-fns reports binding" "$scf_out" "binding=--output fn=_choice_out terminated=false"
check "set-choice-fns option binding" test "$(jq -r '.items[] | select(.names | index("--output")) | .choice_fn' "$scf_dir/_root.json")" = _choice_out
check "set-choice-fns option choices" test "$(jq -r '.items[] | select(.names | index("--output")) | .choices | length' "$scf_dir/_root.json")" = 0

# One call applies every binding of the batch and empties each static list.
scf_batch="$scf_dir/batch.json"
cp "$FIXTURES/fragments/with-choice/_root.json" "$scf_batch"
scf_batch_out="$TMP_DIR/set-choice-batch.txt"
check_to "$scf_batch_out" "set-choice-fns batch" bash "$scf_script" "$scf_batch" \
    '--output[`_choice_out`]' '--format[`_choice_format`]'
assert_contains "set-choice-fns batch count" "$scf_batch_out" "bindings=2"
check "set-choice-fns batch first" test "$(jq -r '.items[] | select(.names | index("--output")) | .choice_fn' "$scf_batch")" = _choice_out
check "set-choice-fns batch second" test "$(jq -r '.items[] | select(.names | index("--format")) | .choice_fn' "$scf_batch")" = _choice_format
check "set-choice-fns batch second choices" test "$(jq -r '.items[] | select(.names | index("--format")) | .choices | length' "$scf_batch")" = 0

check "set-choice-fns arg" bash "$scf_script" "$scf_dir/remote/add.json" 'name[_choice_name]'
check "set-choice-fns arg binding" test "$(jq -r '.items[] | select(.name == "name") | .choice_fn' "$scf_dir/remote/add.json")" = _choice_name

scf_split="$scf_dir/split.json"
jq -n '{schemaVersion:1,path:["demo","remote","add"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--eval-command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"},
  {kind:"option",names:["-ex"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_split"
check "set-choice-fns split option" bash "$scf_script" "$scf_split" \
    '--eval-command[`_choice_value`]' '-ex[`_choice_value`]'
check "set-choice-fns split first" test "$(jq -r '.items[] | select(.names | index("--eval-command")) | .choice_fn' "$scf_split")" = _choice_value
check "set-choice-fns split second" test "$(jq -r '.items[] | select(.names | index("-ex")) | .choice_fn' "$scf_split")" = _choice_value

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects flag" bash "$scf_script" "$scf_dir/_root.json" '-v[`_choice_v`]'
check "set-choice-fns flag leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects missing item" bash "$scf_script" "$scf_dir/_root.json" '--no-such-option[`_choice_missing`]'
check "set-choice-fns missing item leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects duplicate binding" bash "$scf_script" "$scf_dir/_root.json" \
    '--output[`_choice_a`]' '--output[`_choice_b`]'
check "set-choice-fns duplicate leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects malformed binding" bash "$scf_script" "$scf_dir/_root.json" '--output'
check "set-choice-fns malformed leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects overlapping bindings" bash "$scf_script" "$scf_dir/_root.json" \
    '-o[`_choice_a`]' '--output[`_choice_b`]'
check "set-choice-fns overlap leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

expect_failure "set-choice-fns rejects invalid function" bash "$scf_script" "$scf_dir/_root.json" '--output[invalid fn]'

# A batch is atomic: one bad binding keeps every binding unapplied.
cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns atomic batch" bash "$scf_script" "$scf_dir/_root.json" \
    '--format[`_choice_format`]' '-v[`_choice_v`]'
check "set-choice-fns atomic batch leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

scf_term="$scf_dir/terminated.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_term"
check "set-choice-fns terminated" bash "$scf_script" "$scf_term" '--command~[`_choice_command_args`]'
check "set-choice-fns terminated field" test "$(jq -r '.items[0].terminated' "$scf_term")" = true

scf_term_bad="$scf_dir/terminated-bad.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:true,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_term_bad"
cp "$scf_term_bad" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects terminated conflict" bash "$scf_script" "$scf_term_bad" '--command~[`_choice_command_args`]'
check "set-choice-fns terminated conflict leaves fragment unchanged" cmp -s "$scf_term_bad" "$TMP_DIR/set-choice-before.json"

scf_invalid="$scf_dir/invalid.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--output"],notations:["<FILE>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Out",value_type:"file"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_invalid"
cp "$scf_invalid" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns validates before write" bash "$scf_script" "$scf_invalid" '--output[`_choice_out`]'
check "set-choice-fns validation leaves fragment unchanged" cmp -s "$scf_invalid" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/remote.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fns rejects a leading marker" bash "$scf_script" "$scf_dir/remote.json" '--foo[`?_choice_foo`]'
check "set-choice-fns marker rejection leaves fragment unchanged" cmp -s "$scf_dir/remote.json" "$TMP_DIR/set-choice-before.json"

# The dynamic workflow binds a hand-written CHOICES function through this script.
build_dynamic_fixture
check "dynamic set-choice-fns" bash "$SCRIPTS/set-choice-fns.sh" "$TMP_DIR/fragments-dynamic/_root.json" '--output[`_choice_out`]'

helper_finish
