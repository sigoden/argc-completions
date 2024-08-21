_patch_table() {
    _patch_table_edit_options \
        '--setgid;[`_module_os_gid`]' \
        '--setuid;[`_module_os_uid`]' \
        '--target;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'program;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}
