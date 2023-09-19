_patch_table() {
    _patch_table_edit_arguments ';;' 'host_or_commands;~[`_choice_host_or_commands`]'
}

_choice_host_or_commands() {
    if [[ -n "$argc_cmd" ]]; then
        _module_os_exec
    fi
}
