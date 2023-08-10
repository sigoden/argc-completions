_patch_help() { 
    _patch_help_run_man $@
}

_patch_table() { 
    _patch_table_edit_options \
        '-u;[`_module_os_user`]' \
        '-C(<config-file>)' \
    | \
    _patch_table_edit_arguments \
        'command;[`_module_os_command`]' \
        'args;~[`_choice_args`]' \

}

_choice_args() {
    _argc_util_comp_subcommand 0
}