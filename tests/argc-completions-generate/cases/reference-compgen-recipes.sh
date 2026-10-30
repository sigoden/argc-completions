#!/usr/bin/env bash
# references/compgen-recipes.md: recipe section map and composed samples.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

recipes_md="$SKILL_DIR/references/compgen-recipes.md"

assert_contains "recipes section map" "$recipes_md" "## Section map"
assert_contains "recipes command-valued option" "$recipes_md" "## Command-valued option"

helper_finish
