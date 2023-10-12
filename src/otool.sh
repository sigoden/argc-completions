_patch_help() {
    $@ 2>&1 | \
    sed \
        -e 's/^\(\s*-\S\+\) \([^<]\+\)/\1  \2/' \
        -e '/^\s*-/ s/> \([^<]\+\)/>  \1/' \

}

_patch_table() {
    _patch_table_edit_options \
        '-s(<segname+>)' \

}
