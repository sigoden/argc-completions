_patch_table() { 
    _patch_table_edit_options '--shell;[`_module_os_shell`]' | \
    _patch_table_edit_arguments 'login;[`_module_os_user`]'
}
