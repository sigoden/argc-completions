_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_arguments \
        'program;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \
        
}
