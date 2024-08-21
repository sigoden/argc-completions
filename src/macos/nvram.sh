_patch_table() {
    _patch_table_edit_options \
        '-d;[`_choice_variable`]' \
    | \
    _patch_table_edit_arguments ';;' 'vars;*[`_choice_variable`]'

}

_choice_variable() {
    nvram -p
}
