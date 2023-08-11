_patch_help() { 
    $@ -h
}

_patch_table() { 
    _patch_table_edit_options \
        '-o;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments \
        'program-name;[`_module_os_command`]' \

}
