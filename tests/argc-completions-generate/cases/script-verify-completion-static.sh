#!/usr/bin/env bash
# scripts/verify-completion.sh: terminated/STATIC provenance mismatches.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_terminated_fixture
build_static_fixture
choices_desc_script="$STATIC_SCRIPT"
terminated_script="$TERMINATED_SCRIPT"

mkdir -p "$TMP_DIR/fragments-terminated-mismatch"
cp -R "$TMP_DIR/fragments-terminated/." "$TMP_DIR/fragments-terminated-mismatch/"
jq '(.items[] | select(.names == ["--command"]) | .terminated) = false' "$(native_path "$TMP_DIR/fragments-terminated-mismatch/_root.json")" >"$TMP_DIR/terminated-mismatch.tmp" && mv "$TMP_DIR/terminated-mismatch.tmp" "$TMP_DIR/fragments-terminated-mismatch/_root.json"
mismatch_log="$(new_log)"
if run_quiet "$mismatch_log" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-mismatch" --skip-compgen; then
    fail "verify terminated mismatch (unexpected success)"
else
    pass "verify terminated mismatch"
fi
assert_contains "verify terminated mismatch message" "$mismatch_log" "terminated mismatch"

sed 's/--command~ /--command /; s/args~ /args /' "$terminated_script" >"$TMP_DIR/terminated-no-marker.sh"
reverse_log="$(new_log)"
if run_quiet "$reverse_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/terminated-no-marker.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen; then
    fail "verify terminated reverse mismatch (unexpected success)"
else
    pass "verify terminated reverse mismatch"
fi
assert_contains "verify terminated reverse message" "$reverse_log" "terminated mismatch"

# A hand-edited STATIC block fails the exact comparison.
cp "$choices_desc_script" "$TMP_DIR/static-edit.sh"
gawk '/^\tnone\tDo not sort$/ { print "\tnone\tTampered"; next } { print }' \
    "$TMP_DIR/static-edit.sh" >"$TMP_DIR/static-edit.tmp"
mv "$TMP_DIR/static-edit.tmp" "$TMP_DIR/static-edit.sh"
static_edit_log="$(new_log)"
if run_quiet "$static_edit_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/static-edit.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen; then
    fail "verify detects hand-edited STATIC (unexpected success)"
else
    pass "verify detects hand-edited STATIC"
fi
assert_contains "verify names STATIC mismatch" "$static_edit_log" "STATIC differs from fragments"

gawk '/^# <<< CHOICES$/ && !done { print "_static_probe() { :; }"; done = 1 } { print }' \
    "$TMP_DIR/static-before.sh" >"$TMP_DIR/static-reserved.sh"
expect_failure "verify rejects reserved static prefix" bash "$SCRIPTS/verify-completion.sh" \
    "$TMP_DIR/static-reserved.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen


helper_finish
