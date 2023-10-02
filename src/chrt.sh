_patch_table() {
    _patch_table_edit_arguments ';;' 'args;~[`_choice_args`]'
}

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ "$len" -lt 2 ]]; then
        if [[ -n "$argc_pid" ]]; then
            _module_os_pid
        else
            :;
        fi
    elif [[ "$len" -eq 2 ]]; then
        if [[ -n "$argc_pid" ]]; then
            _module_os_pid
        else
            _module_os_command
        fi
    else
        if [[ -n "$argc_pid" ]]; then
            :;
        else
            _argc_util_comp_subcommand 1
        fi
    fi
}
