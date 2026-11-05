#!/usr/bin/env bash
# Shared harness for tests/argc-completions-generate/cases/*.sh.
#
# These tests cover the skill's own documents, scripts and contracts, not the
# completions the skill generates (see run.sh for the full scope note).
#
# Layout:
#   run.sh         orchestration: lists the case files, aggregates counts, exit code
#   helper.sh      this file: the entry point every case sources, plus init/finish
#   lib/paths.sh   paths, host probes, bash>=5 gate, MSYS native_path
#   lib/report.sh  pass/fail, check/expect_failure/check_rejects, log capture
#   lib/assert.sh  file, JSON, TSV, block and document assertions
#   lib/fixtures.sh fragment fixtures, script wrappers, cached build_* helpers
#   lib/timeout.sh run_with_timeout fixtures and assertions
#   cases/*.sh     one file per skill document (reference-*, agent-*, skill-*) or
#                  per skill script shard (script-<script>-<shard>.sh; a single
#                  file is script-<script>.sh)
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
# Performance contract: the harness runs once per check (hundreds of times per
# suite run). On Windows/MSYS every process creation is serialized, so a helper
# reached from check/quiet/assert_* must not fork unless the command under test
# does; PATH, OSTYPE and the host type are stable for the lifetime of a case
# file, which is what the caches in lib/paths.sh rely on.

. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/lib/paths.sh"
. "$HELPER_DIR/lib/report.sh"
. "$HELPER_DIR/lib/assert.sh"
. "$HELPER_DIR/lib/fixtures.sh"
. "$HELPER_DIR/lib/timeout.sh"

# helper_init: the per-case bootstrap (paths exported, private TMP_DIR, fd 3 for
# the report stream, the tool probes).
helper_init() {
    require_bash5
    set -euo pipefail
    export PATH="$ROOT_DIR/bin:$PATH"
    export TEST_DIR ROOT_DIR SKILL_DIR SCRIPTS FIXTURES
    TMP_DIR="$(mktemp -d)"
    export TMP_DIR
    trap 'rm -rf "$TMP_DIR"' EXIT
    native_roots_build
    exec 3>&1
    LOG_DIR="$TMP_DIR/logs"
    mkdir -p "$LOG_DIR"
    # shellcheck disable=SC2034 # read by lib/report.sh
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
