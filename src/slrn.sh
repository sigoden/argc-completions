_patch_help() {
    $@ --help | sed 's/^\(-\S\)\[-\]\s*\[.*\]/\1     /'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts
}
