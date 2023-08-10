_patch_help() { 
    $@ --help | \
    sed \
        -e 's/">\s\?"/<value>/' \
        -e '/^\s*-/ s/="\([^"]\+\)"/=<\1>/' \
        -e '/^\s*-/ s/=""/=<value>/' \
        -e 's/\s*\.\.\./.../' \

}

_patch_table() { 
    if [[ "$*" == "gum spin" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'command;[`_module_os_command`]' \
            'args;~[`_choice_args`]' \

    else
        cat
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 0
}