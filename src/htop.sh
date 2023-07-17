_patch_table() { 
    _patch_table_edit_options \
        '--pid;*,[`_module_os_pid`]' \
        '--user;[`_module_os_user`]' \
        '--sort-key;[`_choice_sort_key`]' \

}

_choice_sort_key() {
    htop --sort-key=help
}