#!/usr/bin/env bash
# Verify every completion script under completions/ in parallel.
#
# Each script is checked with one verify-completion.sh run without fragment
# comparison. Pass --skip-compgen to skip compgen (argc verify:all passes it),
# and --with-cache to also compare a script with cache/compile/<root> when that
# directory exists. Exit status: 0 when every script passes, 1 otherwise.
#
# @describe Verify every completion script under completions/ in parallel
# @option -j --jobs <n>    Parallel workers (default: JOBS or min(CPUs, 16))
# @flag -c --with-cache    Compare against cache/compile/<root> when it exists
# @flag --skip-compgen     Do not run argc --argc-compgen
# @flag --no-strict        Do not treat warnings as failures
# @arg targets*            Roots or scripts to verify (default: every script)

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
ROOT_DIR="$(cd -P "$SCRIPT_DIR/.." && pwd -P)"
SKILL_SCRIPTS="$ROOT_DIR/skills/argc-completions-generate/scripts"
VERIFY="$SKILL_SCRIPTS/verify-completion.sh"

# shellcheck source=../skills/argc-completions-generate/scripts/lib.sh
source "$SKILL_SCRIPTS/lib.sh" # PATH, REPO_ROOT, bash>=5 gate, path helpers

files=()
declare -A seen_files=()

# Filled by main; the workers and report run in this process.
TEMP_DIR=""
log_dir=""
status_dir=""
start=0

# resolve_jobs: --jobs beats JOBS beats a CPU-derived default. The cap keeps
# short processes (argc/jq/grep) from thrashing; override with -j.
resolve_jobs() {
    local jobs="$1" cpus
    if [[ -z "$jobs" ]]; then
        cpus="$(getconf _NPROCESSORS_ONLN 2>/dev/null || true)"
        [[ "$cpus" =~ ^[1-9][0-9]*$ ]] || cpus=4
        if [[ "${OSTYPE:-}" == msys* || "${OSTYPE:-}" == cygwin* ]]; then
            # Git Bash/MSYS2 serializes process creation, so a high worker count
            # adds contention instead of throughput.
            jobs=4
            ((jobs > cpus)) && jobs="$cpus"
        else
            jobs="$cpus"
            ((jobs > 16)) && jobs=16
        fi
    fi
    [[ "$jobs" =~ ^[1-9][0-9]*$ ]] || die "invalid job count: $jobs"
    printf '%s\n' "$jobs"
}

add_file() {
    local file="$1"
    [[ -z "${seen_files[$file]:-}" ]] || return 0
    seen_files["$file"]=1
    files+=("$file")
}

# collect_files: no targets means every committed completion script; otherwise
# accept a path or a root name (platform directory first).
collect_files() {
    local target file absolute
    local -a targets=("$@") resolved=()

    if [[ ${#targets[@]} -eq 0 ]]; then
        while IFS= read -r file; do
            add_file "$file"
        done < <(find "$REPO_ROOT/completions" -type f -name '*.sh' | LC_ALL=C sort)
    else
        # A path is relative to the caller's directory, so absolutize before
        # changing into the repository root.
        for target in "${targets[@]}"; do
            if [[ -f "$target" ]]; then
                absolute="$(cd -P "$(dirname "$target")" && pwd -P)/$(basename "$target")"
                resolved+=("$absolute")
            else
                resolved+=("$target")
            fi
        done
        for target in "${resolved[@]}"; do
            if [[ -f "$target" ]]; then
                add_file "$target"
            elif [[ -f "$REPO_ROOT/$target" ]]; then
                add_file "$REPO_ROOT/$target"
            else
                file="$(resolve_completion_file "$target")" || die "completion script not found: $target"
                add_file "$file"
            fi
        done
    fi

    [[ ${#files[@]} -gt 0 ]] || die "no completion scripts found"
    mapfile -t files < <(printf '%s\n' "${files[@]}" | LC_ALL=C sort)
}

# run_one <index> <file> <cache-dir>: one isolated verify run. The status and
# log files are per-index, so workers never share a write target.
run_one() {
    local idx="$1" file="$2" cache_dir="$3"
    local log="$log_dir/$idx.log" status="$status_dir/$idx"
    local -a args=("$file")
    local rc=0

    [[ -z "$cache_dir" ]] || args+=(--cache-dir "$cache_dir")
    [[ "$skip_compgen" -eq 0 ]] || args+=(--skip-compgen)
    [[ "$strict" -eq 1 ]] || args+=(--no-strict)

    bash "$VERIFY" "${args[@]}" >"$log" 2>&1 || rc=$?
    printf '%s\n' "$rc" >"$status"
    return 0
}

progress() {
    [[ -t 2 ]] || return 0
    printf '\r[%s/%s] verified' "$1" "$2" >&2
}

report() {
    local total="$1" failed=0 i rc file rel elapsed
    elapsed=$((SECONDS - start))

    [[ ! -t 2 ]] || printf '\n' >&2
    for ((i = 0; i < total; i++)); do
        file="${files[$i]}"
        rel="${file#"$REPO_ROOT"/}"
        rc="$(cat "$status_dir/$i" 2>/dev/null || true)"
        if [[ "$rc" == "0" ]]; then
            printf 'Verify %s ✓\n' "$rel"
        else
            printf 'Verify %s ✗\n' "$rel"
            if [[ -f "$log_dir/$i.log" ]]; then
                grep -E '^(FAIL|WARN|NOTE|RESULT)' "$log_dir/$i.log" >&2 ||
                    cat "$log_dir/$i.log" >&2 || true
            fi
            failed=$((failed + 1))
        fi
    done

    if [[ "$failed" -gt 0 ]]; then
        printf 'RESULT: FAIL (%d/%d scripts failed, %ds)\n' "$failed" "$total" "$elapsed"
        exit 1
    fi
    printf 'RESULT: PASS (%d scripts, %ds)\n' "$total" "$elapsed"
}

main() {
    local total jobs cache_dir candidate root idx=0 running=0 finished=0
    local with_cache="${argc_with_cache:-0}"
    local skip_compgen="${argc_skip_compgen:-0}"
    local strict=1
    [[ "${argc_no_strict:-0}" -eq 0 ]] || strict=0

    collect_files "${argc_targets[@]}"
    jobs="$(resolve_jobs "${argc_jobs:-${JOBS:-}}")"

    TEMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/argc-batch-verify.XXXXXX")"
    log_dir="$TEMP_DIR/logs"
    status_dir="$TEMP_DIR/status"
    mkdir -p "$log_dir" "$status_dir"
    trap 'rm -rf "$TEMP_DIR"' EXIT

    cd "$REPO_ROOT"
    total="${#files[@]}"
    start=$SECONDS

    for file in "${files[@]}"; do
        cache_dir=""
        if [[ "$with_cache" -eq 1 ]]; then
            root="${file##*/}"
            root="${root%.sh}"
            candidate="$REPO_ROOT/cache/compile/$root"
            if [[ -d "$candidate" ]]; then
                cache_dir="$candidate"
            fi
        fi
        while ((running >= jobs)); do
            wait -n || true
            running=$((running - 1))
            finished=$((finished + 1))
            progress "$finished" "$total"
        done
        run_one "$idx" "$file" "$cache_dir" &
        idx=$((idx + 1))
        running=$((running + 1))
    done
    while ((running > 0)); do
        wait -n || true
        running=$((running - 1))
        finished=$((finished + 1))
        progress "$finished" "$total"
    done
    wait || true

    report "$total"
}

command eval "$(argc --argc-eval "$0" "$@")"
