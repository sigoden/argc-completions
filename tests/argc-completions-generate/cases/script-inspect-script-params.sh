#!/usr/bin/env bash
# scripts/inspect-script-params.jq: exported parameter dump and path lookup.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_with_script
build_prefix_fixture
with_script="$WITH_SCRIPT"
argc --argc-export "$with_script" >"$TMP_DIR/demo-with-export.json"
argc --argc-export "$PREFIX_SCRIPT" >"$TMP_DIR/prefix-delimiter-export.json"
jq -r -f "$SCRIPTS/inspect-script-params.jq" "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params.txt"
check "script params command header" bash -c "head -n 1 '$TMP_DIR/script-params.txt' | grep -qx '# command demo-with'"
check "script params options" bash -c "grep -q '^# options$' '$TMP_DIR/script-params.txt'"
check "script params positionals" bash -c "grep -q '^# positionals$' '$TMP_DIR/script-params.txt'"

jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'remote add' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub.txt"
check "script params subcommand header" bash -c "head -n 1 '$TMP_DIR/script-params-sub.txt' | grep -qx '# command demo-with remote add'"
check "script params subcommand row" gawk -F '\t' '$1 == "name" && $2 == "NAME" && $3 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/script-params-sub.txt"
check "script params subcommand drops parent" bash -c "! grep -q '^output' '$TMP_DIR/script-params-sub.txt'"

jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'demo-with remote add' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub-rooted.txt"
check "script params optional root name" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-rooted.txt"
jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd '  remote   add  ' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub-spaced.txt"
check "script params whitespace path" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-spaced.txt"

jq '(.subcommands[] | select(.name == "remote") | .aliases) = ["r"]' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/demo-with-alias.json"
jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'r add' "$TMP_DIR/demo-with-alias.json" >"$TMP_DIR/script-params-alias.txt"
check "script params alias path" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-alias.txt"

if jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'remote bogus' "$TMP_DIR/demo-with-export.json" >/dev/null 2>"$TMP_DIR/script-params-error.txt"; then
    fail "script params unknown path"
else
    pass "script params unknown path"
fi
assert_contains "script params unknown path message" "$TMP_DIR/script-params-error.txt" "unknown command path"
assert_contains "script params unknown path children" "$TMP_DIR/script-params-error.txt" "available: add"

jq -r -f "$SCRIPTS/inspect-script-params.jq" "$TMP_DIR/prefix-delimiter-export.json" >"$TMP_DIR/prefix-delimiter-params.txt"
check "script params positional delimiter" gawk -F '\t' '$1 == "types" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-params.txt"


helper_finish
