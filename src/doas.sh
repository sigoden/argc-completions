_patch_help() { 
    _patch_help_run_man $@
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-C(<config-file>)' \
        '-u;[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}
