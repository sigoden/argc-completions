#!/usr/bin/env bash
# Reporting and check primitives.
#
# The scripts under test print progress and error detail while they work.
# Expected failures (invalid fragments, missing files, ...) print [warn]/[error]
# lines that are not part of a test conclusion, so every check runs with its
# output captured and only the log of a failing check is shown.
#
# Performance contract: the helpers below run once per check (hundreds of times
# per suite run), so nothing reached from check/quiet/assert_* may create a
# process unless the command under test itself does. Every log path is built
# with printf -v and every needle test reads the file with mapfile, so a check
# costs one fork for the command under test and nothing else.

# CHECK_LOG is the log of the most recent check, so a case can assert a second
# message from a run it already failed once (check_rejects + assert_contains).
# shellcheck disable=SC2034 # read by the case files
CHECK_LOG=""

# new_log_var <varname>: fork-free path for the next log file. check/quiet run
# once per assertion, so `log="$(new_log)"` (a subshell each) was pure overhead.
new_log_var() {
    LOG_SEQ=$((LOG_SEQ + 1))
    printf -v "$1" '%s/%03d.log' "$LOG_DIR" "$LOG_SEQ"
}

# file_text <varname> <file>: load a file into a variable with builtins only
# (mapfile and printf -v create no process). A missing or unreadable file
# yields an empty string, which is what the assertions relied on grep for.
file_text() {
    local -a lines=()
    mapfile -t lines <"$2" || true
    printf -v "$1" '%s\n' "${lines[@]}"
}

# file_has_line <file> <needle>: builtin substring test over the whole file.
file_has_line() {
    local text
    file_text text "$1"
    [[ "$text" == *"$2"* ]]
}

show_captured() {
    local log="$1" limit="${2:-40}" total
    [[ -s "$log" ]] || return 0
    total="$(wc -l <"$log")"
    printf '     --- captured output (%s line(s)) ---\n' "$total" >&3
    head -n "$limit" "$log" | sed 's/^/     | /' >&3
    if [[ "$total" -gt "$limit" ]]; then
        printf '     | ... %s more line(s); re-run with VERBOSE=1 for the full output\n' "$((total - limit))" >&3
    fi
}

pass() {
    passes=$((passes + 1))
    if [[ "${QUIET:-0}" != "1" ]]; then
        printf 'ok   %s\n' "$*" >&3
    fi
}

fail() {
    failures=$((failures + 1))
    failed_labels+=("$1")
    printf 'FAIL %s\n' "$*" >&3
}

# run_quiet <log> <cmd...>: capture stdout and stderr of a command.
run_quiet() {
    local log="$1"
    shift
    if [[ "${VERBOSE:-0}" == "1" ]]; then
        "$@" 2>&1 | tee "$log" >&3
        return "${PIPESTATUS[0]}"
    fi
    "$@" >"$log" 2>&1
}

# check_to <log> <label> <cmd...>: check a command that writes to a known log.
check_to() {
    local log="$1" label="$2"
    shift 2
    CHECK_LOG="$log"
    if run_quiet "$log" "$@"; then
        pass "$label"
    else
        fail "$label"
        show_captured "$log"
    fi
}

# check <label> <cmd...>: the command must succeed.
check() {
    local label="$1" log
    shift
    new_log_var log
    check_to "$log" "$label" "$@"
}

# expect_failure <label> <cmd...>: the command must fail.
expect_failure() {
    local label="$1" log
    shift
    new_log_var log
    CHECK_LOG="$log"
    if run_quiet "$log" "$@"; then
        fail "$label (unexpected success)"
        show_captured "$log"
    else
        pass "$label"
    fi
}

# check_rejects <label> <needle> <cmd...>: the command must fail and its
# combined output must contain <needle>. An empty <needle> only asserts the
# failure, so a guard needs no log read at all.
check_rejects() {
    local label="$1" needle="$2" log
    shift 2
    new_log_var log
    CHECK_LOG="$log"
    if run_quiet "$log" "$@"; then
        fail "$label (unexpected success)"
        show_captured "$log"
        return 0
    fi
    if [[ -n "$needle" ]] && ! file_has_line "$log" "$needle"; then
        fail "$label (missing message: $needle)"
        show_captured "$log"
        return 0
    fi
    pass "$label"
}

# check_output <label> <needle> <cmd...>: the command must succeed and its
# combined output must contain <needle>.
check_output() {
    local label="$1" needle="$2" log
    shift 2
    new_log_var log
    CHECK_LOG="$log"
    if ! run_quiet "$log" "$@"; then
        fail "$label"
        show_captured "$log"
        return 0
    fi
    if [[ -n "$needle" ]] && ! file_has_line "$log" "$needle"; then
        fail "$label (missing message: $needle)"
        show_captured "$log"
        return 0
    fi
    pass "$label"
}

# quiet <cmd...>: run a setup step that has no conclusion of its own. stdout
# still goes where the caller redirects it; stderr is held back unless the
# step fails.
quiet() {
    local log rc=0
    new_log_var log
    if [[ "${VERBOSE:-0}" == "1" ]]; then
        "$@"
        return
    fi
    "$@" 2>"$log" || rc=$?
    if [[ "$rc" -ne 0 ]]; then
        printf 'setup step failed (rc=%d)\n' "$rc" >&3
        show_captured "$log"
    fi
    return "$rc"
}
