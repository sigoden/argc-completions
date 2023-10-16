_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | sed '3 c\Commands:'
    else
        $1 --help | \
        sed -n "s/^  $2 /Usage: $1 $2 /p" | \
        sed 's/  \+.*//'
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'device-id-guid;[`_choice_device_id`]' \
            'remote-id;[`_choice_remote_id`]' \
    )"

    if [[ "$*" == "fwupdmgr" ]]; then
        echo "$table" | \
        _patch_table_add_metadata inherit-flag-options

    else
        echo "$table"
    fi
}

_choice_device_id() {
    fwupdmgr get-devices --json | \
    yq '.Devices[] | .DeviceId + "	" + .Name'
}

_choice_remote_id() {
    fwupdmgr get-remotes --json | \
    yq '.Remotes[] | .Id + "	" + .Title'
}
