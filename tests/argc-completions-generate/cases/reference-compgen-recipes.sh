#!/usr/bin/env bash
# references/compgen-recipes.md: recipe section map and composed samples.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

recipes_md="$SKILL_DIR/references/compgen-recipes.md"

assert_contains "recipes command plus terminated args" "$recipes_md" "## Command plus terminated args"
assert_contains "recipes command in a terminated option" "$recipes_md" "## Command in a terminated option"
assert_contains "recipes command in a terminated positional" "$recipes_md" "## Command in a terminated positional"
assert_contains "recipes jq binary" "$recipes_md" "jq -b -r"
# The samples call the root command and the prerequisites directly.
assert_not_contains "recipes no root probe" "$recipes_md" 'command -v aichat'
assert_not_contains "recipes no prerequisite probe" "$recipes_md" 'command -v jq'

helper_finish
