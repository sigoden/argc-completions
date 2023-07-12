_patch_table() { 
    _patch_table_edit_arguments ';;' 'cmd;[`_choice_command`]'
}

_choice_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}