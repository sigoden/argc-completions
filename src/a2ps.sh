_patch_help() {
    $@ --help 2>&1 | \
    sed \
        -e '/^\s*--list=defaults/ d' \
        -e '/^\s*-1, -2/ s/ -2, \.\.\.,//' \

}

_patch_table() {
    _patch_table_edit_options \
        '--file-align;[fill|rank|page|sheet|<num>]' \

}
