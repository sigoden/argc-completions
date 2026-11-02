#!/usr/bin/env bash
# references/fragment-schema.md: notation modifiers, choices objects, no value_type.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

schema_md="$SKILL_DIR/references/fragment-schema.md"

assert_contains "schema notation modifiers" "$schema_md" "Notation modifiers: only an option may use them"
assert_contains "schema arg notation no modifier" "$schema_md" 'arg `notation` never carries one'
assert_contains "schema colon enumeration" "$schema_md" "colon-introduced comma list"
assert_contains "schema description terminator" "$schema_md" 'A terminator (`.` `!` `?`) ends a sentence only when'
assert_contains "schema description abbreviations" "$schema_md" 'Skip `e.g.`, `i.e.`, `etc.`, `vs.`, `cf.`, `approx.`'
assert_contains "schema description cjk" "$schema_md" 'CJK terminators (`。` `！` `？`) always end a sentence'
assert_contains "schema description drops terminator" "$schema_md" 'drop the terminator that ends the kept sentence'
assert_contains "schema choices objects" "$schema_md" '{"value": "a", "description": "First"}'
assert_contains "schema choices object rejection" "$schema_md" "choices entries must be objects {value, description}"
assert_contains "schema choices static rendering" "$schema_md" "_static_"
assert_contains "schema shared help source section" "$schema_md" '"section": "<name>"'
assert_contains "schema terminated ignores required" "$schema_md" 'A terminated arg renders as `<name>~` alone'
assert_contains "schema terminated suffix" "$schema_md" 'A terminated arg skips all of them'
assert_contains "schema hash field" "$schema_md" '`hash`'
assert_contains "schema hash empty for none" "$schema_md" '"hash": ""'
assert_contains "schema source command safety" "$schema_md" "space-separated safe token string"
assert_contains "schema cache version bump" "$schema_md" "SKILL_CACHE_VERSION"
assert_contains "schema hash helper" "$schema_md" "fragment-hash.sh"
assert_contains "schema hash behavior context" "$schema_md" "context that can change completion behavior"
assert_contains "schema hash exclusions" "$schema_md" '`meta`, descriptions, aliases, and paths are excluded'
assert_contains "schema hash resolved hints" "$schema_md" 'The `HINTS` half is the text resolved for that path'
assert_not_contains "schema no hash framing" "$schema_md" "NUL SKILL_CACHE_VERSION"
assert_not_contains "schema no hash diff mechanics" "$schema_md" "reach the hash only through"
assert_contains "schema choice_fn from diff" "$schema_md" 'copied only from the `<SKILL_ROOT>/scripts/extract-cmd-context.sh` `DIFF`'
assert_contains "schema diff overrides notation" "$schema_md" 'The same `DIFF` may override an item'"'"'s `notations`/`notation` and `terminated`'

helper_finish
