#!/usr/bin/env bash
# scripts/test-compgen.sh: candidate assertions on the dynamic script.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_dynamic_fixture

check "dynamic compgen output" bash -c "argc --argc-compgen generic '$TMP_DIR/dynamic.sh' demo --output '' | tr -d '\000' | cut -f1 | grep -qx 'out.txt'"
# ---------------------------------------------------------------------------
# test-compgen.sh: candidate assertions on the dynamic script
# ---------------------------------------------------------------------------
tc="$SCRIPTS/test-compgen.sh"
check "test-compgen exact" bash "$tc" -x out.txt "$TMP_DIR/dynamic.sh" demo --output ''
check "test-compgen regex and count" bash "$tc" -e '^out\.txt$' -c 1 "$TMP_DIR/dynamic.sh" demo --output ''
check_to "$TMP_DIR/test-compgen-list.txt" "test-compgen list" bash "$tc" -l "$TMP_DIR/dynamic.sh" demo --output ''
check "test-compgen list values" grep -Fxq -- out.txt "$TMP_DIR/test-compgen-list.txt"
expect_failure "test-compgen missing exact" bash "$tc" -x missing.txt "$TMP_DIR/dynamic.sh" demo --output ''
expect_failure "test-compgen absent hit" bash "$tc" -a '^out' "$TMP_DIR/dynamic.sh" demo --output ''
expect_failure "test-compgen wrong count" bash "$tc" -c 2 "$TMP_DIR/dynamic.sh" demo --output ''
tc_log="$(new_log)"
if run_quiet "$tc_log" bash "$tc" -x missing.txt "$TMP_DIR/dynamic.sh" demo --output ''; then
    fail "test-compgen failure shows candidates (unexpected success)"
else
    pass "test-compgen failure shows candidates"
    assert_contains "test-compgen diagnostic lists candidate" "$tc_log" "out.txt"
fi

# The helper drops __argc_* control lines but argc still receives them.
gawk '/^_choice_out\(\) \{/ { print; print "    echo \"__argc_prefix=pre\""; next } { print }' \
    "$TMP_DIR/dynamic.sh" >"$TMP_DIR/test-compgen-control.sh"
check "test-compgen filters control lines" bash "$tc" -a '^__argc_' -x out.txt "$TMP_DIR/test-compgen-control.sh" demo --output ''

# A slow choice function must not hang the suite.
gawk '/^_choice_out\(\) \{/ { print; print "    sleep 30"; next } { print }' \
    "$TMP_DIR/dynamic.sh" >"$TMP_DIR/test-compgen-slow.sh"
tc_timeout_log="$(new_log)"
if run_quiet "$tc_timeout_log" bash "$tc" -t 1 "$TMP_DIR/test-compgen-slow.sh" demo --output ''; then
    fail "test-compgen timeout (unexpected success)"
else
    pass "test-compgen timeout"
    assert_contains "test-compgen timeout message" "$tc_timeout_log" "timed out"
fi

check "test-compgen usage error" bash -c "! bash '$tc' >/dev/null 2>&1"
check "test-compgen requires the final word" bash -c "! bash '$tc' '$TMP_DIR/dynamic.sh' demo >/dev/null 2>&1"


helper_finish
