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