_patch_table() { 
    _patch_table_edit_options \
        '--auth-header(<value>)' \
        '--base-path(<path>)' \
        '--client-option(<value...>)' \
        '--credential(<user:pass>)' \
        '--cwd(<dir>)' \
        '--debug(<level>)' \
        '--gid;[`_module_os_group`]' \
        '--index(<path>)' \
        '--interface;[`_choice_interface`]' \
        '--max-clients(<num>)' \
        '--ping-interval(<sec>)' \
        '--port(<port>)' \
        '--signal;[`_module_os_signal`]' \
        '--socket-owner;[`_choice_socket_owner`]' \
        '--ssl-ca(<path>)' \
        '--ssl-cert(<path>)' \
        '--ssl-key(<path>)' \
        '--terminal-type(<value>)' \
        '--uid;[`_module_os_user`]' \
        '--url-arg(<value>)' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

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
