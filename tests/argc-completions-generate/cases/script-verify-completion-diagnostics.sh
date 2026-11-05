#!/usr/bin/env bash
# scripts/verify-completion.sh: failure diagnostics for edited scripts.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_choices_base
build_with_script
build_regen_fixture
new_script="$NEW_SCRIPT"
with_script="$WITH_SCRIPT"

# A tag that names a function nothing defines is the first failure a hand edit
# introduces.
cp "$new_script" "$TMP_DIR/undefined.sh"
sed 's/^# @flag -v --verbose  /# @flag -v --verbose[`_choice_missing`]  /' \
    "$TMP_DIR/undefined.sh" >"$TMP_DIR/undefined.tmp" && mv "$TMP_DIR/undefined.tmp" "$TMP_DIR/undefined.sh"
verify_fails "verify undefined choice fn" "$TMP_DIR/undefined.sh"

block_append "$CHOICES_BASE" "$TMP_DIR/choice-no-choice.sh" CHOICES '_choice_probe() { :; }'
verify_fails "verify require-no-choice rejects choice definitions" \
    "$TMP_DIR/choice-no-choice.sh" --require-no-choice-fns

# A manual SPEC edit is a drift the fragment comparison must catch.
gawk '/^# <<< SPEC$/ { print "# @flag --manual" } { print }' \
    "$REGEN_SCRIPT" >"$TMP_DIR/manual-edit.sh"
verify_fails "verify detects manual SPEC edit" "$TMP_DIR/manual-edit.sh" --cache-dir "$REGEN_FRAGMENTS"

# A tag that loses its binding is the failure the compgen smoke cannot see.
sed 's/--foo\[?`_choice_foo`\]/--foo -foo[?`_choice_foo`]/' "$with_script" >"$TMP_DIR/dropped-binding.sh"
verify_rejects "verify detects dropped choice binding" "dropped choice_fn" \
    "$TMP_DIR/dropped-binding.sh" --cache-dir "$FIXTURES/fragments/with-choice"

printf '#!/usr/bin/env bash\n# only a shebang\n' >"$TMP_DIR/no-help.sh"
expect_failure "verify empty help output" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-help.sh" --skip-compgen

# Strict mode turns a warning (no shebang) into a failure; --no-strict does not.
sed '1d' "$new_script" >"$TMP_DIR/no-shebang.sh"
verify_fails "verify strict treats warnings as failures" "$TMP_DIR/no-shebang.sh"
verify_check "verify --no-strict allows warnings" "$TMP_DIR/no-shebang.sh" --no-strict

helper_finish
