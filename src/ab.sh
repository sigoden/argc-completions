_patch_table() { 
    _patch_table_edit_options \
        '-m;[`_module_http_method`]' \
        '-H;[`_module_http_header`]' \
        '-T;[`_module_http_media_type`]' \
    | \
    _patch_table_edit_arguments ';;' 'url'

}
