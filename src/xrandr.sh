_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_dedup_options \
        '--dpi' \
        '--rate' \
    | \
    _patch_table_edit_options \
        '--orientation;[normal|inverted|left|right]' \
        '--reflect;[normal|x|y|xy]' \
        '--rotate;[normal|left|right|inverted]' \

}
