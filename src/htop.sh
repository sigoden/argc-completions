_patch_table() { 
    _patch_table_edit_options \
        '--pid;*,[`_module_os_pid`]' \
        '--sort-key;[`_choice_sort_key`]' \
        '--user;[`_module_os_user`]' \

}

_choice_sort_key() {
    htop --sort-key=help
}
