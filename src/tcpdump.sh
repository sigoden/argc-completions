_patch_help() { 
    _patch_help_run_man $@ | sed '/^\s*-/ {:x;N;s/\n\s*-/, -/;t x;}'
}

_patch_table() { 
    _patch_table_edit_options \
        '--interface;[`_choice_tcp_interface`]' \

}

_choice_tcp_interface() {
    tcpdump --list-interfaces | sed -n 's/\.\(\S\+\)\s*\((\(.*\))\)\?.*$/\1\t\3/p'
}
