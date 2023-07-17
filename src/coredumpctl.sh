_patch_help() { 
    if [[ "$*" == "coredumpctl" ]]; then
        $@ --help
    fi
}

_patch_table() { 
    _patch_table_edit_options \
        '--debugger;[`_choice_debugger`]' \
        '--json;[pretty|short|off]' \

}

_choice_debugger() {
    _argc_util_comp_path
    _module_os_command
}
