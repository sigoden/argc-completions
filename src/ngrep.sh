_patch_help() {
    _patch_help_run_man $@ | \
    sed '/^\s*-/ s/\(-\S\) \(\S\+\)/\1 \2 /'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-d;[`_module_os_network_interface`]' \

}
