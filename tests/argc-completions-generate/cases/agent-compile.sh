#!/usr/bin/env bash
# agents/compile.md: compile-agent contract, temp help, hash, help-scope rules.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/agents/compile.md"

# Pointers and tooling the compile agent has to use.
# The child contract is self-contained for normal nodes; the schema is a
# fallback read, so a compile child does not pay for it on every node.
doc_contains "$doc" \
    "This file is the complete contract" \
    'Read `<SKILL_ROOT>/references/fragment-schema.md` only when the validator rejects'

doc_contains "$doc" \
    "<SKILL_ROOT>/references/fragment-schema.md" \
    "scripts/normalize-description.sh --choice" \
    "machine-local path" \
    "The validator rejects a description" \
    'jq -L "<SKILL_ROOT>/scripts" -e -f "<SKILL_ROOT>/scripts/validate-fragment.jq"' \
    "fragment-hash.sh" \
    "--help-file" \
    "--completion"

# Help capture: placeholders, temporary files, and the no-cache rule.
doc_contains "$doc" \
    "Preserve each placeholder's text and case" \
    "Include \`--help\` and \`--version\` only when listed" \
    'temporary directory outside `$cache_dir`' \
    'canonicalize_help_file "$raw" "$help_txt"' \
    'Never write a `.txt` help file' \
    "Never probe or list the cache" \
    'mkdir -p "$(dirname "$fragment")"'

# The invocation form changes help execution only; artifact paths stay rooted.
doc_contains "$doc" \
    "Invoke command" \
    "cargo audit bin --help" \
    "man cargo-audit-bin" \
    'Never rewrite `path`'

# The orchestrator owns the retry and the parent handoff.
doc_contains "$doc" \
    "Do not retry: the orchestrator owns the single retry" \
    "send the same object to the parent agent id" \
    "single-line shell expression" \
    "capture_source_command" \
    "deterministic" \
    "side-effect-free" \
    "records the actual success"

# The agent never re-reads what it was given, and never invents a description.
doc_contains "$doc" \
    "Read no skill script" \
    "never synthesize one from its name" \
    "Do not call the \`skill\` tool"

# The root description has an explicit source chain: help/man summary, then
# DESCRIBE, then the man NAME fallback, then a warning.
doc_contains "$doc" \
    "man_name_summary" \
    "root-description-missing" \
    "context \`DESCRIBE\` line" \
    "Never derive it from a usage line" \
    "description-only read" \
    "changes neither \`source\` nor \`hash\`"

# A negated spelling is its own parameter, never a second name of the positive.
doc_contains "$doc" \
    "**Negated spellings.**" \
    '--[no-]color[=WHEN]' \
    'never invent a "Disable ..." wording' \
    'skipped with `context-item-missing <key>`'

# Notations: one modifier, on the final notation, on an option only.
doc_contains "$doc" \
    "**Notation modifiers**" \
    "only on the final notation" \
    "never for a multi-value notation" \
    '`required` stays in the field but is never rendered' \
    'never put a modifier inside it' \
    '"notations": ["<script>", "<args*>"]'

# Node fields, in the order the contract documents them.
doc_contains "$doc" \
    "### 3.1 Node fields" \
    "### 3.2 Descriptions" \
    "### 3.3 Names" \
    "### 3.4 Values and notations" \
    "### 3.5 Enumerations" \
    "### 3.6 Repeats, prefixes, delimiters" \
    "### 3.7 Flags" \
    "### 3.8 Options" \
    "### 3.9 Positional arguments" \
    "### 3.10 Terminated values" \
    "### 3.11 Context diff" \
    "### 3.12 Source and escaping" \
    "### 3.13 Shared help (subcommands without their own help)"

# Shared help: compare with the parent, never read a sibling, never report a
# missing shared help as a failure.
doc_contains "$doc" \
    'help_files_equal "$parent_txt" "$help_txt"' \
    "Parent help command" \
    "never read a sibling entry" \
    "shared-help-missing" \
    'Never report `failed`' \
    "sibling and child help are off limits as data sources"

# Child options stay in the child; value sets are not subcommands.
doc_contains "$doc" \
    'never hoist a child'"'"'s definitions into this node'"'"'s `items`' \
    "signatures match" \
    "Never turn alternation values into subcommands"

# The context diff applies notation/choice_fn/terminated over the baseline.
doc_contains "$doc" \
    '`notation`: the right side is final' \
    'context-item-missing' \
    'context-terminated-conflict' \
    '--fragment "$new_fragment"'

# Choices are objects paired with their descriptions, and a failed fragment
# carries an empty hash.
doc_contains "$doc" \
    'Pair each value with its description' \
    '`{"value": "...", "description": "..."}` objects' \
    '"hash": ""'

doc_lacks "$doc" \
    '`cache` (`hit`, `miss`, `new`, `unknown`' \
    "Root cache probe"

helper_finish
