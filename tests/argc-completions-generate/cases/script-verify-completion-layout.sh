#!/usr/bin/env bash
# scripts/verify-completion.sh: empty blocks, HINTS markers, strictness.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_with_script
new_script="$NEW_SCRIPT"
with_script="$WITH_SCRIPT"

verify_fails "verify require-no-choice on bound script" "$with_script" \
    --require-no-choice-fns --cache-dir "$FIXTURES/fragments/with-choice"
assert_not_contains "verify no value types library" "$SCRIPTS/verify-completion.sh" "_value_types"

# An empty optional block is emitted by nothing; verify rejects it instead of
# treating the markers as a valid block.
empty_blocks="$TMP_DIR/empty-blocks.sh"
insert_before "$new_script" "$empty_blocks" "$COMMAND_EVAL_LINE" \
    $'# >>> STATIC\n# <<< STATIC\n\n# >>> CHOICES\n# <<< CHOICES\n'
check_rejects "verify rejects empty optional blocks" "empty STATIC block" \
    bash "$SCRIPTS/verify-completion.sh" "$empty_blocks" --cmd demo --skip-compgen
assert_contains "verify names empty CHOICES block" "$CHECK_LOG" "empty CHOICES block"

# --- HINTS markers --------------------------------------------------------
# A canonical path passes; a bare marker, an unknown path, and a duplicate fail.
check_output "verify accepts HINTS markers" "PASS  HINTS markers" \
    bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo \
    --skip-compgen --cache-dir "$FIXTURES/fragments/with-choice"

insert_after "$new_script" "$TMP_DIR/hints-bare-marker.sh" '# >>> HINTS' $'# %%\n# - unattached hint'
insert_after "$new_script" "$TMP_DIR/hints-unknown-path.sh" '# >>> HINTS' $'# %%demo missing\n# - unknown path hint'
insert_after "$new_script" "$TMP_DIR/hints-duplicate.sh" '# >>> HINTS' \
    $'# %%demo\n# - first root hint\n# %%demo\n# - second root hint'

while IFS='|' read -r hints_case needle; do
    check_rejects "verify rejects HINTS marker $hints_case" "$needle" \
        bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/hints-$hints_case.sh" --cmd demo --skip-compgen
done <<'CASES'
bare-marker|without a command path
unknown-path|is not a command block: demo missing
duplicate|duplicated: demo
CASES

helper_finish
