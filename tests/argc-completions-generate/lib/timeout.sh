#!/usr/bin/env bash
# Timeout fixtures for the run_with_timeout contract in scripts/lib.sh.
#
# Three grandchild shapes are exercised: a command that stops itself, one that
# ignores SIGTERM, and one that leaves a descendant behind. The wrapper must
# return, fail, and leave no process running in every case.

# build_timeout_fixtures: commands that stop themselves, ignore SIGTERM, or
# leave a descendant behind (see build_timeout_fixtures users below).
build_timeout_fixtures() {
    [[ -n "${TIMEOUT_FIXTURES_READY:-}" ]] && return 0
    TIMEOUT_FIXTURES_READY=1
    mkdir -p "$TMP_DIR/bin"
    cat >"$TMP_DIR/bin/stop-self" <<'STOP'
#!/usr/bin/env bash
printf '%s\n' "$$" >"$1"
kill -STOP $$
sleep 30
STOP
    cat >"$TMP_DIR/bin/ignore-term" <<'IGNORE'
#!/usr/bin/env bash
printf '%s\n' "$$" >"$1"
trap '' TERM
sleep 30
IGNORE
    cat >"$TMP_DIR/bin/spawn-child" <<'SPAWN'
#!/usr/bin/env bash
printf '%s\n' "$$" >"$1"
sleep 30 &
printf '%s\n' "$!" >"$1.descendant"
wait
SPAWN
    chmod +x "$TMP_DIR/bin/stop-self" "$TMP_DIR/bin/ignore-term" "$TMP_DIR/bin/spawn-child"

    # Exercise the wrapper with a PATH that hides timeout/gtimeout (macOS
    # without coreutils): the fallback must still escalate to SIGKILL. The
    # wrapper needs perl, and the fixtures start with `#!/usr/bin/env bash`, so
    # both stay reachable; only the timeout binaries are missing. Git Bash turns
    # `ln -s` into a copy by default, and a copied MSYS binary cannot find its
    # runtime DLLs, so use absolute-path wrappers instead of symlinks.
    mkdir -p "$TMP_DIR/lonely-bin"
    local tool tool_path
    for tool in bash dirname perl sleep; do
        tool_path="$(command -v "$tool")"
        printf '#!%s\nexec %q "$@"\n' "$BASH" "$tool_path" >"$TMP_DIR/lonely-bin/$tool"
        chmod +x "$TMP_DIR/lonely-bin/$tool"
    done
}

# timeout_guard: resolve the outer hang guard once per process. Probing twice
# per call plus a --version run was the last fork left in this helper.
TIMEOUT_GUARD=()
TIMEOUT_GUARD_READY=0
timeout_guard() {
    if [[ "$TIMEOUT_GUARD_READY" == 1 ]]; then
        return 0
    fi
    TIMEOUT_GUARD_READY=1
    # A Windows `timeout.exe` is a delay command, not GNU timeout: probe the
    # implementation before using it as the outer hang guard. gtimeout is the
    # brew coreutils name on macOS.
    if has_command timeout && timeout --version >/dev/null 2>&1; then
        TIMEOUT_GUARD=(timeout 30)
    elif has_command gtimeout && gtimeout --version >/dev/null 2>&1; then
        TIMEOUT_GUARD=(gtimeout 30)
    fi
}

# assert_pid_gone <label> <pid-file>: the fixture recorded its pid and that
# process is no longer running.
#
# Windows ends a process asynchronously: taskkill returns before the pid leaves
# the process table, so a single probe can race the cleanup. Poll for a short
# grace period; a process that really leaked (say, the fixture's 30s sleep) is
# still alive when the loop gives up. The passing path never forks.
assert_pid_gone() {
    local label="$1" pid_file="$2" pid="" i retries=20
    [[ -s "$pid_file" ]] && pid="$(<"$pid_file")"
    if [[ -z "$pid" ]]; then
        fail "$label (no pid recorded in ${pid_file##*/})"
        return 0
    fi
    for ((i = 0; i < retries; i++)); do
        if ! kill -0 "$pid" 2>/dev/null; then
            pass "$label"
            return 0
        fi
        sleep 0.05
    done
    fail "$label (process $pid still running)"
}

# assert_timeout_returns <label> <fixture> <minimal-path>: the wrapper must
# return, fail, and leave no process behind. <minimal-path>=1 hides
# timeout/gtimeout so the wrapper's own escalation path runs.
assert_timeout_returns() {
    local label="$1" script="$2" minimal_path="$3"
    # One pid file per run: the minimal-PATH run must not pass because the
    # previous run left a pid behind.
    local pid_file="$TMP_DIR/${script}-${minimal_path}-pid.txt" rc=0 start=$SECONDS
    rm -f "$pid_file"
    # An outer guard keeps a regression from hanging the suite; the guard
    # command is resolved once per process (see timeout_guard).
    timeout_guard
    if [[ "$minimal_path" == 1 ]]; then
        "${TIMEOUT_GUARD[@]}" env PATH="$TMP_DIR/lonely-bin" "$BASH" -c \
            'source "$1"; run_with_timeout "$2" - 1 "$3" "$4"' _ \
            "$SCRIPTS/lib.sh" "$TMP_DIR/${script}-out.txt" "$TMP_DIR/bin/$script" "$pid_file" \
            >/dev/null 2>&1 || rc=$?
    else
        "${TIMEOUT_GUARD[@]}" bash -c 'source "$1"; run_with_timeout "$2" - 1 "$3" "$4"' _ \
            "$SCRIPTS/lib.sh" "$TMP_DIR/${script}-out.txt" "$TMP_DIR/bin/$script" "$pid_file" \
            >/dev/null 2>&1 || rc=$?
    fi
    check "$label returns" test "$((SECONDS - start))" -lt 10
    check "$label fails" test "$rc" -ne 0
    assert_pid_gone "$label leaves no process behind" "$pid_file"
}
