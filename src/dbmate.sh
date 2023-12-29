_patch_help() {
    $@ --help | sed 's/\[ --\S\+ [^]]\+\]//'
}

_patch_table() {
    _patch_table_detect_value_type
}
