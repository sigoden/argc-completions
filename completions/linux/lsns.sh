#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -J --json                              use JSON output format
# @flag -l --list                              use list format output
# @flag -n --noheadings                        don't print headings
# @option -o --output*,[`_choice_column`] <list>  define which output columns to use
# @flag --output-all                           output all columns
# @option -p --task[`_module_os_pid`] <pid>    print process namespaces
# @flag -r --raw                               use the raw output format
# @flag -u --notruncate                        don't truncate text in columns
# @flag -W --nowrap                            don't use multi-line representation
# @option -t --type[mnt|net|ipc|user|pid|uts|cgroup|time] <name>  namespace type
# @flag -h --help                              display this help
# @flag -V --version                           display version
# @arg namespace

_choice_column() {
    cat <<-'EOF'
NS	namespace identifier (inode number)
TYPE	kind of namespace
PATH	path to the namespace
NPROCS	number of processes in the namespace
PID	lowest PID in the namespace
PPID	PPID of the PID
COMMAND	command line of the PID
UID	UID of the PID
USER	username of the PID
NETNSID	namespace ID as used by network subsystem
NSFS	nsfs mountpoint (usually used network subsystem)
PNS	parent namespace identifier (inode number)
ONS	owner namespace identifier (inode number)
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