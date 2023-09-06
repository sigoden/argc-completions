_patch_help() { 
    if [[ "$*" == "coredumpctl" ]]; then
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "coredumpctl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--debugger;[`_module_os_command`]' \
            '--json;[pretty|short|off]' \

    else
        cat
    fi
}
