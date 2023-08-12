_patch_table() { 
    _patch_table_edit_options \
        '--clear;[clear|reset]' \
        '--emit-events-to;[environment|stdin|file|json-stdin|json-file|none]' \
        '--fs-events;[access|create|remove|rename|modify|metadata]' \
        '--on-busy-update;[queue|do-nothing|restart|signal]' \
        '--shell;[`_module_os_shell`]' \
        '--signal;[`_module_os_signal`]' \
        '--stop-signal;[`_module_os_signal`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}
