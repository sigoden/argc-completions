_patch_table() { 
    _patch_table_edit_options \
        '--clear;[clear|reset]' \
        '--on-busy-update;[queue|do-nothing|restart|signal]' \
        '--signal;[`_module_os_signal`]' \
        '--stop-signal;[`_module_os_signal`]' \
        '--shell;[`_module_os_shell`]' \
        '--fs-events;[access|create|remove|rename|modify|metadata]' \
        '--emit-events-to;[environment|stdin|file|json-stdin|json-file|none]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_choice_args`]' \

}

_choice_args() {
    _argc_util_comp_subcommand 0
}