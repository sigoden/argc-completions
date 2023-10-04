_patch_help() {
    $@ --help 2>&1 | \
    sed \
        -e '/^\s*-/ s/\(-\S\+\) #/\1 <value>/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '-allow-leading-dots' \
        '-map' \
        '-publisher' \
    | \
    _patch_table_edit_options \
        '-iso-level;[1|2|3]' \

}
