#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -N                        for SCHED_NORMAL
# @flag -F                        for SCHED_FIFO  only as root
# @flag -R                        for SCHED_RR  only as root
# @flag -B                        for SCHED_BATCH
# @flag -I                        for SCHED_ISO
# @flag -D                        for SCHED_IDLEPRIO
# @option -M <POLICY>             for manual mode; raw number for POLICY
# @option -p <STATIC_PRIORITY>    usually 1-99; only for FIFO or RR higher numbers means higher priority
# @option -n <NICE_LEVEL>         set niceness to NICE_LEVEL
# @option -a <AFFINITY_MASK>      set CPU-affinity to bitmask or list
# @option -e~[`_module_os_exec`] <COMMAND> <ARGS>  start COMMAND with specified policy/priority
# @flag -r                        display priority min/max for each policy
# @flag -v                        be verbose
# @arg pids*[`_module_os_pid`]

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

_module_os_exec() {
    if [[ -n "$argc__last_flag_option" ]]; then
        option_var="argc_${argc__last_flag_option//-/_}[@]"
        argc__positionals=( "${!option_var}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
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