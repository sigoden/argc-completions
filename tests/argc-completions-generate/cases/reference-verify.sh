#!/usr/bin/env bash
# references/verify.md: STATIC checks, reserved prefix, formatting step.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/verify.md"

# STATIC owns generated functions; the formatter owns the block layout.
doc_contains "$doc" \
    'reserved for `STATIC`' \
    "format-choices.sh" \
    "--cmd <name>" \
    "--no-strict"

# Cache hygiene and provenance.
doc_contains "$doc" \
    'non-`.json` files' \
    '`.txt`' \
    'invalid `hash` or `source.command`' \
    'source.command` equals its parent'

# The help probe's exemptions: bridge copies and delegate completions.
doc_contains "$doc" \
    '`_choice_delegate`' \
    'a bridge or `_choice_delegate` completion is exempt'

# HINTS markers.
doc_contains "$doc" \
    '`HINTS` holds comment/blank lines only' \
    'must name a canonical command path' \
    'and appear exactly once, while a marker without a path fails' \
    '| `HINTS markers` |'

# Tag and choice-function contracts.
doc_contains "$doc" \
    '`SPEC` defines no `_choice_*` functions' \
    'the root block carries exactly one non-empty `@describe`' \
    'backticks count in the tag signature only (before two or more spaces)' \
    'before the first `# {{` marker' \
    'every referenced function must be defined in `CHOICES`, once' \
    '`_argc_util_*` is allowed when the script sources' \
    '| Root description |' \
    'source.kind: none` only warns'

doc_lacks "$doc" "up to 30, 5s timeout"

helper_finish
