_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--device;[`_module_os_network_interface`]' \

}
