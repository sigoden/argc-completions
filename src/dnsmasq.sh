_patch_table() { 
    _patch_table_edit_options \
        '--dhcp-scriptuser;[`_choice_user`]' \
        '--user;[`_choice_user`]' \
        '--group;[`_choice_group`]' \
        '--except-interface;[`_choice_net_device`]' \
        '--interface;[`_choice_net_device`]' \

}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_choice_net_device() {
    ifconfig | gawk '/^[0-9a-zA-Z]/ { split($0, arr, ":"); print arr[1] }'
}