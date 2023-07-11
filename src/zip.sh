_patch_help() {
    $@ --help | sed 's/^  \(-\S\{1,2\} .*\) \(-\S\{1,2\} .*\)/  \1\n  \2/'
}

_patch_table() {
    _patch_table_edit_options '-n(<suffixes>)' ';;' '-b(<path>)' '-t(<mmddyyyy>)' | \
    _patch_table_edit_arguments ';;' '<file>...'
}