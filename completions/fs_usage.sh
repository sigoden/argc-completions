#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e                       exclude the specified list of pids from the sample and exclude fs_usage by default
# @flag -w                       force wider, detailed, output
# @option -f*[`_choice_mode`]    output is based on the mode provided mode = "network"  Show network-related events mode = "filesys"  Show filesystem-related events mode = "pathname" Show only pathname-related events mode = "exec"  Show only exec and spawn events mode = "diskio"  Show only disk I/O events mode = "cachehit" In addition, show cache hits
# @flag -b                       annotate disk I/O events with BootCache info (if available)
# @option -t <seconds>           specifies timeout in seconds (for use in automated tools)
# @option -R <file>              specifies a raw trace file to process
# @option -S <microseconds>      if -R is specified, selects a start point in microseconds
# @option -E <microseconds>      if -R is specified, selects an end point in microseconds
# @arg pid-or-pname[`_choice_pid_or_pname`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_mode() {
    cat <<-'EOF'
network	Show network-related events
filesys	Show filesystem-related events
pathname	Show only pathname-related events
exec	Show only exec and spawn events
diskio	Show only disk I/O events
cachehit	In addition, show cache hits
EOF
}

_choice_pid_or_pname() {
    _argc_util_parallel _module_os_pid ::: _module_os_process
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

_module_os_process() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $1 "\t" $2 }'
    else
        command ps axc -o pid,comm= | gawk '{print $2 "\t" $1}'
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"