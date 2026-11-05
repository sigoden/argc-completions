#!/usr/bin/env bash
# scripts/inspect-fragment-items.jq: compact fragment item dump.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

assert_not_contains "fragment items no value_type" "$SCRIPTS/inspect-fragment-items.jq" "value_type"

build_prefix_fixture
build_terminated_fixture

# inspect_items <fragment> <out>: the compact table for one fragment.
inspect_items() {
    quiet jq_skill_file "$1" -b -r -f "$NATIVE_SCRIPTS/inspect-fragment-items.jq" >"$2"
}

# Compact inspection scripts (avoid reading whole fragments/exports).
inspect_items "$FIXTURES/fragments/with-choice/_root.json" "$TMP_DIR/fragment-items.txt"
assert_line "fragment items header" "$TMP_DIR/fragment-items.txt" 1 'items=3 subcommands=2 choice_fns=0'
assert_contains "fragment items row" "$TMP_DIR/fragment-items.txt" 'text|json'

inspect_items "$PREFIX_FRAGMENTS/_root.json" "$TMP_DIR/prefix-delimiter-items.txt"
assert_tsv "fragment items prefixed" "$TMP_DIR/prefix-delimiter-items.txt" 1=option 2=-ao 6=true 7=
assert_tsv "fragment items delimiter" "$TMP_DIR/prefix-delimiter-items.txt" 1=option 2=--type 6=false 7=,
assert_tsv "fragment items delimiter arg" "$TMP_DIR/prefix-delimiter-items.txt" 1=arg 2=types 6=false 7=,
assert_tsv "fragment items combined" "$TMP_DIR/prefix-delimiter-items.txt" 1=option 2=-Z 6=true 7=,
assert_tsv "fragment items legacy defaults" "$TMP_DIR/prefix-delimiter-items.txt" \
    1=flag 2='-v,--verbose' 6=false 7=

inspect_items "$TERMINATED_FRAGMENTS/_root.json" "$TMP_DIR/terminated-items.txt"
assert_tsv "fragment items terminated option" "$TMP_DIR/terminated-items.txt" 1=option 2=--command 8=true
assert_tsv "fragment items terminated arg" "$TMP_DIR/terminated-items.txt" 1=arg 2=args 8=true

helper_finish
