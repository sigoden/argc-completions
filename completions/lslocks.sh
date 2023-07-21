#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --bytes                            print SIZE in bytes rather than in human readable format
# @flag -J --json                             use JSON output format
# @flag -i --noinaccessible                   ignore locks without read permissions
# @flag -n --noheadings                       don't print headings
# @option -o --output*,[`_choice_column`] <list>  define which output columns to use
# @flag --output-all                          output all columns
# @option -p --pid[`_module_os_pid`] <pid>    display only locks held by this process
# @flag -r --raw                              use the raw output format
# @flag -u --notruncate                       don't truncate text in columns
# @flag -h --help                             display this help
# @flag -V --version                          display version

_choice_column() {
    cat <<-'EOF'
COMMAND	command of the process holding the lock
PID	PID of the process holding the lock
TYPE	kind of lock
SIZE	size of the lock
MODE	lock access mode
M	mandatory state of the lock: 0 (none), 1 (set)
START	relative byte offset of the lock
END	ending offset of the lock
PATH	path of the locked file
BLOCKER	PID of the process blocking the lock
EOF
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