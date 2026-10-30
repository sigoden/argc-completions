#!/usr/bin/env bash
# scripts/normalize-description.sh: description golden cases.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# Description normalization (normalize-description.sh) and the matching
# validate-fragment.jq rules. Golden cases come from the description rules in
# references/fragment-schema.md; the first group is the real cache corpus shape.
# ---------------------------------------------------------------------------
normalize_case() {
    local label="$1" expected="$2" raw="$3"
    shift 3
    local args=() c
    for c in "$@"; do args+=(--choice "$c"); done
    local got
    got="$(printf '%s' "$raw" | bash "$SCRIPTS/normalize-description.sh" "${args[@]}")"
    if [[ "$got" == "$expected" ]]; then
        pass "$label"
    else
        fail "$label (got: $got, want: $expected)"
    fi
}
normalize_case "normalize keeps abbreviation sentence" 'Print human readable file sizes (e.g. 1K 234M 56G)' 'Print human readable file sizes (e.g. 1K 234M 56G)'
normalize_case "normalize cuts at first sentence" 'Manage remotes' 'Manage remotes. More detail.'
normalize_case "normalize drops echoed bracket group" 'Mode (default: a)' 'Mode [a|b] (default: a). More.' a b
normalize_case "normalize drops colon list echo" 'Select sort' 'Select sort: name,version,none.' name version none
normalize_case "normalize drops home path and connector" 'use BROWSER' 'use /home/you/.local/bin/browser.sh or BROWSER'
normalize_case "normalize drops home-only text" '' '$HOME/.config/x'
normalize_case "normalize flattens and strips backticks" 'Set foo wrapped line' $'Set `foo`\n    wrapped\tline.'
normalize_case "normalize keeps standalone question mark" 'both ? (single-char wildcard) and * do not' 'both ? (single-char wildcard) and * do not'
normalize_case "normalize keeps dotted tail" 'save files to PREFIX/..' 'save files to PREFIX/..'
normalize_case "normalize keeps dash question mark" 'print this help message and exit (also -? or --help)' 'print this help message and exit (also -? or --help)'
normalize_case "normalize keeps single letter initial" 'J. Smith' 'J. Smith'
normalize_case "normalize cuts CJK sentence" '清理缓存' '清理缓存。更多说明'
normalize_case "normalize keeps trailing etc" 'Foo, bar, etc.' 'Foo, bar, etc.'


helper_finish
