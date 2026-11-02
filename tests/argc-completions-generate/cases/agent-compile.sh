#!/usr/bin/env bash
# agents/compile.md: compile-agent contract, temp help, hash, help-scope rules.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

compile_md="$SKILL_DIR/agents/compile.md"

assert_contains "compile contract schema pointer" "$compile_md" "<SKILL_ROOT>/references/fragment-schema.md"
assert_contains "compile contract normalizer call" "$compile_md" "scripts/normalize-description.sh --choice"
assert_contains "compile contract machine-local path" "$compile_md" "machine-local path"
assert_contains "compile contract validator rejects" "$compile_md" "validate-fragment.jq\` rejects a description"
assert_contains "compile contract placeholder case" "$compile_md" "Preserve each placeholder's text and case"
assert_contains "compile contract help flag" "$compile_md" "Include \`--help\` and \`--version\` only when the help lists them"
assert_contains "compile contract temp help" "$compile_md" 'temporary directory outside `$cache_dir`'
assert_contains "compile contract temp canonicalizer" "$compile_md" 'canonicalize_help_file "$raw" "$help_txt"'
assert_contains "compile contract no cache txt" "$compile_md" "never write \`.txt\`"
assert_contains "compile contract no root probe" "$compile_md" "There is no root cache probe"
assert_contains "compile contract hash helper" "$compile_md" "fragment-hash.sh"
assert_contains "compile contract help file reuse" "$compile_md" "--help-file"
assert_contains "compile contract completion hints" "$compile_md" "--completion"
assert_contains "compile contract source command safety" "$compile_md" "space-separated safe token string"
assert_contains "compile contract actual source" "$compile_md" "records the actual success"
assert_contains "compile contract no validator read" "$compile_md" "you read none of them"
assert_contains "compile contract no synthetic arg description" "$compile_md" "never synthesize one from its name"
assert_contains "compile contract no skill load" "$compile_md" "Do not call the \`skill\` tool"
assert_contains "compile contract notation modifiers" "$compile_md" "**Notation modifiers**"
assert_contains "compile contract final notation modifier" "$compile_md" "Only the final notation may carry one modifier"
assert_contains "compile contract notation vs repeatable" "$compile_md" "never use it for a multi-value notation"
assert_contains "compile contract terminated ignores required" "$compile_md" '`required` is not rendered on a terminated item'
for heading in "3.1 Node fields" "3.2 Descriptions" "3.3 Names" "3.4 Values and notations" "3.5 Enumerations" "3.6 Repeats, prefixes, delimiters" "3.7 Flags" "3.8 Options" "3.9 Positional arguments" "3.10 Terminated values" "3.11 Context diff" "3.12 Fragment shape and escaping" "3.13 Shared help (subcommands without their own help)"; do
    assert_contains "compile section $heading" "$compile_md" "### $heading"
done
assert_contains "compile shared help parent compare" "$compile_md" '<SKILL_ROOT>/scripts/compare-help.sh "<parent-temp>.txt" "<node-temp>.txt"'
assert_contains "compile shared help parent command" "$compile_md" "Parent help command"
assert_contains "compile shared help no sibling read" "$compile_md" "never read a sibling entry"
assert_contains "compile shared help missing tag" "$compile_md" "shared-help-missing"
assert_contains "compile shared help missing not failed" "$compile_md" 'Never report `failed`'
assert_contains "compile child options not hoisted" "$compile_md" 'never hoisted into this node'"'"'s `items`'
assert_contains "compile value set signature check" "$compile_md" "parameter signatures match"
assert_contains "compile value set not subcommands" "$compile_md" "Never turn alternation values into subcommands"
assert_contains "compile contract context diff applies notation" "$compile_md" '`notation`: the right side is final'
assert_contains "compile contract context diff skip missing" "$compile_md" 'context-item-missing'
assert_contains "compile contract context diff terminated" "$compile_md" 'context-terminated-conflict'
assert_contains "compile contract hash uses fragment baseline" "$compile_md" '--fragment "$new_fragment"'
assert_contains "compile contract args notation kept" "$compile_md" '"notations": ["<script>", "<args*>"]'
assert_contains "compile contract arg notation bare" "$compile_md" 'never put a notation modifier (`*`, `+`, `?`) inside it'
assert_contains "compile choice descriptions" "$compile_md" 'Pair each `choices` value with the description'
assert_contains "compile choices objects" "$compile_md" 'objects `{"value": "...", "description": "..."}`'
assert_contains "compile help scope" "$compile_md" "Sibling and child help are off limits"
assert_contains "compile failed hash empty" "$compile_md" '"hash": ""'
assert_not_contains "compile no cache summary field" "$compile_md" '`cache` (`hit`, `miss`, `new`, `unknown`'
assert_not_contains "compile no root probe instructions" "$compile_md" "Root cache probe"

helper_finish
