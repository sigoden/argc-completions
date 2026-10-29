#!/usr/bin/env bash
# Assert the candidate values argc compgen offers for one word.
#
# Runs `argc --argc-compgen generic`, strips NUL nospace markers, keeps the
# value column, and drops __argc_* control lines, so a completion test needs no
# hand-written `tr`/`cut`/`grep` pipeline. Human output goes to stderr; --list
# prints the candidate values to stdout.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"

usage() {
    cat <<'USAGE'
Usage: test-compgen.sh [options] <completion.sh> <cmd...>

Assert the candidate values offered for the word being completed. The
positionals after <completion.sh> are argc's compgen command line: the root
command, any subcommand words, and the word being completed. Quote the final
empty word to list every candidate:

  test-compgen.sh -x out.txt demo.sh demo --output ''
  test-compgen.sh -e '^out\.' -a '^tmp' demo.sh demo remote --foo ''

Values are NUL-stripped and reduced to their value column; __argc_* control
lines and descriptions are not part of the assertion. With no option and no
--list the run is a smoke test: it fails only on a non-zero exit, a timeout,
or an error line on stderr.

Options:
  -x, --exact <value>    Require this exact candidate value (repeatable)
  -e, --expect <regex>   Require a candidate value matching the ERE (repeatable)
  -a, --absent <regex>   Require no candidate value matching the ERE (repeatable)
  -c, --count <n>        Require exactly <n> candidate values
  -l, --list             Print candidate values to stdout
  -t, --timeout <secs>   Timeout for argc (default 5)
  -v, --verbose
  -h, --help

Exit status: 0 pass, 1 assertion or compgen failure, 2 usage error.
USAGE
}

usage_die() {
    printf 'test-compgen: %s\n' "$*" >&2
    exit 2
}

exacts=()
expects=()
absents=()
count=""
timeout=5
list=0

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help) usage; exit 0 ;;
        -x|--exact) [[ $# -ge 2 ]] || usage_die "$1 requires a value"; exacts+=("$2"); shift 2 ;;
        -e|--expect) [[ $# -ge 2 ]] || usage_die "$1 requires a pattern"; expects+=("$2"); shift 2 ;;
        -a|--absent) [[ $# -ge 2 ]] || usage_die "$1 requires a pattern"; absents+=("$2"); shift 2 ;;
        -c|--count) [[ $# -ge 2 ]] || usage_die "$1 requires a number"; count="$2"; shift 2 ;;
        -t|--timeout) [[ $# -ge 2 ]] || usage_die "$1 requires a number"; timeout="$2"; shift 2 ;;
        -l|--list) list=1; shift ;;
        -v|--verbose) VERBOSE=1; shift ;;
        --) shift; break ;;
        -*) printf 'test-compgen: unknown option: %s\n' "$1" >&2; exit 2 ;;
        *) break ;;
    esac
done

[[ $# -ge 1 ]] || { usage >&2; exit 2; }
file="$1"
shift
[[ -f "$file" ]] || die "completion file not found: $file"
[[ $# -ge 2 ]] || {
    printf 'test-compgen: pass the root command and the word to complete (quote %s to list all)\n' "''" >&2
    usage >&2
    exit 2
}
[[ -z "$count" || "$count" =~ ^[0-9]+$ ]] || usage_die "--count needs a number: $count"
[[ "$timeout" =~ ^[0-9]+$ ]] || usage_die "--timeout needs a number: $timeout"

require_cmd argc

export ARGC_COMPLETIONS_ROOT="$REPO_ROOT"
tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

raw="$tmp_dir/out"
err="$tmp_dir/err"
values="$tmp_dir/values"

failures=0
pass() { printf 'PASS  %s\n' "$*" >&2; }
fail() { failures=$((failures + 1)); printf 'FAIL  %s\n' "$*" >&2; }

quoted=""
for arg in "$file" "$@"; do
    quoted+="$(printf '%q' "$arg") "
done
log_info "compgen: argc --argc-compgen generic $quoted"

rc=0
run_with_timeout "$raw" "$err" "$timeout" argc --argc-compgen generic "$file" "$@" || rc=$?
if [[ "$rc" -eq 124 || "$rc" -eq 143 ]]; then
    die "compgen timed out after ${timeout}s: $quoted"
elif [[ "$rc" -ne 0 ]]; then
    die "compgen exited $rc: $(head -n 1 "$err")"
fi
if grep -qiE 'error:|panic|command not found' "$err"; then
    die "compgen stderr: $(head -n 1 "$err")"
fi

# NUL removal must precede the first grep: an embedded NUL makes grep treat the
# stream as binary and -x/-F never match.
tr -d '\000' <"$raw" | cut -f1 | grep -v '^__argc_' >"$values" || true
total="$(wc -l <"$values" | tr -d ' ')"

show_candidates() {
    if [[ "$total" -eq 0 ]]; then
        printf 'NOTE  no candidates; check the final word and the choice_fn binding\n' >&2
    else
        printf 'NOTE  %s candidate(s), first 20:\n' "$total" >&2
        head -n 20 "$values" | sed 's/^/  /' >&2
    fi
}

if [[ -n "$count" && "$total" -ne "$count" ]]; then
    fail "count: expected $count, got $total"
    show_candidates
fi

for value in "${exacts[@]}"; do
    if grep -Fxq -- "$value" "$values"; then
        pass "exact: $value"
    else
        fail "exact: $value"
        show_candidates
    fi
done

for pattern in "${expects[@]}"; do
    if grep -Eq -- "$pattern" "$values"; then
        pass "expect: $pattern"
    else
        fail "expect: $pattern"
        show_candidates
    fi
done

for pattern in "${absents[@]}"; do
    if grep -Eq -- "$pattern" "$values"; then
        fail "absent: $pattern"
        printf 'NOTE  matching candidate(s):\n' >&2
        { grep -E -- "$pattern" "$values" | head -n 20 | sed 's/^/  /'; } >&2 || true
    else
        pass "absent: $pattern"
    fi
done

if [[ "$list" -eq 1 ]]; then
    cat "$values"
fi

if [[ "$failures" -gt 0 ]]; then
    printf 'RESULT: FAIL (%s failures, %s candidates)\n' "$failures" "$total" >&2
    exit 1
fi
printf 'RESULT: PASS (%s candidates)\n' "$total" >&2
