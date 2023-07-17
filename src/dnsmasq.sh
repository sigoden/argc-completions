_patch_table() { 
    _patch_table_edit_options \
        '--dhcp-scriptuser;[`_module_os_user`]' \
        '--user;[`_module_os_user`]' \
        '--group;[`_module_os_group`]' \
        '--except-interface;[`_choice_net_device`]' \
        '--interface;[`_choice_net_device`]' \

}

_choice_net_device() {
    ifconfig | gawk '/^[0-9a-zA-Z]/ { split($0, arr, ":"); print arr[1] }'
}