_patch_table() { 
    _patch_table_edit_options \
        '--interpreter;[`_choice_interpreter`]' \
        '--pid;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments ';;' 'FILES...' | \
    _patch_table_edit_commands ';;'
}

_choice_interpreter() {
    cat <<-'EOF'
console	The traditional console or command-line interpreter.
mi	The newest GDB/MI interface (currently mi2).
mi2	The current GDB/MI interface.
mi1	The GDB/MI interface included in GDB 5.1, 5.2, and 5.3.
EOF
}
