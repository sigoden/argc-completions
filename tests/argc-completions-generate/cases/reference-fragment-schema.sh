#!/usr/bin/env bash
# references/fragment-schema.md: notation modifiers, choices objects, no value_type.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/fragment-schema.md"

# Layout, file-name encoding, and the minimal failed fragment.
doc_contains "$doc" \
    '<sub>/<nested>.json  path = [root, sub, nested]' \
    'profile%3Amem.json' \
    '"notes": "help unavailable"'

# Notations: modifiers belong to options, and only to the final notation.
doc_contains "$doc" \
    "Notation modifiers: only an option may use them" \
    'arg `notation` never carries one' \
    "colon-introduced comma list"

# Descriptions: one sentence, kept whole.
doc_contains "$doc" \
    'A terminator (`.` `!` `?`) ends a sentence only when' \
    'Skip `e.g.`, `i.e.`, `etc.`, `vs.`, `cf.`, `approx.`' \
    'CJK terminators (`。` `！` `？`) always end a sentence' \
    'drop the terminator that ends the kept sentence'

# Choices are objects and generate STATIC functions.
doc_contains "$doc" \
    '{"value": "a", "description": "First"}' \
    "choices entries must be objects {value, description}" \
    "_static_"

# Shared help and terminated values.
doc_contains "$doc" \
    '"section": "<name>"' \
    'A terminated arg renders as `<name>~` alone' \
    'A terminated arg skips all of them' \
    '`hash`' \
    '"hash": ""' \
    "space-separated safe token string" \
    "SKILL_CACHE_VERSION" \
    "fragment-hash.sh" \
    "context that can change completion behavior" \
    '`meta`, descriptions, aliases, and paths are excluded' \
    'The `HINTS` half is the text resolved for that path'

# Hash mechanics live in fragment-hash.sh; the schema only states the contract.
doc_lacks "$doc" \
    "NUL SKILL_CACHE_VERSION" \
    "reach the hash only through"

# The DIFF is the only source of a binding or an override.
doc_contains "$doc" \
    'copied only from the `<SKILL_ROOT>/scripts/extract-cmd-context.sh` `DIFF`' \
    'The same `DIFF` may override an item'"'"'s `notations`/`notation` and `terminated`'

helper_finish
