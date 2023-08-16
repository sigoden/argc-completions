_patch_help() { 
    cat <<-'EOF' 
Usage: tig <cmd> [args...]
Options:
    -C <path>   Start in <path>
EOF
}

_patch_table() { 
    _patch_table_edit_arguments 'cmd;[`_choice_cmd`]' 'args;~[`_choice_args`]'
}

_choice_cmd() {
    tig --help | sed -n 's/^\s*or: tig \([a-z]\S\+\).*/\1/p'   
}

_choice_args() {
    _argc_util_comp_subcommand 0 git
}
