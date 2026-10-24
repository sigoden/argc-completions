#!/usr/bin/env bash
# Compare two help/man text files after canonicalization.
#
# Exit codes:
#   0  identical after canonicalization
#   1  different
#   2  usage or missing input

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd gawk "run $REPO_ROOT/install.sh or install gawk"

if [[ $# -ne 2 ]]; then
    echo "Usage: compare-help.sh <old-help.txt> <new-help.txt>" >&2
    exit 2
fi

old_file="$1"
new_file="$2"

if [[ ! -f "$old_file" || ! -f "$new_file" ]]; then
    log_error "missing help file: $old_file or $new_file"
    exit 2
fi

if help_files_equal "$old_file" "$new_file"; then
    echo same
    exit 0
else
    echo different
    exit 1
fi
