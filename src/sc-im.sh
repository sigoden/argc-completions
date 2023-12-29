_patch_table() {
    _patch_table_edit_options \
        '--newline_action;[j|l]' \
        '--txtdelim;[`_choice_txtdelim`]' \
    | \
    _patch_table_edit_arguments ';;' file
}

_choice_txtdelim() {
    echo ','
    echo ';'
    echo '\t'
    echo '|'
}
