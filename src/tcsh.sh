_patch_help() {
    $@ --help | \
    sed \
        -e 's/^-Dname\[=value\]/-D name[=value]/' \
        -e '/^-/ s/^\(\S\+\) \(\S\+\)/\1 [\2]/' \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts
}
