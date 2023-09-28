_patch_help() {
    $@ --help 2>&1 | \
    sed \
        -e '/^\s*-/ s/:\([A-Z-]\+\)/- \1/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '-only-testing' \
        '-skip-testing' \
    | \
    _patch_table_edit_arguments ';;'
}
