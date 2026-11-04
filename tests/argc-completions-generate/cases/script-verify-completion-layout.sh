#!/usr/bin/env bash
# scripts/verify-completion.sh: empty blocks, HINTS markers, strictness.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_with_script
new_script="$NEW_SCRIPT"
with_script="$WITH_SCRIPT"

expect_failure "verify require-no-choice on bound script" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --skip-compgen --require-no-choice-fns --cache-dir "$FIXTURES/fragments/with-choice"
assert_not_contains "verify no value types library" "$SCRIPTS/verify-completion.sh" "_value_types"

empty_blocks="$TMP_DIR/empty-blocks.sh"
gawk '/^command eval / && !done {
        print "# >>> STATIC"
        print "# <<< STATIC"
        print ""
        print "# >>> CHOICES"
        print "# <<< CHOICES"
        print ""
        done = 1
    }
    { print }' "$new_script" >"$empty_blocks"

empty_blocks_log="$(new_log)"
if run_quiet "$empty_blocks_log" bash "$SCRIPTS/verify-completion.sh" "$empty_blocks" --cmd demo --skip-compgen; then
    fail "verify rejects empty optional blocks (unexpected success)"
else
    pass "verify rejects empty optional blocks"
fi
assert_contains "verify names empty STATIC block" "$empty_blocks_log" "empty STATIC block"
assert_contains "verify names empty CHOICES block" "$empty_blocks_log" "empty CHOICES block"

# HINTS markers: canonical paths pass; a bare marker, an unknown path, and a
# duplicate are failures.
hints_ok_log="$(new_log)"
if run_quiet "$hints_ok_log" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo \
    --skip-compgen --cache-dir "$FIXTURES/fragments/with-choice"; then
    pass "verify accepts HINTS markers"
else
    fail "verify accepts HINTS markers"
    show_captured "$hints_ok_log"
fi
assert_contains "verify reports HINTS markers" "$hints_ok_log" "PASS  HINTS markers"

gawk '/^# >>> HINTS$/ { print; print "# %%"; print "# - unattached hint"; next } { print }' \
    "$new_script" >"$TMP_DIR/hints-bare-marker.sh"
gawk '/^# >>> HINTS$/ { print; print "# %%demo missing"; print "# - unknown path hint"; next } { print }' \
    "$new_script" >"$TMP_DIR/hints-unknown-path.sh"
gawk '/^# >>> HINTS$/ {
        print
        print "# %%demo"
        print "# - first root hint"
        print "# %%demo"
        print "# - second root hint"
        next
    }
    { print }' "$new_script" >"$TMP_DIR/hints-duplicate.sh"
for hints_case in bare-marker:"without a command path" unknown-path:"is not a command block: demo missing" duplicate:"duplicated: demo"; do
    hints_file="$TMP_DIR/hints-${hints_case%%:*}.sh"
    hints_needle="${hints_case#*:}"
    hints_log="$(new_log)"
    if run_quiet "$hints_log" bash "$SCRIPTS/verify-completion.sh" "$hints_file" --cmd demo --skip-compgen; then
        fail "verify rejects HINTS marker ${hints_case%%:*} (unexpected success)"
    else
        pass "verify rejects HINTS marker ${hints_case%%:*}"
    fi
    assert_contains "verify names HINTS marker ${hints_case%%:*}" "$hints_log" "$hints_needle"
done


helper_finish
