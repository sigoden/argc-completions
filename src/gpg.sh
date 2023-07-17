_patch_help() { 
    $@ --help | sed '/Examples:/,$ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--local-user;[`_module_os_user`]' \
        '--recipient;[`_module_os_user`]' \
        '--tofu-policy;[auto|good|unknown|bad|ask]' \
    | \
    _patch_table_edit_arguments ';;' 'FILES...'
}
