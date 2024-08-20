_patch_table() { 
    _patch_table_edit_options \
        '--output;*,[`_choice_column`]' \
        '--pid;[`_module_os_pid`]' \

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
