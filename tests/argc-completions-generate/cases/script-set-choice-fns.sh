#!/usr/bin/env bash
# scripts/set-choice-fns.sh: bindings, atomic batches, terminated conflicts.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

scf_script="$SCRIPTS/set-choice-fns.sh"
check "set-choice-fns script" test -x "$scf_script"
check "set-choice-fns syntax" bash -n "$scf_script"

scf_dir="$TMP_DIR/fragments-set-choice"
fragment_dir "$scf_dir" "$FIXTURES/fragments/with-choice"

# rejects_unchanged <label> <fragment> <binding...>: the batch must fail and
# leave the fragment byte-identical (a binding batch is atomic).
scf_snapshot=0
rejects_unchanged() {
    local label="$1" fragment="$2" before
    shift 2
    scf_snapshot=$((scf_snapshot + 1))
    before="$TMP_DIR/set-choice-$scf_snapshot.before"
    cp "$fragment" "$before"
    expect_failure "$label" bash "$scf_script" "$fragment" "$@"
    assert_same "$label leaves the fragment unchanged" "$fragment" "$before"
}

# --- bindings -------------------------------------------------------------
check_output "set-choice-fns option" "matched=1" \
    bash "$scf_script" "$scf_dir/_root.json" '--output[`_choice_out`]'
assert_contains "set-choice-fns reports binding" "$CHECK_LOG" "binding=--output fn=_choice_out terminated=false"
assert_jq "set-choice-fns option binding" \
    '.items[] | select(.names | index("--output")) | .choice_fn == "_choice_out"' "$scf_dir/_root.json"
assert_jq "set-choice-fns option choices" \
    '.items[] | select(.names | index("--output")) | (.choices | length) == 0' "$scf_dir/_root.json"

# One call applies every binding of the batch and empties each static list.
scf_batch="$scf_dir/batch.json"
cp "$FIXTURES/fragments/with-choice/_root.json" "$scf_batch"
check_output "set-choice-fns batch" "bindings=2" \
    bash "$scf_script" "$scf_batch" '--output[`_choice_out`]' '--format[`_choice_format`]'
assert_jq "set-choice-fns batch first" \
    '.items[] | select(.names | index("--output")) | .choice_fn == "_choice_out"' "$scf_batch"
assert_jq "set-choice-fns batch second" \
    '.items[] | select(.names | index("--format")) | .choice_fn == "_choice_format"' "$scf_batch"
assert_jq "set-choice-fns batch second choices" \
    '.items[] | select(.names | index("--format")) | (.choices | length) == 0' "$scf_batch"

check "set-choice-fns arg" bash "$scf_script" "$scf_dir/remote/add.json" 'name[_choice_name]'
assert_jq "set-choice-fns arg binding" \
    '.items[] | select(.name == "name") | .choice_fn == "_choice_name"' "$scf_dir/remote/add.json"

# A name pair argc cannot accept is stored as two items; both are bound.
scf_split="$scf_dir/split.json"
jq -n '{schemaVersion:1,path:["demo","remote","add"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--eval-command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"},
  {kind:"option",names:["-ex"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_split"
check "set-choice-fns split option" bash "$scf_script" "$scf_split" \
    '--eval-command[`_choice_value`]' '-ex[`_choice_value`]'
assert_jq "set-choice-fns split first" \
    '.items[] | select(.names | index("--eval-command")) | .choice_fn == "_choice_value"' "$scf_split"
assert_jq "set-choice-fns split second" \
    '.items[] | select(.names | index("-ex")) | .choice_fn == "_choice_value"' "$scf_split"

# --- rejection paths ------------------------------------------------------
rejects_unchanged "set-choice-fns rejects flag" "$scf_dir/_root.json" '-v[`_choice_v`]'
rejects_unchanged "set-choice-fns rejects missing item" "$scf_dir/_root.json" '--no-such-option[`_choice_missing`]'
rejects_unchanged "set-choice-fns rejects duplicate binding" "$scf_dir/_root.json" \
    '--output[`_choice_a`]' '--output[`_choice_b`]'
rejects_unchanged "set-choice-fns rejects malformed binding" "$scf_dir/_root.json" '--output'
rejects_unchanged "set-choice-fns rejects overlapping bindings" "$scf_dir/_root.json" \
    '-o[`_choice_a`]' '--output[`_choice_b`]'
expect_failure "set-choice-fns rejects invalid function" \
    bash "$scf_script" "$scf_dir/_root.json" '--output[invalid fn]'
# One bad binding keeps every binding of the batch unapplied.
rejects_unchanged "set-choice-fns atomic batch" "$scf_dir/_root.json" \
    '--format[`_choice_format`]' '-v[`_choice_v`]'
rejects_unchanged "set-choice-fns rejects a leading marker" "$scf_dir/remote.json" '--foo[`?_choice_foo`]'

# --- terminated bindings --------------------------------------------------
scf_term="$scf_dir/terminated.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_term"
check "set-choice-fns terminated" bash "$scf_script" "$scf_term" '--command~[`_choice_command_args`]'
assert_jq "set-choice-fns terminated field" '.items[0].terminated == true' "$scf_term"

# A repeatable option cannot be terminated: binding `~` to one is a conflict.
scf_term_bad="$scf_dir/terminated-bad.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:true,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_term_bad"
rejects_unchanged "set-choice-fns rejects terminated conflict" "$scf_term_bad" \
    '--command~[`_choice_command_args`]'

# The fragment is validated before it is written.
scf_invalid="$scf_dir/invalid.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--output"],notations:["<FILE>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Out",value_type:"file"}
],subcommands:[],source:{kind:"none"},hash:"",notes:""}' >"$scf_invalid"
rejects_unchanged "set-choice-fns validates before write" "$scf_invalid" '--output[`_choice_out`]'

# The dynamic workflow binds a hand-written CHOICES function through this script.
build_dynamic_fixture
check "dynamic set-choice-fns" bash "$SCRIPTS/set-choice-fns.sh" \
    "$DYNAMIC_FRAGMENTS/_root.json" '--output[`_choice_out`]'

helper_finish
