_patch_help() { 
    $@ --help | sed 's/-h, --help/    --help/'
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--group;[`_module_os_group`]' \
        '--user;[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'files...'
}
