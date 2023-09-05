_patch_help() { 
    _patch_help_run_man $@ | sed '/^\s*-/ s/ (.*)$//'
}

_patch_table() { 
    _patch_table_edit_options \
        '--allow;*,[`_module_os_hostname`]' \
        '--deny;*,[`_module_os_hostname`]' \
        '--exec;[`_module_os_command`]' \
        '--proxy-dns;[`_choice_proxy_dns`]' \
        '--proxy-type;[`_choice_proxy_type`]' \
        '--sh-exec;[`_module_os_command`]' \
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
