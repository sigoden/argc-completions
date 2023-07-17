_patch_help() { 
    cat <<-'EOF'
Options:
    -s, --signal     Signal to send
    -l, --list       List signal names
    -L, --table      List signal names and their #s
    -a, --all        Resolve PIDs from other users' too
    -p, --pid        Show resolved PID, don't send signal
    -q, --queue      Use sigqueue(2) rather than kill(2)
        --verbose    Print PIDs and signals sent
EOF
}

_patch_table() { 
    _patch_table_edit_options \
        '--list;[`_module_os_signal`]' \
        '--signal;[`_module_os_signal`]' \
    | \
    _patch_table_edit_arguments ';;' 'pidNames;*[`_choice_pid_proc`]'
}

_choice_pid_proc() {
    _argc_util_parallel _module_os_process ::: _module_os_pid
}
