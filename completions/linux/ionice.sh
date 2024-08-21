#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --class[`_choice_class`] <class>    name or number of scheduling class, 0: none, 1: realtime, 2: best-effort, 3: idle
# @option -n --classdata[`_choice_classdata`] <num>  priority (0..7) in the specified scheduling class, only for the realtime and best-effort classes
# @option -p --pid*[`_module_os_pid`] <pid>      act on these already running processes
# @option -P --pgid* <pgrp>                      act on already running processes in these groups
# @flag -t --ignore                              ignore failures
# @option -u --uid* <uid>                        act on already running processes owned by these users
# @flag -h --help                                display this help
# @flag -V --version                             display version
# @arg command[`_module_os_command`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_class() {
    cat <<-'EOF'
0	none
1	realtime
2	best-effort
3	idle
EOF
}

_choice_classdata() {
    echo -e "0\thigh priority"
    seq 1 6
    echo -e "7\thigh priority"
}

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