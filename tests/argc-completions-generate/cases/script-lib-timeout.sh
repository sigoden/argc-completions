#!/usr/bin/env bash
# scripts/lib.sh: run_with_timeout escalates and contains children.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_timeout_fixtures

assert_timeout_returns "run_with_timeout returns for a stopped child" stop-self 0
assert_timeout_returns "run_with_timeout returns for a TERM-ignoring child" ignore-term 0
# The timeout must kill descendants too, not only the direct child: a choice
# function can leave bash/sleep behind. The fixture records both pids.
descendant_file="$TMP_DIR/spawn-child-0-pid.txt.descendant"
rm -f "$descendant_file"
assert_timeout_returns "run_with_timeout kills descendants" spawn-child 0
check "run_with_timeout leaves no descendant behind" \
    bash -c 'test -s "$1" && ! kill -0 "$(cat "$1")" 2>/dev/null' _ "$descendant_file"

helper_finish
