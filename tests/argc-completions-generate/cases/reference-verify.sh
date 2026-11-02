#!/usr/bin/env bash
# references/verify.md: STATIC checks, reserved prefix, formatting step.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

verify_md="$SKILL_DIR/references/verify.md"

assert_contains "verify static reserved prefix" "$verify_md" 'reserved for `STATIC`'
assert_contains "verify docs format script" "$verify_md" "format-choices.sh"
assert_contains "verify usage cmd override" "$verify_md" "--cmd <name>"
assert_contains "verify usage no-strict" "$verify_md" "--no-strict"
assert_contains "verify cache hygiene json only" "$verify_md" 'non-`.json` files'
assert_contains "verify cache hygiene rejects txt" "$verify_md" '`.txt`'
assert_contains "verify hash rule" "$verify_md" 'invalid `hash` or `source.command`'
assert_contains "verify provenance source command" "$verify_md" 'source.command` equals its parent'
assert_contains "verify hints comments only" "$verify_md" '`HINTS` is comment/blank lines only'
assert_contains "verify hints marker canonical path" "$verify_md" 'must name a command path'
assert_contains "verify hints marker once" "$verify_md" 'and appear once, and a marker without a path is a failure'
assert_contains "verify hints marker fix row" "$verify_md" '| `HINTS markers` |'
assert_contains "verify spec no choice defs" "$verify_md" '`SPEC` contains no `_choice_*` definitions'
assert_contains "verify tag signature backticks" "$verify_md" 'only the tag signature (before two or more spaces) counts for backticks'
assert_contains "verify root-only meta placement" "$verify_md" 'before the first `# {{` marker'
assert_contains "verify choice fn defined" "$verify_md" 'must name a function defined in the script'
assert_contains "verify util source guard" "$verify_md" '`_argc_util_*` is allowed when the script sources'
assert_not_contains "verify no compgen limits" "$verify_md" "up to 30, 5s timeout"

helper_finish
