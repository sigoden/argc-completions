_patch_help() { 
    $@ --help | sed 's/\s\+\(<\S\+>\)/ \1/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--header;*[`_module_http_header`]' \
        '--script(<FILE>)' \
    
}
