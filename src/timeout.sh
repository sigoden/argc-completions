_patch_table() { 
    _patch_table_edit_arguments \
        'command;[`_module_os_command`]' \
        'arg;~[`_choice_args`]' \

}

_choice_args() {
    _argc_util_comp_subcommand 0
}