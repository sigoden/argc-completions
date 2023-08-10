_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_module_os_group`]' \
        '--owner;[`_module_os_user`]' \
        '--strip-program(<FILE>)' \
    | \
    _patch_table_edit_arguments ';;' 'FILES...'
}
