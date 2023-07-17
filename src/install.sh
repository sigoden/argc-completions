_patch_table() { 
    _patch_table_edit_options \
        '--owner;[`_module_os_user`]' \
        '--group;[`_module_os_group`]' \
        '--strip-program(<FILE>)' \
    | \
    _patch_table_edit_arguments ';;' 'FILES...'
}
