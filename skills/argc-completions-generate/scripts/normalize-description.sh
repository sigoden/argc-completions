#!/usr/bin/env bash
# Normalize one raw help description for a fragment field.
#
# Usage: normalize-description.sh [--choice <value>]... < raw.txt
#
# Reads the raw text from stdin and prints one line. The rules live in
# scripts/description-rules.jq, shared with validate-fragment.jq (which is the
# final gate), so acceptance and production cannot drift:
#   1. flatten CR/LF/TAB runs into one space and trim;
#   2. strip backticks;
#   3. drop machine-local paths ($HOME/..., /home/<user>/..., /Users/<user>/...,
#      C:\Users\<user>\...) with the connector that joins them to the text;
#   4. drop each enumeration group ((...), [...], {...}) and a trailing colon
#      list whose values equal the --choice set (set match only);
#   5. keep the first sentence and drop its terminator.
#
# --choice is repeatable and takes the static choice values in the item's
# order. Empty output is valid: a description that is only a machine path
# becomes an empty string.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    sed -n '2,21p' "$0"
}

choices=()
while [[ $# -gt 0 ]]; do
    case "$1" in
    --choice)
        if [[ $# -lt 2 || "$2" == *$'\n'* ]]; then
            echo "normalize-description.sh: --choice needs one single-line value" >&2
            exit 2
        fi
        choices+=("$2")
        shift 2
        ;;
    -h | --help)
        usage
        exit 0
        ;;
    *)
        echo "normalize-description.sh: unknown argument: $1" >&2
        exit 2
        ;;
    esac
done

choices_json="$(jq -n --args '$ARGS.positional' -- "${choices[@]}")"

# -R -s reads the whole stdin as one string, -r prints the normalized line, and
# the shared rule set comes from description-rules.jq through jq_skill's -L.
jq_skill -R -s -r --argjson choices "$choices_json" '
include "description-rules";
normalize_description($ARGS.named.choices // [])
'
