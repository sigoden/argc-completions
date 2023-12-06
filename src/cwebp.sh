_patch_help() {
    $@ -longhelp | \
    sed \
        -e '/^\s*-/ s/ \.\+ /    /' \
        -e '/^\s*-/ s| / |, |' \

}

_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '-preset' \

}
