_patch_table() {
    _patch_table_edit_options \
        '--method;[`_choice_method`]' \

}

_choice_method() {
    mkpasswd -m help | tail -n +2  | sed 's/\s\+/\t/'
}
