#!/usr/bin/env bash
# references/troubleshooting.md: reachable from every workflow reference.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/troubleshooting.md"

# Every workflow reference defers to this document for symptoms.
for workflow in generate-structure add-choice-fns verify compgen compgen-recipes; do
    assert_contains "references link troubleshooting from $workflow.md" \
        "$SKILL_DIR/references/$workflow.md" "troubleshooting.md"
done

# The command-v rows point at the rule owner (compgen.md §1).
doc_contains "$doc" \
    'Redundant `command -v` probe on the root' \
    "command-specific answers" \
    'argc takes `~` as the whole arg suffix'

doc_contains "$doc" \
    "## Cache and hash validation" \
    "reason=hash-mismatch" \
    "reason=help-unavailable" \
    "finalize-cache.sh"

doc_contains "$doc" \
    "HINTS marker path is not a command block" \
    "HINTS marker without a command path" \
    "A common HINTS line makes every node in the root"

helper_finish
