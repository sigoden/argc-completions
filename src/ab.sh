_patch_table() { 
    _patch_table_edit_options \
        '-H;[`_module_http_header`]' \
        '-T;[`_module_http_media_type`]' \
        '-m;[`_module_http_method`]' \
    | \
    _patch_table_edit_arguments ';;' 'url'

}
