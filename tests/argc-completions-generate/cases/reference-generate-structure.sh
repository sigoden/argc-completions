#!/usr/bin/env bash
# references/generate-structure.md: workflow handoff, status updates, STATIC dumps.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

structure_md="$SKILL_DIR/references/generate-structure.md"

assert_contains "structure batch compile reads" "$structure_md" "fragment-schema.md in one batch"
assert_contains "structure no sleep poll" "$structure_md" "Do not poll a compile child"
assert_contains "generate-structure subtree usage" "$structure_md" "reset-cache.sh <root> <sub...>"
assert_contains "structure status update script" "$structure_md" 'update-subcommand-status.sh "$parent" <name> <status>'
assert_contains "structure handoff explicit" "$structure_md" "handoff, not an automatic continuation"
assert_contains "generate-structure handoff params" "$structure_md" "inspect-script-params.jq"
assert_contains "structure dump-static" "$structure_md" "--dump-static"
assert_contains "structure static function naming" "$structure_md" "_static_<fragment path without the root>"
assert_contains "structure no completions inspect" "$structure_md" 'Do not inspect `<REPO_ROOT>/completions/`'

helper_finish
