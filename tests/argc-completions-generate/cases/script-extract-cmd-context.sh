#!/usr/bin/env bash
# scripts/extract-cmd-context.sh: context block extraction and ordering.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# extract-cmd-context.sh
# ---------------------------------------------------------------------------
cat >"$TMP_DIR/context-expected.txt" <<'EXPECTED'
# >>> META
# @meta inherit-flag-options
# <<< META

# >>> HINTS
# - prompt for demo remote
# <<< HINTS

# >>> BINDINGS
# @option --foo[`_choice_foo`] <VALUE>  Foo description with `backticks`
# @arg v1[`_choice_val`]
# <<< BINDINGS
EXPECTED
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote --completion "$FIXTURES/contexts/context.sh" >"$TMP_DIR/context-actual.txt"
check "extract new-layout context order" diff -u "$TMP_DIR/context-expected.txt" "$TMP_DIR/context-actual.txt"
: >"$TMP_DIR/empty-context.txt"
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo-missing-script >"$TMP_DIR/empty-context.txt"
check "extract missing script empty" test ! -s "$TMP_DIR/empty-context.txt"
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$FIXTURES/contexts/context.sh" >"$TMP_DIR/root-context.txt"
assert_contains "extract root prompt" "$TMP_DIR/root-context.txt" '# - prompt for demo'
assert_contains "extract root choice" "$TMP_DIR/root-context.txt" '# @option --root-choice[`_choice_root`] <V>'
choice_line="$(grep -n '^# >>> BINDINGS$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
prompt_line="$(grep -n '^# >>> HINTS$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
meta_line="$(grep -n '^# >>> META$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
check "extract section order" test "$meta_line" -lt "$prompt_line" -a "$prompt_line" -lt "$choice_line"

helper_finish
