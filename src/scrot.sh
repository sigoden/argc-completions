_patch_help() {
    _patch_help_run_man $@ | \
    sed 's/\([A-Z]\+ | [A-Z]\+\)/<\1>/'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments ';;' 'file'
}
