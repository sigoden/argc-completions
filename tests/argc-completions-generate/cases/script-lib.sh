#!/usr/bin/env bash
# scripts/lib.sh: canonicalize_help_file output guard.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# canonicalize_help_file must reject a non-.txt output name (compile contract).
guard_in="$TMP_DIR/help-guard-in.txt"
printf 'demo --help\n' >"$guard_in"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out" ) >/dev/null 2>&1; then
    fail "canonicalize rejects non-txt output (unexpected success)"
else
    pass "canonicalize rejects non-txt output"
fi
check "canonicalize guard leaves non-txt output absent" test ! -e "$TMP_DIR/help-guard-out"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out.txt" ) >/dev/null 2>&1; then
    pass "canonicalize accepts txt output"
else
    fail "canonicalize accepts txt output"
fi
check "canonicalize guard writes txt output" test -s "$TMP_DIR/help-guard-out.txt"

helper_finish
