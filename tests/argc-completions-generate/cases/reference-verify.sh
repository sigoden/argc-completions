#!/usr/bin/env bash
# references/verify.md: STATIC checks, reserved prefix, formatting step.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

verify_md="$SKILL_DIR/references/verify.md"

assert_contains "verify static reserved prefix" "$verify_md" "reserved prefix"
assert_contains "verify docs format script" "$verify_md" "format-choices.sh"
assert_contains "verify cache hygiene json only" "$verify_md" 'every file must be a fragment (`.json`)'
assert_contains "verify cache hygiene rejects txt" "$verify_md" 'Any `.txt`'
assert_contains "verify hash rule" "$verify_md" "64 lowercase hex"
assert_contains "verify provenance source command" "$verify_md" 'source.command` equals its parent'

helper_finish
