#!/usr/bin/env bash
# references/compgen-helpers.md: helper index stays in sync with the library.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

helpers_md="$SKILL_DIR/references/compgen-helpers.md"

check "helpers document every _argc_util_* helper" bash -c '
    helpers_md="$1"
    util="$2"
    missing=0
    while read -r fn; do
        grep -Fq "\`$fn" "$helpers_md" || {
            echo "undocumented helper: $fn" >&2
            missing=1
        }
    done < <(grep -o "^_argc_util_[a-z_]*" "$util" | sort -u)
    exit "$missing"
' _ "$helpers_md" "$ROOT_DIR/utils/_argc_utils.sh"
check "helper reference sections 1-5" bash -c '
    n=1
    while [ "$n" -le 5 ]; do
        grep -q "^## $n\. " "$1" || {
            echo "missing section $n" >&2
            exit 1
        }
        n=$((n + 1))
    done
' _ "$helpers_md"
check "helper reference section map rows" bash -c '
    rows="$(gawk "/^## Section map/ { inside = 1; next } inside && /^## / { exit } inside && /^\| §/ { n++ } END { print n + 0 }" "$1")"
    test "$rows" = 5
' _ "$helpers_md"

assert_contains "compgen helper index" "$helpers_md" "### Helper index"
assert_contains "compgen helper guard" "$helpers_md" 'utils/_argc_utils.sh'
assert_contains "compgen executable helper" "$helpers_md" '#### `_argc_util_comp_command`'
assert_contains "compgen subcommand helper" "$helpers_md" '#### `_argc_util_comp_subcommand <index> [prepend...]`'
assert_contains "compgen sources helpers" "$helpers_md" '. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"'

helper_finish
