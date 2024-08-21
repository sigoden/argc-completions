_patch_table() {
    _patch_table_edit_options \
        '--class;[`_choice_class`]' \
        '--classdata;[`_choice_classdata`]' \
        '--pid;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments ';;' 'command;[`_module_os_command`]'

}

_choice_class() {
    cat <<-'EOF'
0	none
1	realtime
2	best-effort
3	idle
EOF
}

_choice_classdata() {
    echo -e "0\thigh priority"
    seq 1 6
    echo -e "7\thigh priority"
}
