_patch_help() {
    $@ -help 2>&1
}

_patch_table() {
    _patch_table_edit_options \
        '-selection;[primary|secondary|clipboard|buffer-cut];selection to access' \

}
