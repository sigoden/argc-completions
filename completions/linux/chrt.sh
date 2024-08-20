#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --batch                    set policy to SCHED_BATCH
# @flag -d --deadline                 set policy to SCHED_DEADLINE
# @flag -f --fifo                     set policy to SCHED_FIFO
# @flag -i --idle                     set policy to SCHED_IDLE
# @flag -o --other                    set policy to SCHED_OTHER
# @flag -r --rr                       set policy to SCHED_RR (default)
# @flag -R --reset-on-fork            set reset-on-fork flag
# @option -T --sched-runtime <ns>     runtime parameter for DEADLINE
# @option -P --sched-period <ns>      period parameter for DEADLINE
# @option -D --sched-deadline <ns>    deadline parameter for DEADLINE
# @flag -a --all-tasks                operate on all the tasks (threads) for a given pid
# @flag -m --max                      show min and max valid priorities
# @flag -p --pid                      operate on existing given pid
# @flag -v --verbose                  display status information
# @flag -h --help                     display this help
# @flag -V --version                  display version
# @arg args~[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ "$len" -lt 2 ]]; then
        if [[ -n "$argc_pid" ]]; then
            _module_os_pid
        else
            :;
        fi
    elif [[ "$len" -eq 2 ]]; then
        if [[ -n "$argc_pid" ]]; then
            _module_os_pid
        else
            _module_os_command
        fi
    else
        if [[ -n "$argc_pid" ]]; then
            :;
        else
            _argc_util_comp_subcommand 1
        fi
    fi
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