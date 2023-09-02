_patch_table() {
    _patch_table_edit_options \
        '--method;[`_choice_method`]' \
    | \
    _patch_table_edit_arguments 'password' 'salt'

}

_choice_method() {
    mkpasswd -m help | tail -n +2  | sed 's/\s\+/\t/'
}
