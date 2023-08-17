_patch_help() {
    if [[ $# -le 2 ]]; then
        $@ --help
    else
        :;
    fi
}

_patch_table() {
    _patch_table_detect_value_type
}
