#!/usr/bin/env bash
# references/troubleshooting.md: reachable from every workflow reference.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

check "references link troubleshooting" test -z "$(grep -L troubleshooting.md "$SKILL_DIR/references/generate-structure.md" "$SKILL_DIR/references/add-choice-fns.md" "$SKILL_DIR/references/verify.md" "$SKILL_DIR/references/compgen.md" "$SKILL_DIR/references/compgen-helpers.md" "$SKILL_DIR/references/compgen-recipes.md")"

helper_finish
