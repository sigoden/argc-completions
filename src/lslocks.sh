_patch_table() { 
    _patch_table_edit_options '--output;*,[`_choice_column`]' '--pid;[`_choice_pid`]'
}

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

_choice_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}