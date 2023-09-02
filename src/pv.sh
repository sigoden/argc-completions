_patch_table() {
    _patch_table_edit_options \
        '--remote;[`_choice_pid`]' \

}

_choice_pid() {
    _module_os_pid | sed -n '/\tpv$/ p'
}
