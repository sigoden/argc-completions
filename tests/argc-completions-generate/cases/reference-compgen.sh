#!/usr/bin/env bash
# references/compgen.md: protocol sections, routing, candidate-check contract.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

compgen_md="$SKILL_DIR/references/compgen.md"

check "compgen sections 1-6" bash -c '
    n=1
    while [ "$n" -le 6 ]; do
        grep -q "^## $n\. " "$1" || {
            echo "missing section $n" >&2
            exit 1
        }
        n=$((n + 1))
    done
' _ "$compgen_md"
check "compgen section map rows" bash -c '
    rows="$(gawk "/^## Section map/ { inside = 1; next } inside && /^## / { exit } inside && /^\| §/ { n++ } END { print n + 0 }" "$1")"
    test "$rows" = 6
' _ "$compgen_md"

assert_contains "compgen candidate checks" "$compgen_md" "Candidate checks"
assert_contains "compgen generic assertions" "$compgen_md" "--argc-compgen generic"
assert_not_contains "compgen no shell candidate lore" "$compgen_md" "COMP_WORDBREAKS"
# The workflow and the specification keep separate homes.
assert_contains "compgen workflow pointer" "$compgen_md" "<SKILL_ROOT>/references/add-choice-fns.md"
assert_contains "compgen __argc_value notation" "$compgen_md" "__argc_value=<NOTATION>"
assert_contains "compgen bounded queries" "$compgen_md" "A candidate query must be read-only and bounded"
assert_contains "compgen slow query cache" "$compgen_md" "_argc_util_cache"
# Candidate pipelines stay plain: argc dedupes and orders, jq stays LF-only on
# Windows, and timeouts belong to argc and the shell.
assert_contains "compgen no candidate sort" "$compgen_md" "Do not sort or dedupe candidates"
assert_contains "compgen jq binary" "$compgen_md" "jq -b -r"
assert_contains "compgen no timeout wrapper" "$compgen_md" 'Never wrap a query in `timeout` command'
assert_contains "compgen assertion helper" "$compgen_md" "test-compgen.sh"
# §5 documents the raw control lines; it is not a licence to hand-assemble them.
assert_contains "compgen no hand-assembled control lines" "$compgen_md" "Do not assemble the control lines by hand"
assert_contains "compgen mandatory helper lookup" "$compgen_md" "mandatory reading before writing"

# Function-only harness documented in compgen.md §6.
build_with_script
harness_out="$(bash -c '
    script=$1; shift
    eval "$(sed -n "/^# >>> CHOICES/,/^# <<< CHOICES/p" "$script" | sed "1d;\$d")"
    run() { "$@"; }
    run "$@"
' _ "$WITH_SCRIPT" _choice_foo)"
check "function harness" test "$harness_out" = "foo"

helper_finish
