_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--diff(path...);;Create a diff tab for the given files or directories.' \

}
