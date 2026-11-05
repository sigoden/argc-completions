#!/usr/bin/env bash
# One case file, run by run.sh's parallel scheduler.
#
#   bash lib/run-case.sh <case-file>
#
# RESULTS_DIR comes from the environment (run.sh exports it). The combined
# output and the exit status land next to the .result file the case writes
# itself, and the parent replays them in a stable order. This lives in a file
# rather than an inline `bash -c` body because exported bash functions cross the
# environment poorly on Git Bash, while a script path does not.

set -uo pipefail

case_file="${1:?usage: run-case.sh <case-file>}"
case_name="${case_file##*/}"

rc=0
bash "$case_file" >"$RESULTS_DIR/$case_name.log" 2>&1 || rc=$?
printf '%s\n' "$rc" >"$RESULTS_DIR/$case_name.rc"
