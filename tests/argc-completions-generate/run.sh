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
#   cases/script-*              one file per skill script or contract artifact
#   cases/skill-md.sh           SKILL.md checks
#   cases/skill-layout.sh       layout checks
#   cases/skill-cross-docs.sh   cross-document checks
#
# This file only runs every case file in name order and aggregates the results.
# A single case file is standalone for focused work:
#   bash tests/argc-completions-generate/cases/script-assemble.sh
#
# Environment:
#   VERBOSE=1  stream each command's output as it runs
#   QUIET=1    print only failures and the summary

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/helper.sh"
helper_require_bash5

RESULTS_DIR="$(mktemp -d)"
trap 'rm -rf "$RESULTS_DIR"' EXIT
export ARGC_SKILLS_RESULTS_DIR="$RESULTS_DIR"

exec 3>&1
passes=0
failures=0
failed_labels=()

shopt -s nullglob
cases=("$TEST_DIR"/cases/*.sh)
shopt -u nullglob
[[ "${#cases[@]}" -gt 0 ]] || { echo "no case files under $TEST_DIR/cases" >&2; exit 1; }

for case_file in "${cases[@]}"; do
    case_name="$(basename "$case_file")"
    rc=0
    bash "$case_file" || rc=$?
    result="$RESULTS_DIR/$case_name.result"
    if [[ ! -f "$result" ]]; then
        failures=$((failures + 1))
        failed_labels+=("case $case_name aborted (rc=$rc)")
        printf 'FAIL case %s aborted (rc=%d)\n' "$case_name" "$rc" >&3
        continue
    fi
    file_passes="$(sed -n 's/^passes=//p' "$result" | head -n 1)"
    file_failures="$(sed -n 's/^failures=//p' "$result" | head -n 1)"
    passes=$((passes + ${file_passes:-0}))
    failures=$((failures + ${file_failures:-0}))
    while IFS= read -r line; do
        failed_labels+=("${line#fail=} ($case_name)")
    done < <(sed -n 's/^fail=//p' "$result")
done

if [[ "$failures" -gt 0 ]]; then
    printf '\nfailed checks:\n' >&3
    printf '  - %s\n' "${failed_labels[@]}" >&3
fi
printf '\n%d checks passed, %d failed\n' "$passes" "$failures" >&3
[[ "$failures" -eq 0 ]]
