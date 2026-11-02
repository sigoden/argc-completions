#!/usr/bin/env bash
# references/generate-structure.md: cache-first checks, queue, finalize, handoff.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

structure_md="$SKILL_DIR/references/generate-structure.md"

assert_contains "structure batch compile reads" "$structure_md" "fragment-schema.md in one batch"
assert_contains "structure preflight usage" "$structure_md" 'preflight.sh [<root>]'
assert_contains "structure assemble usage" "$structure_md" 'assemble.sh <root> [-c <dir>]'
assert_contains "structure no sleep poll" "$structure_md" "Do not poll a compile child"
assert_contains "structure delete-cache full root" "$structure_md" "delete-cache.sh <root>"
assert_contains "structure delete confirmation" "$structure_md" "Ask for confirmation"
assert_contains "structure cache-first rule" "$structure_md" "### Cache-first rule"
assert_contains "structure first generation flag" "$structure_md" "root_fragment_exists=0"
assert_contains "structure first generation skips section" "$structure_md" "Skip this entire section for a first generation"
assert_contains "structure first generation no check" "$structure_md" 'without calling `<SKILL_ROOT>/scripts/check-fragment.sh`'
assert_contains "structure first generation direct dispatch" "$structure_md" "dispatch every enqueued child directly"
assert_contains "structure check-fragment" "$structure_md" "check-fragment.sh"
assert_contains "structure status unverified" "$structure_md" "status=unverified"
assert_contains "structure finalize script" "$structure_md" "finalize-cache.sh"
assert_contains "structure finalize counts" "$structure_md" "synced=<n> removed=<n>"
assert_contains "structure prompt completion script" "$structure_md" "Completion script:"
assert_contains "structure prompt parent command" "$structure_md" "Parent help command:"
assert_contains "structure context diff section" "$structure_md" "# >>> DIFF"
assert_contains "structure context only three fields" "$structure_md" 'only notation, `choice_fn`, and terminated changes'
assert_contains "structure context no-meta hash" "$structure_md" "Pass \`--no-meta\` to emit only \`HINTS\` and \`DIFF\`"
assert_contains "structure failed fragment hash" "$structure_md" '"hash": ""'
assert_contains "structure status derived by finalize" "$structure_md" 'only `<SKILL_ROOT>/scripts/finalize-cache.sh` writes it'
assert_contains "structure manual spec hash mismatch" "$structure_md" 'manual `SPEC` edit to notation'
assert_not_contains "structure no status update script" "$structure_md" "update-subcommand-status.sh"
assert_contains "structure handoff explicit" "$structure_md" "handoff, not an automatic continuation"
assert_contains "generate-structure handoff params" "$structure_md" "inspect-script-params.jq"
assert_contains "structure static function naming" "$structure_md" "_static_<fragment path without the root>"
assert_contains "structure no completions inspect" "$structure_md" 'Do not inspect `<REPO_ROOT>/completions/`'
assert_contains "structure shared help missing is success" "$structure_md" "shared-help-missing"
assert_not_contains "structure no reset-cache" "$structure_md" "reset-cache.sh"
assert_not_contains "structure no subtree reset" "$structure_md" "subtree reset"
assert_not_contains "structure no root txt" "$structure_md" "_root.txt"
assert_not_contains "structure no hash framing" "$structure_md" "The hash input is"
assert_not_contains "structure no hash body" "$structure_md" "The hash body includes"
assert_not_contains "structure no validation list" "$structure_md" "stale fragments, duplicate sibling names"

helper_finish
