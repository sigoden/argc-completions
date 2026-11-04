#!/usr/bin/env bash
# scripts/inspect-fragment-items.jq: compact fragment item dump.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

assert_not_contains "fragment items no value_type" "$SCRIPTS/inspect-fragment-items.jq" "value_type"

build_prefix_fixture
build_terminated_fixture

# Compact inspection scripts (avoid reading whole fragments/exports).
jq -b -r -f "$(native_path "$SCRIPTS/inspect-fragment-items.jq")" "$(native_path "$FIXTURES/fragments/with-choice/_root.json")" >"$TMP_DIR/fragment-items.txt"
check "fragment items header" bash -c "head -n 1 '$TMP_DIR/fragment-items.txt' | grep -q '^items=3 subcommands=2 choice_fns=0$'"
check "fragment items row" bash -c "grep -q 'text|json' '$TMP_DIR/fragment-items.txt'"
jq -b -r -f "$(native_path "$SCRIPTS/inspect-fragment-items.jq")" "$(native_path "$TMP_DIR/fragments-prefix-delimiter/_root.json")" >"$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items prefixed" gawk -F '\t' '$1 == "option" && $2 == "-ao" && $6 == "true" && $7 == "" { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items delimiter" gawk -F '\t' '$1 == "option" && $2 == "--type" && $6 == "false" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items delimiter arg" gawk -F '\t' '$1 == "arg" && $2 == "types" && $6 == "false" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items combined" gawk -F '\t' '$1 == "option" && $2 == "-Z" && $6 == "true" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items legacy defaults" gawk -F '\t' '$1 == "flag" && $2 == "-v,--verbose" && $6 == "false" && $7 == "" { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"

jq -b -r -f "$(native_path "$SCRIPTS/inspect-fragment-items.jq")" "$(native_path "$TMP_DIR/fragments-terminated/_root.json")" >"$TMP_DIR/terminated-items.txt"
check "fragment items terminated option" gawk -F '\t' '$1 == "option" && $2 == "--command" && $8 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/terminated-items.txt"
check "fragment items terminated arg" gawk -F '\t' '$1 == "arg" && $2 == "args" && $8 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/terminated-items.txt"

helper_finish
