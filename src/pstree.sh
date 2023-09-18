_patch_table() {
    _patch_table_edit_options \
        '--highlight-pid;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments 'pid-user;[`_choice_pid_user`]'

}

_choice_pid_user() {
    _module_os_pid
    _module_os_user
}
