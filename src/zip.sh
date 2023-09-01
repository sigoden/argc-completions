_patch_help() {
    $@ --help | _patch_help_split_2cols
}

_patch_table() {
    _patch_table_edit_options \
        '-n(<suffixes>)' \
        ';;' \
        '-b(<path>)' \
        '-t(<mmddyyyy>)' \
    | \
    _patch_table_edit_arguments ';;' '<file>...'
}
