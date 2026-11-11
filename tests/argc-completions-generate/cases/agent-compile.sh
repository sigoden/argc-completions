#!/usr/bin/env bash
# agents/compile.md: compile-agent contract, temp help, hash, help-scope rules.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/agents/compile.md"

# Pointers and tooling the compile agent has to use.
doc_contains "$doc" \
    "<SKILL_ROOT>/references/fragment-schema.md" \
    "scripts/normalize-description.sh --choice" \
    "machine-local path" \
    "validate-fragment.jq\` rejects a description" \
    'jq -L "<SKILL_ROOT>/scripts" -e -f "<SKILL_ROOT>/scripts/validate-fragment.jq"' \
    "fragment-hash.sh" \
    "--help-file" \
    "--completion"

# Help capture: placeholders, temporary files, and the no-cache rule.
doc_contains "$doc" \
    "Preserve each placeholder's text and case" \
    "Include \`--help\` and \`--version\` only when the help lists them" \
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
    "you read none of them" \
    "never synthesize one from its name" \
    "Do not call the \`skill\` tool"

# A negated spelling is its own parameter, never a second name of the positive.
doc_contains "$doc" \
    "**Negated spellings.**" \
    '--[no-]color[=WHEN]' \
    'never invent a "Disable ..." wording' \
    'skipped as `context-item-missing`'

# Notations: one modifier, on the final notation, on an option only.
doc_contains "$doc" \
    "**Notation modifiers**" \
    "Only the final notation may carry one modifier" \
    "never use it for a multi-value notation" \
    '`required` is not rendered on a terminated item' \
    'never put a notation modifier (`*`, `+`, `?`) inside it' \
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
    "### 3.12 Fragment shape and escaping" \
    "### 3.13 Shared help (subcommands without their own help)"

# Shared help: compare with the parent, never read a sibling, never report a
# missing shared help as a failure.
doc_contains "$doc" \
    'help_files_equal "$parent_txt" "$help_txt"' \
    "Parent help command" \
    "never read a sibling entry" \
    "shared-help-missing" \
    'Never report `failed`' \
    "Sibling and child help are off limits"

# Child options stay in the child; value sets are not subcommands.
doc_contains "$doc" \
    'never hoisted into this node'"'"'s `items`' \
    "parameter signatures match" \
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
    'Pair each `choices` value with the description' \
    'objects `{"value": "...", "description": "..."}`' \
    '"hash": ""'

doc_lacks "$doc" \
    '`cache` (`hit`, `miss`, `new`, `unknown`' \
    "Root cache probe"

helper_finish
