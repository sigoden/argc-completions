_patch_help() { 
    $@ --help | \
    sed \
        -e "s/\x1B\[[0-9;]*[a-zA-Z]//g" \
        -e '/^Flags:/, /^$/ s/ - /   /' \

}

_patch_table() { 
    _patch_table_detect_value_type | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}
