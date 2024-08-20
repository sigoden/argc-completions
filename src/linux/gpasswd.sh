_patch_table() { 
    _patch_table_edit_options \
        '--add;[`_module_os_user`]' \
        '--administrators;*,[`_module_os_user`]' \
        '--delete;[`_module_os_user`]' \
        '--members;*,[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'group;[`_module_os_group`]'
    
}
