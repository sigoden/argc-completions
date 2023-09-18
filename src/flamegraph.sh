_patch_table() {
    _patch_table_edit_options \
        '--pid;[`_module_os_pid`]' \
        '--cmd;[`_module_os_command`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}