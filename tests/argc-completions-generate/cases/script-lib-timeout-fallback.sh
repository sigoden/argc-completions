#!/usr/bin/env bash
# scripts/lib.sh: run_with_timeout fallback without timeout/gtimeout.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_timeout_fixtures

assert_timeout_returns "run_with_timeout fallback returns for a stopped child" stop-self 1
assert_timeout_returns "run_with_timeout fallback returns for a TERM-ignoring child" ignore-term 1

helper_finish
