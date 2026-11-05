#!/usr/bin/env bash
# scripts/verify-completion.sh: terminated/STATIC provenance mismatches.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_terminated_fixture
build_static_fixture
terminated_script="$TERMINATED_SCRIPT"
choices_desc_script="$STATIC_SCRIPT"

# A fragment that drops `terminated` no longer matches the rendered marker.
mismatch_fragments="$TMP_DIR/fragments-terminated-mismatch"
fragment_dir "$mismatch_fragments" "$TERMINATED_FRAGMENTS"
fragment_jq "$mismatch_fragments/_root.json" '(.items[] | select(.names == ["--command"]) | .terminated) = false'
verify_rejects "verify terminated mismatch" "terminated mismatch" "$terminated_script" \
    --cache-dir "$mismatch_fragments"

sed 's/--command~ /--command /; s/args~ /args /' "$terminated_script" >"$TMP_DIR/terminated-no-marker.sh"
verify_rejects "verify terminated reverse mismatch" "terminated mismatch" \
    "$TMP_DIR/terminated-no-marker.sh" --cache-dir "$TERMINATED_FRAGMENTS"

# A hand-edited STATIC block fails the exact comparison.
gawk '/^\tnone\tDo not sort$/ { print "\tnone\tTampered"; next } { print }' \
    "$choices_desc_script" >"$TMP_DIR/static-edit.sh"
verify_rejects "verify detects hand-edited STATIC" "STATIC differs from fragments" \
    "$TMP_DIR/static-edit.sh" --cache-dir "$STATIC_FRAGMENTS"

# So does a static function declared inside CHOICES: the prefix is reserved.
block_append "$STATIC_BEFORE" "$TMP_DIR/static-reserved.sh" CHOICES '_static_probe() { :; }'
verify_fails "verify rejects reserved static prefix" "$TMP_DIR/static-reserved.sh" \
    --cache-dir "$STATIC_FRAGMENTS"

helper_finish
