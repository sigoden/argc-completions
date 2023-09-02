#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n --priority <num>             specify the nice value
# @option -p --pid[`_module_os_pid`]      interpret arguments as process ID (default)
# @option -g --pgrp <value>               interpret arguments as process group ID
# @option -u --user[`_module_os_user`]    interpret arguments as username or user ID
# @flag -h --help                         display this help
# @flag -V --version                      display version
# @arg priority!

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"