#!/usr/bin/env bash
# scripts/update-subcommand-status.sh: single/batch/concurrent updates.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# update-subcommand-status.sh
# ---------------------------------------------------------------------------
status_dir="$TMP_DIR/fragments-status"
mkdir -p "$status_dir"
cp -R "$FIXTURES/fragments/no-choice/." "$status_dir/"
jq '.subcommands += [range(0; 24) as $i | {"name": ("c" + ($i | tostring)), "aliases": [], "description": "", "status": "todo"}]' \
    "$status_dir/_root.json" >"$status_dir/root.tmp" && mv "$status_dir/root.tmp" "$status_dir/_root.json"
status_parent="$status_dir/_root.json"

status_out="$TMP_DIR/status-single.txt"
check_to "$status_out" "status update single runs" \
    bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" remote todo
assert_contains "status update reports parent" "$status_out" "parent=$status_parent"
assert_contains "status update reports pair" "$status_out" "name=remote status=todo"
check "status update single applied" \
    test "$(jq -r '.subcommands[] | select(.name == "remote") | .status' "$status_parent")" = todo

check_to "$TMP_DIR/status-batch.txt" "status update batch runs" \
    bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" c1 succeeded c2 failed remote succeeded
check "status update batch succeeded" \
    jq -e '[.subcommands[] | select(.name == "c1" and .status == "succeeded")] | length == 1' "$status_parent"
check "status update batch failed" \
    jq -e '[.subcommands[] | select(.name == "c2" and .status == "failed")] | length == 1' "$status_parent"
check "status update batch keeps order and fields" \
    jq -e '.subcommands | length == 26 and .[0].name == "remote" and .[0].aliases == ["r"]' "$status_parent"

cp "$status_parent" "$TMP_DIR/status-parent-before.json"
if bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" missing succeeded 2>"$TMP_DIR/status-missing.txt"; then
    fail "status update rejects undeclared name (unexpected success)"
else
    pass "status update rejects undeclared name"
fi
assert_contains "status update undeclared hint" "$TMP_DIR/status-missing.txt" "subcommand not declared: missing"
check "status update undeclared writes nothing" cmp -s "$TMP_DIR/status-parent-before.json" "$status_parent"

if bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" r succeeded 2>"$TMP_DIR/status-alias.txt"; then
    fail "status update rejects alias (unexpected success)"
else
    pass "status update rejects alias"
fi
assert_contains "status update alias hint" "$TMP_DIR/status-alias.txt" "canonical name: remote"
check "status update alias writes nothing" cmp -s "$TMP_DIR/status-parent-before.json" "$status_parent"
expect_failure "status update rejects unknown status" \
    bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" c3 running
expect_failure "status update rejects odd arguments" \
    bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" c3
expect_failure "status update rejects missing parent" \
    bash "$SCRIPTS/update-subcommand-status.sh" "$TMP_DIR/no-such-parent.json" c3 todo

# Concurrent children finish at once; every status must survive the shared
# read-modify-write.
status_pids=()
status_ok=1
for ((i = 0; i < 24; i++)); do
    bash "$SCRIPTS/update-subcommand-status.sh" "$status_parent" "c$i" succeeded >/dev/null &
    status_pids+=("$!")
done
for pid in "${status_pids[@]}"; do
    wait "$pid" || status_ok=0
done
check "status update concurrent runs" test "$status_ok" -eq 1
check "status update concurrent applied" \
    test "$(jq -r '[.subcommands[] | select(.status == "succeeded")] | length' "$status_parent")" = 25
check "status update leaves no scratch" \
    test -z "$(find "$status_dir" -type f ! -name '*.json' ! -name '*.txt')"
check "status update keeps parent valid" jq -e '.subcommands | length == 26' "$status_parent"

helper_finish
