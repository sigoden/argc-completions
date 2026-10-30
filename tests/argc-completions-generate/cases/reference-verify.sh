#!/usr/bin/env bash
# references/verify.md: STATIC checks, reserved prefix, formatting step.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

verify_md="$SKILL_DIR/references/verify.md"

assert_not_contains "verify docs no marker hint" "$verify_md" "verify does not check the marker"
assert_contains "verify static block check" "$verify_md" "STATIC"
assert_contains "verify static reserved prefix" "$verify_md" "reserved prefix"
assert_contains "verify docs format script" "$verify_md" "format-choices.sh"

helper_finish
