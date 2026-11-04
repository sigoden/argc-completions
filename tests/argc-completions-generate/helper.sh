#!/usr/bin/env bash
# Shared harness for tests/argc-completions-generate/cases/*.sh.
#
# These tests cover the skill's own documents, scripts and contracts, not the
# completions the skill generates (see run.sh for the full scope note).
#
# Layers:
#   run.sh      orchestration: lists the case files, aggregates counts, exit code
#   helper.sh   this file: paths, bootstrap, reporting, assertions, shared fixtures
#   cases/*.sh  one file per skill document (reference-*, agent-*, skill-*) or per skill
#               script shard (script-<script>-<shard>.sh; a single file is script-<script>.sh)
#
# A case file is a standalone script and runs on its own:
#
#   bash tests/argc-completions-generate/cases/script-assemble-basic.sh
#
#   set -euo pipefail
#   . "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
#   helper_init
#   check "label" true
#   helper_finish
#
# The report stream is fd 3 so call sites may still redirect the stdout of the
# command under test. Environment switches:
#   VERBOSE=1               stream each command's output as it runs
#   QUIET=1                 print only failures and the summary
#   ARGC_SKILLS_RESULTS_DIR set by run.sh; each case writes a .result file there
#
# Performance contract: the helpers below run once per check (hundreds of times
# per suite run), so a helper that is reached from check/quiet/assert_* must not
# create a process. On Windows/MSYS every process creation is serialized, so a
# stray fork per assertion dominates the run time. PATH and OSTYPE are assumed
# stable for the lifetime of a case file; the caches below depend on that.

HELPER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEST_DIR="$HELPER_DIR"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
SKILL_DIR="$ROOT_DIR/skills/argc-completions-generate"
SCRIPTS="$SKILL_DIR/scripts"
FIXTURES="$TEST_DIR/fixtures"

# has_command <name>: command -v with a per-process cache. Presence probes are
# stable because PATH does not change inside a case file.
declare -A HELPER_CMDS=()
has_command() {
    local name="$1"
    if [[ -n "${HELPER_CMDS[$name]+set}" ]]; then
        [[ "${HELPER_CMDS[$name]}" == 1 ]]
        return
    fi
    if command -v "$name" >/dev/null 2>&1; then
        HELPER_CMDS[$name]=1
        return 0
    fi
    HELPER_CMDS[$name]=0
    return 1
}

# A non-MSYS host never converts paths; decide that once, when this file is
# sourced, instead of on every native_path call.
HELPER_MSYS=0
if [[ "${OSTYPE:-}" == msys* || "${OSTYPE:-}" == cygwin* ]] && has_command cygpath; then
    HELPER_MSYS=1
fi

# HELPER_NATIVE_ROOTS holds "<posix>|<native>" prefixes for the directories test
# paths live under (built by helper_build_native_roots). The table must live in
# globals: `$(native_path ...)` is a subshell, so a cache written inside the
# function is discarded, while a prefix built in the parent is inherited.
HELPER_NATIVE_ROOTS=()
declare -A HELPER_NATIVE_CACHE=()

# helper_build_native_roots: convert each test root once so native_path stays
# fork-free for the rest of the case file.
helper_build_native_roots() {
    HELPER_NATIVE_ROOTS=()
    HELPER_NATIVE_CACHE=()
    [[ "$HELPER_MSYS" == 1 ]] || return 0
    local dir
    for dir in "${TMP_DIR:-}" "$ROOT_DIR"; do
        [[ -n "$dir" && "$dir" == /* ]] || continue
        HELPER_NATIVE_ROOTS+=("$dir|$(cygpath -m "$dir")")
    done
}

# Translate a POSIX file path to the form a native Windows binary can open.
# Git Bash runs jq/argc as .exe files, which cannot resolve /c/... or /tmp/...
# when MSYS path conversion is disabled. cygpath -m yields C:/..., which both
# native and MSYS tools accept and which avoids backslash escaping in shell
# code. Non-Windows hosts, relative paths, and Windows paths pass through.
# A path under a known root is rewritten from the prefix table (a pure string
# operation); anything else converts once through cygpath and is memoized.
native_path() {
    local path="$1" entry prefix converted
    if [[ "$HELPER_MSYS" != 1 || "$path" != /* ]]; then
        printf '%s\n' "$path"
        return 0
    fi
    for entry in "${HELPER_NATIVE_ROOTS[@]}"; do
        prefix="${entry%%|*}"
        if [[ "$path" == "$prefix" || "$path" == "$prefix"/* ]]; then
            printf '%s%s\n' "${entry#*|}" "${path#"$prefix"}"
            return 0
        fi
    done
    if [[ -n "${HELPER_NATIVE_CACHE[$path]+set}" ]]; then
        printf '%s\n' "${HELPER_NATIVE_CACHE[$path]}"
        return 0
    fi
    converted="$(cygpath -m "$path")"
    HELPER_NATIVE_CACHE[$path]="$converted"
    printf '%s\n' "$converted"
}

helper_require_bash5() {
    if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
        if [ -x "$ROOT_DIR/bin/bash" ] && [ "${ARGC_BASH_REEXEC:-0}" != "1" ]; then
            ARGC_BASH_REEXEC=1 exec "$ROOT_DIR/bin/bash" "$0" "$@"
        fi
        echo "bash >= 5 is required (run ./install.sh)" >&2
        exit 1
    fi
}

helper_init() {
    helper_require_bash5
    set -euo pipefail
    export PATH="$ROOT_DIR/bin:$PATH"
    export TEST_DIR ROOT_DIR SKILL_DIR SCRIPTS FIXTURES
    TMP_DIR="$(mktemp -d)"
    export TMP_DIR
    trap 'rm -rf "$TMP_DIR"' EXIT
    helper_build_native_roots
    exec 3>&1
    LOG_DIR="$TMP_DIR/logs"
    mkdir -p "$LOG_DIR"
    LOG_SEQ=0
    passes=0
    failures=0
    failed_labels=()
    has_command argc || { echo "argc is required (run ./install.sh)" >&2; exit 1; }
    has_command jq || { echo "jq is required (run ./install.sh)" >&2; exit 1; }
    has_command gawk || { echo "gawk is required (run ./install.sh)" >&2; exit 1; }
}

# helper_finish reports this case file's result. Under run.sh the counts go to
# a result file and the parent prints the single global summary; standalone the
# file prints its own summary. The exit status is non-zero when a check failed.
helper_finish() {
    if [[ -n "${ARGC_SKILLS_RESULTS_DIR:-}" ]]; then
        local result="$ARGC_SKILLS_RESULTS_DIR/${0##*/}.result" label
        {
            printf 'passes=%d\n' "$passes"
            printf 'failures=%d\n' "$failures"
            for label in "${failed_labels[@]}"; do
                printf 'fail=%s\n' "$label"
            done
        } >"$result"
    else
        if [[ "$failures" -gt 0 ]]; then
            printf '\nfailed checks:\n' >&3
            printf '  - %s\n' "${failed_labels[@]}" >&3
        fi
        printf '\n%d checks passed, %d failed\n' "$passes" "$failures" >&3
    fi
    [[ "$failures" -eq 0 ]]
}

# ---------------------------------------------------------------------------
# Reporting
#
# The scripts under test print progress and error detail while they work.
# Expected failures (invalid fragments, missing files, ...) print [warn]/[error]
# lines that are not part of a test conclusion, so every check runs with its
# output captured and only the log of a failing check is shown.
# ---------------------------------------------------------------------------

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

# new_log_var <varname>: fork-free path for the next log file. check/quiet run
# once per assertion, so `log="$(new_log)"` (a subshell each) was pure overhead.
new_log_var() {
    LOG_SEQ=$((LOG_SEQ + 1))
    printf -v "$1" '%s/%03d.log' "$LOG_DIR" "$LOG_SEQ"
}

new_log() {
    local path
    new_log_var path
    printf '%s\n' "$path"
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
    if run_quiet "$log" "$@"; then
        pass "$label"
    else
        fail "$label"
        show_captured "$log"
    fi
}

check() {
    local label="$1" log
    shift
    new_log_var log
    check_to "$log" "$label" "$@"
}

expect_failure() {
    local label="$1" log
    shift
    new_log_var log
    if run_quiet "$log" "$@"; then
        fail "$label (unexpected success)"
        show_captured "$log"
    else
        pass "$label"
    fi
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

# helper_file_text <varname> <file>: load a file into a variable with builtins
# only (mapfile and printf -v create no process). A missing or unreadable file
# yields an empty string, which is what the assertions relied on grep for.
helper_file_text() {
    local -a lines=()
    mapfile -t lines <"$2" || true
    printf -v "$1" '%s\n' "${lines[@]}"
}

# Fixed-string substring tests. grep -Fq was one fork per assertion (363 per
# suite run); a quoted needle keeps *, [, | and \ literal inside [[ == ]], so
# the semantics match grep -F.
assert_contains() {
    local label="$1" file="$2" needle="$3" haystack
    helper_file_text haystack "$file"
    if [[ "$haystack" == *"$needle"* ]]; then pass "$label"; else fail "$label (missing: $needle)"; fi
}
assert_not_contains() {
    local label="$1" file="$2" needle="$3" haystack
    helper_file_text haystack "$file"
    if [[ "$haystack" == *"$needle"* ]]; then fail "$label (unexpected: $needle)"; else pass "$label"; fi
}

# ---------------------------------------------------------------------------
# Shared fixtures
#
# Builders are idempotent and write under $TMP_DIR. Each builder exports the
# variables its callers use; a case file never relies on another case file.
# ---------------------------------------------------------------------------

# inject_root_items <dir> <items-json>: copy the no-choice fixture and append
# the given item objects to the root fragment.
inject_root_items() {
    local dir="$1" items="$2"
    mkdir -p "$dir"
    cp -R "$FIXTURES/fragments/no-choice/." "$dir/"
    jq --argjson items "$items" '.items += $items' "$(native_path "$dir/_root.json")" >"$dir/root.tmp"
    mv "$dir/root.tmp" "$dir/_root.json"
}

# Baseline script: assembled from the no-choice fixture, no CHOICES block.
build_new_script() {
    [[ -n "${NEW_SCRIPT:-}" && -f "$NEW_SCRIPT" ]] && return 0
    NEW_SCRIPT="$TMP_DIR/new.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo -c "$FIXTURES/fragments/no-choice" --stdout >"$NEW_SCRIPT"
}

# Baseline script with an empty CHOICES block for the formatter tests.
build_choices_base() {
    [[ -n "${CHOICES_BASE:-}" && -f "$CHOICES_BASE" ]] && return 0
    build_new_script
    CHOICES_BASE="$TMP_DIR/choice-base.sh"
    gawk '/^command eval / && !done {
            print "# >>> CHOICES"
            print "# <<< CHOICES"
            print ""
            done = 1
        }
        { print }' "$NEW_SCRIPT" >"$CHOICES_BASE"
}

# Script assembled from the with-choice fixture and the context fixture.
build_with_script() {
    [[ -n "${WITH_SCRIPT:-}" && -f "$WITH_SCRIPT" ]] && return 0
    WITH_SCRIPT="$TMP_DIR/demo-with.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" \
        --context "$FIXTURES/contexts/context.sh" --stdout >"$WITH_SCRIPT"
}

# Regeneration fixture: a fragment copy plus its assembled script (pre-mutation).
build_regen_fixture() {
    [[ -n "${REGEN_SCRIPT:-}" && -f "$REGEN_SCRIPT" ]] && return 0
    build_with_script
    REGEN_FRAGMENTS="$TMP_DIR/fragments-regen"
    mkdir -p "$REGEN_FRAGMENTS"
    cp -R "$FIXTURES/fragments/with-choice/." "$REGEN_FRAGMENTS/"
    REGEN_SCRIPT="$TMP_DIR/regen.sh"
    cp "$WITH_SCRIPT" "$REGEN_SCRIPT"
}

# Terminated option/arg fixture and its assembled script.
build_terminated_fixture() {
    [[ -n "${TERMINATED_SCRIPT:-}" && -f "$TERMINATED_SCRIPT" ]] && return 0
    TERMINATED_FRAGMENTS="$TMP_DIR/fragments-terminated"
    inject_root_items "$TERMINATED_FRAGMENTS" '[
  {"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command", "terminated": true},
  {"kind": "arg", "name": "args", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
    TERMINATED_SCRIPT="$TMP_DIR/terminated.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TERMINATED_FRAGMENTS" --stdout >"$TERMINATED_SCRIPT"
}

# Prefixed/delimiter option fixture and its assembled script.
build_prefix_fixture() {
    [[ -n "${PREFIX_SCRIPT:-}" && -f "$PREFIX_SCRIPT" ]] && return 0
    PREFIX_FRAGMENTS="$TMP_DIR/fragments-prefix-delimiter"
    inject_root_items "$PREFIX_FRAGMENTS" '[
  {"kind": "option", "names": ["-ao"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "s", "description": ""}, {"value": "t", "description": ""}, {"value": "u", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Overwrite mode"},
  {"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"},
  {"kind": "option", "names": ["-Q"], "notations": [], "choices": [{"value": "X", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefix without repeat"},
  {"kind": "option", "names": ["-Z"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": ",", "description": "Prefix with delimiter"},
  {"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
]'
    PREFIX_SCRIPT="$TMP_DIR/prefix-delimiter.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$PREFIX_FRAGMENTS" --stdout >"$PREFIX_SCRIPT"
}

# Described-choices fixture: generated STATIC functions, plus the HINTS/CHOICES
# context used by the regeneration and reserved-prefix tests.
build_static_fixture() {
    [[ -n "${STATIC_SCRIPT:-}" && -f "$STATIC_SCRIPT" ]] && return 0
    STATIC_FRAGMENTS="$TMP_DIR/fragments-choices-desc"
    inject_root_items "$STATIC_FRAGMENTS" '[
  {"kind": "option", "names": ["--sort"], "notations": ["<SORTER>"], "choices": [{"value": "none", "description": "Do not sort"}, {"value": "path", "description": "Sort by file path"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Sort results"},
  {"kind": "option", "names": ["--plain"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Plain mode"}
]'
    STATIC_SCRIPT="$TMP_DIR/choices-desc.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$STATIC_FRAGMENTS" --stdout >"$STATIC_SCRIPT"
    STATIC_CONTEXT="$TMP_DIR/static-context.sh"
    cat >"$STATIC_CONTEXT" <<'CTX'
# >>> SPEC
# <<< SPEC

# >>> HINTS
# keep this hint
# <<< HINTS

# >>> CHOICES
_choice_keep() { :; }
# <<< CHOICES
CTX
    STATIC_BEFORE="$TMP_DIR/static-before.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$STATIC_FRAGMENTS" \
        --context "$STATIC_CONTEXT" --stdout >"$STATIC_BEFORE"
}

# Dynamic workflow fixture: a choice function in CHOICES bound through
# set-choice-fns.sh, then re-assembled.
build_dynamic_fixture() {
    [[ -n "${DYNAMIC_SCRIPT:-}" && -f "$DYNAMIC_SCRIPT" ]] && return 0
    DYNAMIC_FRAGMENTS="$TMP_DIR/fragments-dynamic"
    mkdir -p "$DYNAMIC_FRAGMENTS"
    cp -R "$FIXTURES/fragments/no-choice/." "$DYNAMIC_FRAGMENTS/"
    DYNAMIC_SCRIPT="$TMP_DIR/dynamic.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$DYNAMIC_FRAGMENTS" --output "$DYNAMIC_SCRIPT" --force
    gawk '/^command eval / && !done {
            print "# >>> CHOICES"
            print "_choice_out() {"
            print "    echo out.txt"
            print "}"
            print "# <<< CHOICES"
            print ""
            done = 1
        }
        { print }' "$DYNAMIC_SCRIPT" >"$TMP_DIR/dynamic.tmp" && mv "$TMP_DIR/dynamic.tmp" "$DYNAMIC_SCRIPT"
    quiet bash "$SCRIPTS/set-choice-fns.sh" "$DYNAMIC_FRAGMENTS/_root.json" '--output[`_choice_out`]' >/dev/null
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$DYNAMIC_FRAGMENTS" --output "$DYNAMIC_SCRIPT" --force
}

# Timeout fixtures: commands that stop themselves, ignore SIGTERM, or leave a
# descendant behind. The two script-lib-timeout shards share them so the suite
# can overlap their multi-second kill-after waits.
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

# helper_timeout_guard: resolve the outer hang guard once per process. Probing
# twice per call plus a --version run was the last fork left in this helper.
HELPER_TIMEOUT_GUARD=()
HELPER_TIMEOUT_GUARD_READY=0
helper_timeout_guard() {
    if [[ "$HELPER_TIMEOUT_GUARD_READY" == 1 ]]; then
        return 0
    fi
    HELPER_TIMEOUT_GUARD_READY=1
    # A Windows `timeout.exe` is a delay command, not GNU timeout: probe the
    # implementation before using it as the outer hang guard. gtimeout is the
    # brew coreutils name on macOS.
    if has_command timeout && timeout --version >/dev/null 2>&1; then
        HELPER_TIMEOUT_GUARD=(timeout 30)
    elif has_command gtimeout && gtimeout --version >/dev/null 2>&1; then
        HELPER_TIMEOUT_GUARD=(gtimeout 30)
    fi
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
    # command is resolved once per process (see helper_timeout_guard).
    helper_timeout_guard
    if [[ "$minimal_path" == 1 ]]; then
        "${HELPER_TIMEOUT_GUARD[@]}" env PATH="$TMP_DIR/lonely-bin" "$BASH" -c \
            'source "$1"; run_with_timeout "$2" - 1 "$3" "$4"' _ \
            "$SCRIPTS/lib.sh" "$TMP_DIR/${script}-out.txt" "$TMP_DIR/bin/$script" "$pid_file" \
            >/dev/null 2>&1 || rc=$?
    else
        "${HELPER_TIMEOUT_GUARD[@]}" bash -c 'source "$1"; run_with_timeout "$2" - 1 "$3" "$4"' _ \
            "$SCRIPTS/lib.sh" "$TMP_DIR/${script}-out.txt" "$TMP_DIR/bin/$script" "$pid_file" \
            >/dev/null 2>&1 || rc=$?
    fi
    check "$label returns" test "$((SECONDS - start))" -lt 10
    check "$label fails" test "$rc" -ne 0
    check "$label leaves no process behind" \
        bash -c 'test -s "$1" && ! kill -0 "$(cat "$1")" 2>/dev/null' _ "$pid_file"
}
