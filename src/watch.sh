_patch_table() { 
    _patch_table_edit_arguments ';;' 'command;[`_choice_value`]'
}

_choice_value() {
    _argc_util_comp_file
    _choice_command
}

_choice_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}