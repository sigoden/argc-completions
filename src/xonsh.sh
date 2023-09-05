_patch_help() {
    $@ --help | sed 's/\[RC ...\]/        /'
}

_patch_table() {
    _patch_table_edit_options \
        '--rc;*,[`_choice_file`]' \
        '--shell-type;[`_choice_shell_type`]' \
        '-c;[`_module_os_command`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}

_choice_file() {
    _argc_util_comp_path
}

_choice_shell_type() {
    printf "%s\n" b best d dumb ptk ptk1 ptk2 prompt-toolkit prompt_toolkit prompt-toolkit1 prompt-toolkit2 prompt-toolkit3 prompt_toolkit3 ptk3 rand random rl readline
}
