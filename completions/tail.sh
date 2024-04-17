#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --bytes <[+]NUM>              output the last NUM bytes; or use -c +NUM to output starting with byte NUM of each file
# @option -f --follow:[name|descriptor]    output appended data as the file grows; an absent option argument means 'descriptor'
# @flag -F                                 same as --follow=name --retry
# @option -n --lines <[+]NUM>              output the last NUM lines, instead of the last 10; or use -n +NUM to output starting with line NUM
# @option --max-unchanged-stats <N>        with --follow=name, reopen a FILE which has not changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log files); with inotify, this option is rarely useful
# @option --pid[`_module_os_pid`]          with -f, terminate after process ID, PID dies
# @flag -q                                 never output headers giving file names
# @flag --quiet                            never output headers giving file names
# @flag --silent                           never output headers giving file names
# @flag --retry                            keep trying to open a file if it is inaccessible
# @option -s --sleep-interval <N>          with -f, sleep for approximately N seconds (default 1.0) between iterations; with inotify and --pid=P, check process P at least once every N seconds
# @flag -v --verbose                       always output headers giving file names
# @flag -z --zero-terminated               line delimiter is NUL, not newline
# @flag --help                             display this help and exit
# @flag --version                          output version information and exit
# @arg file*

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