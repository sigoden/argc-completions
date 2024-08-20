_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        _patch_help_strip_ansi | \
        sed  \
            -e 's/^     A list of flags and their descriptions:/Commands:/' \
            -e 's/^     -\([a-z]\w\+\).*/     \\-\1/' \

    else 
        _patch_help_run_man $1 | \
        _patch_help_strip_ansi | \
        sed -n "s/^     $2\(.*\)/Usage: $1 $2\1/p" | \
        sed \
            -e 's/-<\(\w\+\)>/\1/g' \
            -e 's/\([a-z]\w\+\) on | off/<\1> {on|off}/g' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'device;[`_choice_device`]' \
            'location;[`_choice_location`]' \
            'networkservice;[`_choice_service`]' \
            'service;[`_choice_service`]' \
            'hardwareport;[`_choice_hardwareport`]' \
    )"

    if [[ "$*" == "networksetup -setadditionalroutes" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'networkservice;[`_choice_service`]' \
            'dest-mask-gate(<dest mask gate>...)' \

    elif [[ "$*" == "networksetup -setv6additionalroutes" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'networkservice;[`_choice_service`]' \
            'dest-prefixlength-gate(<dest prefixlength gate>...)' \

    elif [[ "$*" == "networksetup -setdnsservers" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'networkservice;[`_choice_service`]' \
            '<dns>...' \
            
    elif [[ "$*" == "networksetup -setproxybypassdomains" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'networkservice;[`_choice_service`]' \
            '<domain>...' \

    elif [[ "$*" == "networksetup -ordernetworkservices" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'service;*[`_choice_service`]' \

    elif [[ "$*" == "networksetup -createBond" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'name' \
            'device;*[`_choice_device`]' \

    else
        echo "$table"
    fi

}

_choice_hardwareport() {
    networksetup -listallhardwareports | \
    sed -n 's/^Hardware Port: \(.*\)/\1/p'
}

_choice_service() {
    networksetup -listallnetworkservices | \
    sed -e '1d' -e 's/\*//'
}

_choice_device() {
    networksetup -listallhardwareports | \
    sed -n 's/^Device: \(.*\)/\1/p'
}

_choice_location() {
    networksetup -listlocations 
}

_choice_hardwareport_device() {
    networksetup -listallhardwareports | \
    sed -n 's/^\(Hardware Port\|Device\): \(.*\)/\2/p'
}
