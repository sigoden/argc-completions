_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--disable_tables;*,[`_choice_table`]' \
        '--enable_tables;*,[`_choice_table`]' \

}

_choice_table() {
    osqueryi --L | sed -n 's/^\s*=> \(\S\+\).*/\1/p'
}
