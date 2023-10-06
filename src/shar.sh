_patch_help() {
    _patch_help_run_man $@ | sed 's/ -v.*/ -v, --version {v|c|n}/'
}

_patch_table() {
    _patch_table_edit_options \
        '--compactor;[`_module_os_command`]' \

}
