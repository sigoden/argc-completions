#!/usr/bin/env bash
# scripts/verify-completion.sh: the root @describe gate.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
new_script="$NEW_SCRIPT"

# The assembled fixture carries the root description from its fragment.
verify_check "verify accepts a root description" "$new_script"
check_output "verify reports the root description" "PASS  root description" \
    bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --skip-compgen

# A missing or empty @describe is the silent loss this gate exists for.
sed '/^# @describe /d' "$new_script" >"$TMP_DIR/no-describe.sh"
verify_rejects "verify rejects a missing root description" \
    "root description: missing @describe" "$TMP_DIR/no-describe.sh"

sed 's/^# @describe .*/# @describe/' "$new_script" >"$TMP_DIR/empty-describe.sh"
verify_rejects "verify rejects an empty root description" \
    "root description: @describe is empty" "$TMP_DIR/empty-describe.sh"

gawk '/^# @describe / { print; print "# @describe Duplicate"; next } { print }' \
    "$new_script" >"$TMP_DIR/duplicate-describe.sh"
verify_rejects "verify rejects duplicate root descriptions" \
    "root description: more than one @describe" "$TMP_DIR/duplicate-describe.sh"

# A root whose help was unavailable (source.kind: none) can only warn; the
# fragment still has to assemble into the same SPEC, so remove the line too.
fragments_none="$TMP_DIR/fragments-none"
fragment_dir "$fragments_none" "$FIXTURES/fragments/no-choice"
fragment_jq "$fragments_none/_root.json" \
    '.description = "" | .source = {"kind": "none"} | .hash = ""'
check_output "verify warns when the root help is unavailable" \
    "WARN  root description: missing @describe (root help unavailable)" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-describe.sh" --cmd demo --skip-compgen \
    --cache-dir "$fragments_none" --no-strict

helper_finish
