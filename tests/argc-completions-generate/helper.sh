#!/usr/bin/env bash
# Shared harness for tests/skills/cases/*.sh.
#
# Layers:
#   run.sh      orchestration: lists the case files, aggregates counts, exit code
#   helper.sh   this file: paths, bootstrap, reporting, assertions, shared fixtures
#   cases/*.sh  one file per skill document (reference-*, agent-*, skill-*) or per skill script (script-*)
#
# A case file is a standalone script and runs on its own:
#
#   bash tests/skills/cases/script-assemble.sh
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

HELPER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEST_DIR="$HELPER_DIR"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
SKILL_DIR="$ROOT_DIR/skills/argc-completions-generate"
SCRIPTS="$SKILL_DIR/scripts"
FIXTURES="$TEST_DIR/fixtures"

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
    exec 3>&1
    LOG_DIR="$TMP_DIR/logs"
    mkdir -p "$LOG_DIR"
    LOG_SEQ=0
    passes=0
    failures=0
    failed_labels=()
    command -v argc >/dev/null || { echo "argc is required (run ./install.sh)" >&2; exit 1; }
    command -v jq >/dev/null || { echo "jq is required (run ./install.sh)" >&2; exit 1; }
    command -v gawk >/dev/null || { echo "gawk is required (run ./install.sh)" >&2; exit 1; }
}

# helper_finish reports this case file's result. Under run.sh the counts go to
# a result file and the parent prints the single global summary; standalone the
# file prints its own summary. The exit status is non-zero when a check failed.
helper_finish() {
    if [[ -n "${ARGC_SKILLS_RESULTS_DIR:-}" ]]; then
        local result="$ARGC_SKILLS_RESULTS_DIR/$(basename "$0").result" label
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

new_log() {
    LOG_SEQ=$((LOG_SEQ + 1))
    printf '%s/%03d.log\n' "$LOG_DIR" "$LOG_SEQ"
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
    log="$(new_log)"
    check_to "$log" "$label" "$@"
}

expect_failure() {
    local label="$1" log
    shift
    log="$(new_log)"
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
    log="$(new_log)"
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

assert_contains() {
    local label="$1" file="$2" needle="$3"
    if grep -Fq -- "$needle" "$file"; then pass "$label"; else fail "$label (missing: $needle)"; fi
}
assert_not_contains() {
    local label="$1" file="$2" needle="$3"
    if grep -Fq -- "$needle" "$file"; then fail "$label (unexpected: $needle)"; else pass "$label"; fi
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
    jq --argjson items "$items" '.items += $items' "$dir/_root.json" >"$dir/root.tmp"
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
