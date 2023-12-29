_patch_help() {
    $@ --help | \
    sed \
        -e '/^Notes:/,/^[A-Z]/ {//!d;}' \
        -e '/^Options/,$ s/^    /        /' \

}

_patch_table() {
    _patch_table_edit_arguments ';;'
}
