_patch_help() { 
    $@ -h
}

_patch_table() { 
    _patch_table_edit_options \
        '-o;[`_module_os_pid`]'

}