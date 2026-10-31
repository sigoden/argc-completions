#!/usr/bin/env bash
# references/compgen-helpers.md: one flat section per helper, in library order.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

helpers_md="$SKILL_DIR/references/compgen-helpers.md"
util="$ROOT_DIR/utils/_argc_utils.sh"

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
' _ "$helpers_md" "$util"
# One `## ` heading per helper, in the order the library defines them. `.` in the
# patterns stands for the backtick, which cannot appear in a single-quoted body.
check "helper sections follow library order" bash -c '
    doc_order="$(grep -oE "^## ._argc_util_[a-z_]+" "$1" | cut -c5-)"
    lib_order="$(grep -o "^_argc_util_[a-z_]*" "$2" | awk "!seen[\$0]++")"
    if [ "$doc_order" != "$lib_order" ]; then
        echo "section order differs from <REPO_ROOT>/utils/_argc_utils.sh" >&2
        diff <(printf "%s\n" "$lib_order") <(printf "%s\n" "$doc_order") >&2 || true
        exit 1
    fi
' _ "$helpers_md" "$util"
check "helper section map covers every section" bash -c '
    rows="$(gawk "/^## Section map/ { inside = 1; next } inside && /^## / { exit } inside && /^\| ._argc_util_/ { n++ } END { print n + 0 }" "$1")"
    sections="$(grep -cE "^## ._argc_util_" "$1")"
    helpers="$(grep -o "^_argc_util_[a-z_]*" "$2" | sort -u | wc -l)"
    test "$rows" = "$sections" && test "$sections" = "$helpers" || {
        echo "section map=$rows sections=$sections helpers=$helpers" >&2
        exit 1
    }
' _ "$helpers_md" "$util"
check "helper reference is flat" bash -c '
    ! grep -qE "^## [0-9]" "$1" && ! grep -qE "^#### " "$1"
' _ "$helpers_md"

assert_contains "compgen section map" "$helpers_md" "## Section map"
assert_contains "compgen source guard section" "$helpers_md" "## Source guard"
assert_contains "compgen tool-specific values" "$helpers_md" "## Tool-specific values"
assert_contains "compgen helper guard" "$helpers_md" 'utils/_argc_utils.sh'
assert_contains "compgen executable helper" "$helpers_md" '## `_argc_util_comp_command`'
assert_contains "compgen subcommand helper" "$helpers_md" '## `_argc_util_comp_subcommand <index> [prepend...]`'
assert_contains "compgen sources helpers" "$helpers_md" '. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"'
assert_contains "helpers cache probe note" "$helpers_md" "probe for a tool that may be absent inside the uncached function"

helper_finish
