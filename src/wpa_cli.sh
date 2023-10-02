_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
    else
        _patch_help_run_man $1 | \
        sed -n "/^COMMANDS/,/^[A-Z]/ {/^\s*$2\( \|$\)/p}" | \
        sed \
            -e "s/^\s*/Usage: $1 /" \
            -e "s/$1 $2 [A-Za-z].*/$1 $2/" \
            -e 's/  \+.*//' \

    fi
}

_patch_table() {
    _patch_table_edit_arguments \
        'ifname;[`_module_os_network_interface`]' \
        'network-id;[`_choice_network_id`]' \
    
}

_choice_network_id() {
    wpa_cli list_networks | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/'
}
