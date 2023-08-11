_patch_table() { 
    _patch_table_edit_options \
        '--dhcp-scriptuser;[`_module_os_user`]' \
        '--except-interface;[`_choice_net_device`]' \
        '--group;[`_module_os_group`]' \
        '--interface;[`_choice_net_device`]' \
        '--user;[`_module_os_user`]' \

}

_choice_net_device() {
    ifconfig | gawk '/^[0-9a-zA-Z]/ { split($0, arr, ":"); print arr[1] }'
}
