_patch_table() { 
    if [[ "$*" == "volta uninstall" ]]; then
        _patch_table_edit_arguments 'tool;[`_choice_tool`]'

    elif [[ "$*" == "volta run" ]]; then
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'args;~[`_module_os_command_args`]' \

    else
        cat
    fi
}

_choice_tool() {
    volta list --format plain | gawk '{print $2}'
}
