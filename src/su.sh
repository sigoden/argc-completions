_patch_help() { 
    $@ --help | sed 's/-, -l/-l/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_module_os_group`]' \
        '--supp-group;[`_module_os_group`]' \
        '--shell;[`_module_os_shell`]' \
    | \
    _patch_table_edit_arguments ';;' 'user;[`_module_os_user`]' 'args...'
}
