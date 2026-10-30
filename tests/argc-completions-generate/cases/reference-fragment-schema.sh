#!/usr/bin/env bash
# references/fragment-schema.md: notation modifiers, choices objects, no value_type.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

schema_md="$SKILL_DIR/references/fragment-schema.md"

assert_contains "schema notation modifiers" "$schema_md" "Notation modifiers: only an option may use them"
assert_contains "schema arg notation no modifier" "$schema_md" 'arg `notation` never carries one'
assert_contains "schema colon enumeration" "$schema_md" "colon-introduced comma list"
assert_not_contains "schema docs no marker hint" "$schema_md" "advisory hint"
assert_not_contains "fragment schema no value_type" "$schema_md" '"value_type"'
assert_contains "schema choices objects" "$schema_md" '{"value": "a", "description": "First"}'
assert_contains "schema choices object rejection" "$schema_md" "choices entries must be objects {value, description}"
assert_contains "schema choices static rendering" "$schema_md" "_static_"

helper_finish
