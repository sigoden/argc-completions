#!/usr/bin/env bash
# scripts/compare-help.sh: canonical comparison of two temporary help files.

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
helper_finish
