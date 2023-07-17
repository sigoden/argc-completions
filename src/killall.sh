_patch_help() {
    $@ --help 2>&1 | sed 's/-\(\w\),--/-\1, --/'
}

_patch_table() {
    _patch_table_edit_options \
        '--ns;[`_module_os_pid`]' \
        '--signal;[`_module_os_signal`]' \
        '--user;[`_module_os_user`]' \

}
