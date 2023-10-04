_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '--repl' \
        '-r' \
    | \
    _patch_table_edit_options \
        '--attach-pid;[`_module_os_pid`]' \
        '--one-line;[`_module_os_command_args`]' \
        '--one-line-before-file;[`_module_os_command_args`]' \
        '--one-line-on-crash;[`_module_os_command_args`]' \

}
