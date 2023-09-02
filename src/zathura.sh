_patch_table() {
    _patch_table_edit_options \
        '--synctex-pid;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments ';;' files...
}
