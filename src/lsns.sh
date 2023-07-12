_patch_help() { 
    $@ --help | sed '/^Available output columns:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--output;*,[`_choice_column`]' \
        '--task;[`_choice_pid`]' \
        '--type;[mnt|net|ipc|user|pid|uts|cgroup|time]'
}

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

_choice_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}