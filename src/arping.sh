_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-I;[`_module_os_network_interface`]' \

}
