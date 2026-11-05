#!/usr/bin/env bash
# references/setup.md: environment policies and reachability from the workflows.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/setup.md"

doc_contains "$doc" \
    "allowed only inside functions" \
    'never `git status`'

# Troubleshooting and setup are optional reads reached from every workflow.
for workflow in add-choice-fns compgen compgen-recipes; do
    assert_contains "references link setup from $workflow.md" \
        "$SKILL_DIR/references/$workflow.md" "setup.md"
done

helper_finish
