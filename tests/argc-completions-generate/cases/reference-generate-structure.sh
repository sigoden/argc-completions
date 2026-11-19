#!/usr/bin/env bash
# references/generate-structure.md: cache-first checks, queue, finalize, handoff.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/generate-structure.md"

# Batch compile, preflight report, and assembly invocation.
doc_contains "$doc" \
    "follow it exactly" \
    'preflight.sh [<root>]' \
    'assemble.sh <root> [-c <dir>]' \
    "Do not poll a compile child" \
    "delete-cache.sh <root>" \
    "Ask for confirmation"

# External subcommands: preflight resolves invoke without running help.
doc_contains "$doc" \
    "invoke_source=external-subcommands" \
    "without help probes" \
    "Invoke command: cargo audit" \
    "external-subcommands"

# Cache-first: never dispatch a node the check already reports.
doc_contains "$doc" \
    "Never dispatch a compile subagent for a node reported as" \
    "root_fragment_exists=0" \
    "Skip this section for a first generation" \
    "§3 does not apply" \
    "dispatch every node directly from §5" \
    "check-fragment.sh" \
    "status=unverified" \
    "finalize-cache.sh" \
    "synced=<n> removed=<n>"

# The compile prompt and the context diff.
doc_contains "$doc" \
    "Completion script:" \
    "Parent help command:" \
    "may be a shell expression" \
    "backward-compatible widening" \
    "# >>> DESCRIBE" \
    'root description from `DESCRIBE`' \
    "# >>> DIFF" \
    'only notation, `choice_fn`, and terminated changes' \
    "Pass \`--no-meta\` to emit only \`HINTS\` and \`DIFF\`" \
    'resolved per `<SKILL_ROOT>/SKILL.md` §Pipeline contract' \
    'invalidates every node in the root' \
    "minimal failed fragment from"

# A hint edit precedes any compile: it is part of the hash, and a late edit
# would invalidate the node and trigger a second regeneration.
doc_contains "$doc" \
    "Add hints before compiling" \
    "before any other work in that run" \
    "forces a second regeneration" \
    'that path'"'"'s `# %%<path>` section' \
    "global/all-command hint" \
    "part of every node's hash in that root"

# Fragment layout and file-name encoding are owned by fragment-schema.md.
doc_contains "$doc" \
    "one-fragment-per-node layout" \
    'only `<SKILL_ROOT>/scripts/finalize-cache.sh` writes it' \
    'manual `SPEC` edit to notation'
doc_lacks "$doc" \
    '<sub>/<nested>.json' \
    '"source": {"kind": "none"}' \
    "update-subcommand-status.sh"

# The handoff is explicit and its parameters come from the inspector.
doc_contains "$doc" \
    "handoff, not an automatic continuation" \
    "inspect-script-params.jq" \
    "_static_<fragment path without the root>" \
    'never enumerate `<REPO_ROOT>/completions/`' \
    "shared-help-missing"

# Preflight owns the cache/output state: the block layout case, the write
# target, and a schema version that is not 1.
doc_contains "$doc" \
    '`new` = normal update with the block layout' \
    '`output_file`: where assembly writes' \
    '`completion_file` and `other_completion_file`' \
    'any value other than `1` recompiles every node with' \
    '--output "$output_file"' \
    '"$output_file" --cache-dir'

# A local bridge copy is read-only; preflight no longer detects bridges from the
# system and the router no longer offers a bridge generation shortcut.
doc_contains "$doc" \
    '`completion_bridge`' \
    'do not generate fragments, assemble, or rewrite it' \
    '`<SKILL_ROOT>/references/verify.md`'
doc_lacks "$doc" \
    '`bridge`' \
    'Bridge shortcut' \
    'detect-bridge'

# The orchestrator owns the single retry and the fallback fragment.
doc_contains "$doc" \
    "This is the only retry" \
    "never overwrite an existing one" \
    'Your parent agent id is "<parent-agent-id>"' \
    'send_message({ agent_id: "<parent-agent-id>"'

# Hash and validation detail moved to their owners.
doc_lacks "$doc" \
    "reset-cache.sh" \
    "subtree reset" \
    "_root.txt" \
    "The hash input is" \
    "The hash body includes" \
    "stale fragments, duplicate sibling names"

helper_finish
