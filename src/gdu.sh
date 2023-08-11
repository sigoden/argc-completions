_patch_table() { 
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--ignore-dirs(<dir>);*,' \
        '--ignore-dirs-pattern;*,' \

}
