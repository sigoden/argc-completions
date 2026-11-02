#!/usr/bin/env bash
# references/setup.md: environment policies and reachability from the workflows.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

setup_md="$SKILL_DIR/references/setup.md"

assert_contains "setup yq policy" "$setup_md" "allowed only inside functions"
assert_contains "setup git status ban" "$setup_md" 'never `git status`'

# Troubleshooting and setup are optional reads reached from every workflow.
check "references link setup" test -z "$(grep -L setup.md "$SKILL_DIR/references/add-choice-fns.md" "$SKILL_DIR/references/compgen.md" "$SKILL_DIR/references/compgen-recipes.md")"

helper_finish
