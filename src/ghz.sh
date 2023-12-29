_patch_help() {
    $@ --help 2>&1 | \
    sed \
        -e 's/= / value/' \
        -e 's/="\(\w\+\)"/ \1/' \

}

_patch_table() {
    _patch_table_detect_value_type
}
