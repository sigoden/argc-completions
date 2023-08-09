_patch_help() { 
    _patch_help_run_man $@
}

_patch_table() { 
    _patch_table_edit_options \
        '-C(<config-file>)' \
        '-u;[`_module_os_user`]' \

}