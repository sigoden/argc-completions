_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's|configuration URL/path|<configuration> <URL/path>|' \

}

_patch_table() {
    _patch_table_edit_options \
        '-I;[`_module_os_network_interface`]' \

}
