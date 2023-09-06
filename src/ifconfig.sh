_patch_help() { 
    if [[ "$*" == "ifconfig" ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/^\s*interface$/ i\\nCOMMANDS' \
            -e 's/^\(\s*\)\[-\]/\1/' \

    else
        :;
    fi
}

_patch_table() { 
    if [[ "$*" == "ifconfig" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_arguments 'interface;[`_module_os_network_interface`]'

    else
        cat
    fi
}
