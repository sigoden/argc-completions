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
assert_contains "structure cache-first rule" "$structure_md" "Never dispatch a compile subagent for a node this check reports"
assert_contains "structure first generation flag" "$structure_md" "root_fragment_exists=0"
assert_contains "structure first generation skips section" "$structure_md" "Skip this entire section for a first generation"
assert_contains "structure first generation no check" "$structure_md" "then §3 does not apply"
assert_contains "structure first generation dispatch" "$structure_md" "dispatch every node directly from §5"
assert_contains "structure check-fragment" "$structure_md" "check-fragment.sh"
assert_contains "structure status unverified" "$structure_md" "status=unverified"
assert_contains "structure finalize script" "$structure_md" "finalize-cache.sh"
assert_contains "structure finalize counts" "$structure_md" "synced=<n> removed=<n>"
assert_contains "structure prompt completion script" "$structure_md" "Completion script:"
assert_contains "structure prompt parent command" "$structure_md" "Parent help command:"
assert_contains "structure context diff section" "$structure_md" "# >>> DIFF"
assert_contains "structure context only three fields" "$structure_md" 'only notation, `choice_fn`, and terminated changes'
assert_contains "structure context no-meta hash" "$structure_md" "Pass \`--no-meta\` to emit only \`HINTS\` and \`DIFF\`"
assert_contains "structure hints resolved by router" "$structure_md" 'resolved per `<SKILL_ROOT>/SKILL.md` §Pipeline contract'
assert_contains "structure hints common recompile" "$structure_md" 'invalidates every node in that root'
assert_contains "structure failed fragment hash" "$structure_md" '"hash": ""'
assert_contains "structure status derived by finalize" "$structure_md" 'only `<SKILL_ROOT>/scripts/finalize-cache.sh` writes it'
assert_contains "structure manual spec hash mismatch" "$structure_md" 'manual `SPEC` edit to notation'
assert_not_contains "structure no status update script" "$structure_md" "update-subcommand-status.sh"
assert_contains "structure handoff explicit" "$structure_md" "handoff, not an automatic continuation"
assert_contains "generate-structure handoff params" "$structure_md" "inspect-script-params.jq"
assert_contains "structure static function naming" "$structure_md" "_static_<fragment path without the root>"
assert_contains "structure no completions inspect" "$structure_md" 'never enumerate `<REPO_ROOT>/completions/`'
assert_contains "structure shared help missing is success" "$structure_md" "shared-help-missing"

# Preflight now owns the cache/output state: the block layout case, the write
# target, and a schema version that is not 1.
assert_contains "structure preflight blocks new" "$structure_md" '`new` means it already has the block layout'
assert_contains "structure preflight output file" "$structure_md" '`output_file`: where assembly writes'
assert_contains "structure preflight other completion" "$structure_md" '`completion_file` and `other_completion_file`'
assert_contains "structure preflight cache version" "$structure_md" 'A value other than `1` is a schema-invalid cache'
assert_contains "structure assemble output file" "$structure_md" '--output "$output_file"'
assert_contains "structure verify output file" "$structure_md" '"$output_file" --cache-dir'
# The orchestrator owns the single retry and the fallback fragment.
assert_contains "structure single retry" "$structure_md" "This is the only retry"
assert_contains "structure failed fragment not overwritten" "$structure_md" "never overwrite one that exists"
assert_contains "structure dispatch parent agent id" "$structure_md" 'Your parent agent id is "<parent-agent-id>"'
assert_contains "structure dispatch send message" "$structure_md" 'send_message({ agent_id: "<parent-agent-id>"'
assert_not_contains "structure no reset-cache" "$structure_md" "reset-cache.sh"
assert_not_contains "structure no subtree reset" "$structure_md" "subtree reset"
assert_not_contains "structure no root txt" "$structure_md" "_root.txt"
assert_not_contains "structure no hash framing" "$structure_md" "The hash input is"
assert_not_contains "structure no hash body" "$structure_md" "The hash body includes"
assert_not_contains "structure no validation list" "$structure_md" "stale fragments, duplicate sibling names"

helper_finish
