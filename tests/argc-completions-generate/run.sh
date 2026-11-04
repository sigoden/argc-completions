#!/usr/bin/env bash
# Tests for the argc-completions-generate skill itself.
#
# Scope: these tests exercise the skill's documents, scripts and contracts —
# SKILL.md wording, references/*.md and agents/*.md requirements, the
# scripts/*.sh interfaces, and the fragment/context fixture formats.
#
# Out of scope: they do NOT test the completions the skill produces. No command
# is crawled, no fragment is compiled by an agent, and no completions/<cmd>.sh is
# generated or executed. Verifying generated completions is a separate concern.
#
# Layout:
#   helper.sh                   shared harness: paths, reporting, assertions, fixture builders
#   cases/reference-*           one file per references/*.md document
#   cases/agent-*               one file per agents/*.md document
#   cases/script-*              one file per skill script or contract artifact;
#                               a script split across shards uses the suffix
#                               script-<script>-<shard>.sh
#   cases/skill-md.sh           SKILL.md checks
#   cases/skill-layout.sh       layout checks
#   cases/skill-cross-docs.sh   cross-document checks
#
# This file runs every case file and aggregates the results. Case files are
# independent — each owns a mktemp directory — so they run concurrently by
# default. A single case file is standalone for focused work:
#   bash tests/argc-completions-generate/cases/script-assemble-basic.sh
#
# Environment:
#   JOBS=N     run N case files concurrently (default: 2 on Windows/MSYS,
#              otherwise CPUs capped at 16)
#   -j N       same as JOBS=N (overrides the environment)
#   VERBOSE=1  stream each command's output as it runs (forces JOBS=1)
#   QUIET=1    print only failures and the summary
#
# Cases that write inside the repository use a unique root name (PIDs) or a
# private mktemp directory; keep that invariant when adding a case.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/helper.sh"
helper_require_bash5

jobs=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        -j)
            [[ $# -ge 2 ]] || { echo "-j requires a value" >&2; exit 2; }
            jobs="$2"
            shift 2
            ;;
        -j*)
            jobs="${1#-j}"
            shift
            ;;
        -h | --help)
            printf 'usage: %s [-j N]\n' "$(basename "$0")"
            exit 0
            ;;
        *)
            echo "unknown option: $1" >&2
            exit 2
            ;;
    esac
done

if [[ -z "$jobs" ]]; then
    jobs="${JOBS:-}"
fi
if [[ -z "$jobs" ]]; then
    cpus="$(getconf _NPROCESSORS_ONLN 2>/dev/null || true)"
    [[ "$cpus" =~ ^[1-9][0-9]*$ ]] || cpus=4
    if [[ "${OSTYPE:-}" == msys* || "${OSTYPE:-}" == cygwin* ]]; then
        # Git Bash/MSYS2 serializes process creation, and these cases are
        # dominated by short-lived bash/jq/argc/grep processes. More workers
        # only add contention, so the logical-CPU count overstates the useful
        # parallelism; two workers is the measured sweet spot.
        jobs=2
        ((jobs > cpus)) && jobs="$cpus"
    else
        jobs="$cpus"
        ((jobs > 16)) && jobs=16
    fi
fi
[[ "$jobs" =~ ^[1-9][0-9]*$ ]] || { echo "invalid JOBS: $jobs" >&2; exit 2; }
[[ "${VERBOSE:-0}" == "1" ]] && jobs=1

RESULTS_DIR="$(mktemp -d)"
worker_pid=""

# Clean up on every exit path. The parallel scheduler runs xargs in its own
# process group (see below), so one signal reaches every worker and grandchild;
# without this an interrupted run leaves case scripts churning in the
# background and the next run looks far slower than it is.
cleanup() {
    local status=$? i
    trap - EXIT
    if [[ -n "$worker_pid" ]]; then
        kill -TERM -- "-$worker_pid" 2>/dev/null ||
            kill -TERM "$worker_pid" 2>/dev/null || true
        for i in 1 2 3 4 5 6 7 8 9 10; do
            kill -0 -- "-$worker_pid" 2>/dev/null || break
            sleep 0.1
        done
        kill -KILL -- "-$worker_pid" 2>/dev/null ||
            kill -KILL "$worker_pid" 2>/dev/null || true
        wait "$worker_pid" 2>/dev/null || true
        worker_pid=""
    fi
    rm -rf "$RESULTS_DIR"
    exit "$status"
}
trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
trap 'exit 129' HUP
export ARGC_SKILLS_RESULTS_DIR="$RESULTS_DIR"

exec 3>&1
passes=0
failures=0
failed_labels=()

shopt -s nullglob
cases=("$TEST_DIR"/cases/*.sh)
shopt -u nullglob
[[ "${#cases[@]}" -gt 0 ]] || { echo "no case files under $TEST_DIR/cases" >&2; exit 1; }
((jobs > ${#cases[@]})) && jobs="${#cases[@]}"

# record_result <case-file> <rc>: aggregate one case's .result file. Called
# after the case's output has been replayed, so report order stays stable.
record_result() {
    local case_file="$1" rc="$2" case_name result file_passes file_failures row
    case_name="${case_file##*/}"
    result="$RESULTS_DIR/$case_name.result"
    if [[ ! -f "$result" ]]; then
        failures=$((failures + 1))
        failed_labels+=("case $case_name aborted (rc=$rc)")
        printf 'FAIL case %s aborted (rc=%d)\n' "$case_name" "$rc" >&3
        return 0
    fi
    # One builtin read instead of two sed runs plus a process substitution: the
    # result file is tiny and this runs twice per case.
    local -a rows=()
    mapfile -t rows <"$result" || true
    file_passes=0
    file_failures=0
    for row in "${rows[@]}"; do
        case "$row" in
            passes=*) file_passes="${row#passes=}" ;;
            failures=*) file_failures="${row#failures=}" ;;
            fail=*) failed_labels+=("${row#fail=} ($case_name)") ;;
        esac
    done
    passes=$((passes + ${file_passes:-0}))
    failures=$((failures + ${file_failures:-0}))
}

# Worker body used by the parallel scheduler: write the case's combined output
# and exit status next to the .result file. The body is passed inline to
# `bash -c` rather than an exported function so it works on Git Bash too, where
# exported bash functions cross the environment poorly.
run_case_file_body='
    case_file="$1"
    case_name="${case_file##*/}"
    rc=0
    bash "$case_file" >"$RESULTS_DIR/$case_name.log" 2>&1 || rc=$?
    printf "%s\n" "$rc" >"$RESULTS_DIR/$case_name.rc"
'

if [[ "$jobs" -le 1 ]]; then
    # Serial mode keeps the old behavior: output streams as the case runs, which
    # is what VERBOSE=1 needs. The case still runs under job control so it owns
    # a process group and the cleanup trap can stop it (and its descendants) on
    # a signal that only reaches this script.
    for case_file in "${cases[@]}"; do
        set -m
        bash "$case_file" &
        worker_pid=$!
        set +m
        rc=0
        wait "$worker_pid" || rc=$?
        worker_pid=""
        record_result "$case_file" "$rc"
    done
else
    export RESULTS_DIR
    # Feed xargs from a file instead of a pipe: with job control enabled the
    # background command becomes its own process group whose ID is $!, so the
    # EXIT/INT/TERM trap can signal every worker (and everything it forked) at
    # once. A pipeline would put xargs and the producer in different groups.
    case_list="$RESULTS_DIR/cases.list"
    printf '%s\0' "${cases[@]}" >"$case_list"
    set -m
    xargs -0 -P "$jobs" -n 1 bash -c "$run_case_file_body" _ <"$case_list" &
    worker_pid=$!
    set +m
    # A case that fails makes xargs exit 123; the per-case .rc file is the
    # source of truth, so ignore xargs' status.
    wait "$worker_pid" || true
    worker_pid=""
    for case_file in "${cases[@]}"; do
        case_name="${case_file##*/}"
        rc=0
        case_rc_file="$RESULTS_DIR/$case_name.rc"
        if [[ -f "$case_rc_file" ]]; then
            read -r rc <"$case_rc_file" || true
        fi
        if [[ -f "$RESULTS_DIR/$case_name.log" ]]; then
            while IFS= read -r line; do
                printf '%s\n' "$line" >&3
            done <"$RESULTS_DIR/$case_name.log"
        fi
        record_result "$case_file" "$rc"
    done
fi

if [[ "$failures" -gt 0 ]]; then
    printf '\nfailed checks:\n' >&3
    printf '  - %s\n' "${failed_labels[@]}" >&3
fi
printf '\n%d checks passed, %d failed\n' "$passes" "$failures" >&3
[[ "$failures" -eq 0 ]]
