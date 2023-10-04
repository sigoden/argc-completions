_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_dedup_options \
        '-src-specials' \
    | \
    _patch_table_edit_arguments ';;' 'files...'

}
