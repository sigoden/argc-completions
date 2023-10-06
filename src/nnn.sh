_patch_help() {
    $@ --help 2>&1 | \
    sed \
        '/^\s*-/ s/-\(\S\) \(\S\+\)/-\1 \2  /'  \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts
}
