_patch_help() {
    $@ --help | sed 's/ fn / file /'
}

_patch_table() {
    _patch_table_edit_options \
        '-covermode;[set|count]' \

}
