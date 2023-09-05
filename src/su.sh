_patch_help() { 
    $@ --help | sed 's/-, -l/-l/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--command;[`_module_os_command`]' \
        '--group;[`_module_os_group`]' \
        '--session-command;[`_module_os_command`]' \
        '--shell;[`_module_os_shell`]' \
        '--supp-group;[`_module_os_group`]' \
    | \
    _patch_table_edit_arguments ';;' 'user;[`_module_os_user`]' 'args...'
}
