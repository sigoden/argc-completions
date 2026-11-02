#!/usr/bin/env bash
# references/troubleshooting.md: reachable from every workflow reference.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

troubleshoot_md="$SKILL_DIR/references/troubleshooting.md"

check "references link troubleshooting" test -z "$(grep -L troubleshooting.md "$SKILL_DIR/references/generate-structure.md" "$SKILL_DIR/references/add-choice-fns.md" "$SKILL_DIR/references/verify.md" "$SKILL_DIR/references/compgen.md" "$SKILL_DIR/references/compgen-helpers.md" "$SKILL_DIR/references/compgen-recipes.md")"

# The command-v rows point at the rule owner (compgen.md §1).
assert_contains "troubleshooting root probe row" "$troubleshoot_md" 'Redundant `command -v` probe on the root'
assert_contains "troubleshooting command-specific row" "$troubleshoot_md" "command-specific answers"
assert_contains "troubleshooting combined terminated suffix" "$troubleshoot_md" 'argc takes `~` as the whole arg suffix'
assert_contains "troubleshooting hash section" "$troubleshoot_md" "## Cache and hash validation"
assert_contains "troubleshooting hash mismatch row" "$troubleshoot_md" "reason=hash-mismatch"
assert_contains "troubleshooting unverified row" "$troubleshoot_md" "reason=help-unavailable"
assert_contains "troubleshooting stale fragment row" "$troubleshoot_md" "finalize-cache.sh"

helper_finish
