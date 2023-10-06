_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        '/^\s*-/ s/: /  /' \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-N;[`_module_os_network_interface`]' \
    | \
    _patch_table_edit_arguments ';;' 'delay' 'count'
}
