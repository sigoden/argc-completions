_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        's/-v, --verbose/--verbose/' \
    
}

_patch_table() {
    _patch_table_edit_arguments ';;'
}
