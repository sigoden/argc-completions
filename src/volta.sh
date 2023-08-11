_patch_table() { 
    if [[ "$*" == "volta run" ]]; then
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'args;~[`_choice_args`]' \

    elif [[ "$*" == "volta uninstall" ]]; then
        _patch_table_edit_arguments 'tool;[`_choice_tool`]'

    else
        cat
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 0
}

_choice_tool() {
    volta list --format plain | gawk '{print $2}'
}
