_patch_help() { 
    if [[ "$*" == "coredumpctl" ]]; then
        $@ --help
    fi
}

_patch_table() { 
    _patch_table_edit_options \
        '--debugger;[`_module_os_command`]' \
        '--json;[pretty|short|off]' \

}