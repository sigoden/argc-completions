#!/usr/bin/env bash
# scripts/compare-help.sh: canonical comparison and root-help cache probe.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# compare-help.sh
# ---------------------------------------------------------------------------
printf 'a\r\nb  \n\n' >"$TMP_DIR/help-old.txt"
printf 'a\nb\n' >"$TMP_DIR/help-new.txt"
check "compare-help same after canonicalization" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-new.txt"
printf 'a\nc\n' >"$TMP_DIR/help-diff.txt"
expect_failure "compare-help different" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-diff.txt"
expect_failure "compare-help missing file" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/no-such-help.txt" "$TMP_DIR/help-new.txt"
# Root-help cache probe semantics.
cache_test="$TMP_DIR/cache-probe"
mkdir -p "$cache_test/sub"
printf 'demo --help\n  --foo  Foo\n' >"$cache_test/_root.txt"
printf '{"schemaVersion":1,"path":["demo"]}\n' >"$cache_test/_root.json"
printf '{"schemaVersion":1,"path":["demo","sub"]}\n' >"$cache_test/sub.json"
printf 'demo --help\r\n  --foo  Foo   \n\n' >"$TMP_DIR/root-same.txt"
printf 'demo --help\n  --foo  Bar\n' >"$TMP_DIR/root-diff.txt"
check "root cache hit" bash "$SCRIPTS/compare-help.sh" "$cache_test/_root.txt" "$TMP_DIR/root-same.txt"
check "root cache child retained on hit" test -f "$cache_test/sub.json"
expect_failure "root cache miss" bash "$SCRIPTS/compare-help.sh" "$cache_test/_root.txt" "$TMP_DIR/root-diff.txt"
find "$cache_test" -mindepth 1 -maxdepth 1 ! -name '_root.json' ! -name '_root.txt' -exec rm -rf {} +
check "root cache keeps new root files" test -f "$cache_test/_root.json"
check "root cache clears children on miss" test ! -e "$cache_test/sub.json"

helper_finish
