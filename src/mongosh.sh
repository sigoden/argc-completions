_patch_help() {
    $@ --help | sed '/^\s*-/ s/\[arg\]/string/'
}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--json;[canonical|relaxed]' \
        '--retryWrites;[true|false]' \

}
