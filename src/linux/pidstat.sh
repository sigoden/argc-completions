_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--desc;[0|1|2]' \
        '-C;[`_module_os_command`]' \
        '-T(<value>);[TASK|CHILD|ALL]' \
        '-U;[`_module_os_user`]' \
        '-e;~[`_module_os_exec`]' \
        '-p(<value>);[`_choice_pid`]' \
    | \
    _patch_table_edit_arguments ';;' 'interval' 'count'
}

_choice_pid() {
    print '%s\n' SELF ALL
    _module_os_pid
}
