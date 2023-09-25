_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '-H;[`_module_http_header`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'address' \
        '{list|describe}' \
        '[symbol]'

}
