_patch_table() { 
    _patch_table_edit_options \
        '--port(<port>)' \
        '--interface[`_choice_interface`]' \
        '--socket-owner;[`_choice_socket_owner`]' \
        '--credential(<user:pass>)' \
        '--auth-header(<value>)' \
        '--uid;[`_module_os_user`]' \
        '--gid;[`_module_os_group`]' \
        '--signal;[`_module_os_signal`]' \
        '--cwd(<dir>)' \
        '--url-arg(<value>)' \
        '--client-option(<value...>)' \
        '--terminal-type(<value>)' \
        '--max-clients(<num>)' \
        '--index(<path>)' \
        '--base-path(<path>)' \
        '--ping-interval(<sec>)' \
        '--ssl-cert(<path>)' \
        '--ssl-key(<path>)' \
        '--ssl-ca(<path>)' \
        '--debug(<level>)' \

}

_choice_interface() {
    _argc_util_comp_path
    _module_os_network_interface
}

_choice_socket_owner() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform nospace
    else
        _module_os_group
    fi
}