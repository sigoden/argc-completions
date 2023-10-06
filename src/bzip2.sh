_patch_help() {
    $@ --help 2>&1 | sed 's/-1 \.\. -9/-1, -9/'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments ';;'  'file:.tbz,.tbz2,.bz,bz2'
}
