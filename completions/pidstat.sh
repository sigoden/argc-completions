#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C[`_module_os_command`] <comm>     Display only tasks whose command name includes the string comm.
# @flag -d                                    Report I/O statistics (kernels 2.6.20 and later only).
# @option --dec <0 | 1 | 2>                   Specify the number of decimal places to use (0 to 2, default value is 2).
# @option -e~[`_module_os_exec`] <program> <args>  Execute program with given arguments args and monitor it with pidstat.
# @option -G <process_name>                   Display only processes whose command name includes the string process_name.
# @flag -H                                    Display timestamp in seconds since the epoch.
# @flag -h                                    Display all activities horizontally on a single line, with no average statistics at the end of the report.
# @flag --human                               Print sizes in human readable format (e.g. 1.0k, 1.2M, etc.)  The units displayed with this option supersede any other default units (e.g.  kilobytes, sectors...) associated with the metrics.
# @flag -I                                    In an SMP environment, indicate that tasks CPU usage (as displayed by option -u) should be divided by the total number of processors.
# @flag -l                                    Display the process command name and all its arguments.
# @option -p[`_choice_pid`] <value>           Select tasks (processes) for which statistics are to be reported.
# @flag -R                                    Report realtime priority and scheduling policy information.
# @flag -r                                    Report page faults and memory utilization.
# @flag -s                                    Report stack utilization.
# @option -T[TASK|CHILD|ALL] <value>          This option specifies what has to be monitored by the pidstat command.
# @flag -t                                    Also display statistics for threads associated with selected tasks.
# @option -U[`_module_os_user`] <username>    Display the real user name of the tasks being monitored instead of the UID.
# @flag -u                                    Report CPU utilization.
# @flag -V                                    Print version number then exit.
# @flag -v                                    Report values of some kernel tables.
# @flag -w                                    Report task switching activity (kernels 2.6.23 and later only).
# @arg interval
# @arg count

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_pid() {
    print '%s\n' SELF ALL
    _module_os_pid
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

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
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

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"