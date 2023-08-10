_patch_help() { 
    _patch_help_run_man $@ | sed '/^\s*-/ s/ (.*)$//'
}

_patch_table() { 
    _patch_table_edit_options \
        '--allow;*,[`_module_os_hostname`]' \
        '--exec;[`_module_os_command_string`]' \
        '--deny;*,[`_module_os_hostname`]' \
        '--proxy-type;[`_choice_proxy_type`]' \
        '--proxy-dns;[`_choice_proxy_dns`]' \
        '--sh-exec;[`_module_os_command_string`]' \
        '--ssl-trustfile(file)' \
    | \
    _patch_table_edit_arguments 'hostname;[`_module_os_hostname`]'
}

_choice_proxy_type() {
    printf "%s\n" http socks4 socks5
}

_choice_proxy_dns() {
    printf "%s\n" local remote both none
}