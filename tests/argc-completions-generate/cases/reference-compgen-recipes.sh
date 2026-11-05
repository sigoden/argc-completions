#!/usr/bin/env bash
# references/compgen-recipes.md: recipe section map and composed samples.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/compgen-recipes.md"

doc_contains "$doc" \
    "## Command plus terminated args" \
    "## Command in a terminated option" \
    "## Command in a terminated positional" \
    "jq -b -r"

# The samples call the root command and the prerequisites directly.
doc_lacks "$doc" \
    'command -v aichat' \
    'command -v jq'

helper_finish
