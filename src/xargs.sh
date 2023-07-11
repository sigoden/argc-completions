_patch_table() { 
    _patch_table_edit_arguments ';;' 'CMD;[`_choice_cmd`]' 'ARGS;~[`_choice_args`]'
}

_choice_cmd() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 0
}