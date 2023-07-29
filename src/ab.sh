_patch_table() { 
    _patch_table_edit_arguments ';;' 'url' | \
    _patch_table_edit_options \
        '-T;[`_module_http_media_type`]' \
        '-H;[`_module_http_header`]' \
        '-m;[`_module_http_method`]' \

}