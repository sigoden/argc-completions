_patch_table() {
    _patch_table_edit_options \
        '--advertise;*,[`_choice_media`]' \
        '--force;[`_choice_media`]' \
    | \
    _patch_table_edit_arguments 'interface;[`_module_os_network_interface`]'
}

_choice_media() {
    printf "%s\n" 100baseT4 100baseTx-FD 100baseTx-HD 10baseT-FD and 10baseT-HD
}
