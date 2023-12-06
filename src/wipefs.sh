_patch_table() {
    _patch_table_edit_options \
        '--lock;[yes|no|nonbloc]' \
        '--output;[`_choice_column`]' \
    | \
    _patch_table_edit_arguments ';;' 'device-path'
}

_choice_column() {
    wipefs --help | sed -n '/^Available output columns:/,/^\s*$/ {//d; s/^\s*\(\S\+\) \(.*\)/\1\t\2/p}'
}
