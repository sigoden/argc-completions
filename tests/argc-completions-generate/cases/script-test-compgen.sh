#!/usr/bin/env bash
# scripts/test-compgen.sh: candidate assertions on the dynamic script.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_dynamic_fixture
tc="$SCRIPTS/test-compgen.sh"

# The script itself must offer the candidates argc produces; test-compgen.sh is
# the assertion helper that compares them.
quiet compgen_candidates "$DYNAMIC_SCRIPT" demo --output '' >"$TMP_DIR/dynamic-candidates.txt"
assert_tsv "dynamic compgen output" "$TMP_DIR/dynamic-candidates.txt" 1=out.txt

check "test-compgen exact" bash "$tc" -x out.txt "$DYNAMIC_SCRIPT" demo --output ''
check "test-compgen regex and count" bash "$tc" -e '^out\.txt$' -c 1 "$DYNAMIC_SCRIPT" demo --output ''
quiet bash "$tc" -l "$DYNAMIC_SCRIPT" demo --output '' >"$TMP_DIR/test-compgen-list.txt"
assert_has_line "test-compgen list values" "$TMP_DIR/test-compgen-list.txt" out.txt
expect_failure "test-compgen missing exact" bash "$tc" -x missing.txt "$DYNAMIC_SCRIPT" demo --output ''
expect_failure "test-compgen absent hit" bash "$tc" -a '^out' "$DYNAMIC_SCRIPT" demo --output ''
expect_failure "test-compgen wrong count" bash "$tc" -c 2 "$DYNAMIC_SCRIPT" demo --output ''

# A failing assertion prints the candidates it saw.
check_rejects "test-compgen failure shows candidates" "out.txt" \
    bash "$tc" -x missing.txt "$DYNAMIC_SCRIPT" demo --output ''

# The helper drops __argc_* control lines but argc still receives them.
insert_after "$DYNAMIC_SCRIPT" "$TMP_DIR/test-compgen-control.sh" '_choice_out() {' \
    '    echo "__argc_prefix=pre"'
check "test-compgen filters control lines" bash "$tc" -a '^__argc_' -x out.txt \
    "$TMP_DIR/test-compgen-control.sh" demo --output ''

# A slow choice function must not hang the suite.
insert_after "$DYNAMIC_SCRIPT" "$TMP_DIR/test-compgen-slow.sh" '_choice_out() {' '    sleep 30'
check_rejects "test-compgen timeout" "timed out" \
    bash "$tc" -t 1 "$TMP_DIR/test-compgen-slow.sh" demo --output ''

expect_failure "test-compgen usage error" bash "$tc"
expect_failure "test-compgen requires the final word" bash "$tc" "$DYNAMIC_SCRIPT" demo

helper_finish
