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
    if [[ "$*" == "wpa_cli" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options

    else
        _patch_table_edit_arguments \
            'ifname;[`_module_os_network_interface`]' \
            'network-id;[`_choice_network_id`]' \

    fi
    
}

_choice_network_id() {
    wpa_cli list_networks | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/'
}
