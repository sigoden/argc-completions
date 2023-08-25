#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c                              Return PIDs with the same root directory
# @option -d <sep>                      Use the provided character as output separator
# @flag -h                              Display this help text
# @flag -n                              Avoid using stat system function on network shares
# @option -o[`_module_os_pid`] <pid>    Omit results with a given PID
# @flag -q                              Quiet mode.
# @flag -s                              Only return one PID
# @flag -x                              Return PIDs of shells running scripts with a matching name
# @flag -z                              List zombie and I/O waiting processes.
# @arg program-name![`_module_os_command`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"