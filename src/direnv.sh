_patch_help() {
    if [[ "$*" == "direnv" ]]; then
        $@ --help | \
        sed \
            -e 's/^  /        /' \
            -e 's/^\(\w\+\).*:$/  \1/' \
            -e '/Available commands/,+1 c\Commands:' \

    fi
}

_patch_table() { 
    if [[ "$*" == "direnv allow" ]] \
    || [[ "$*" == "direnv deny" ]] \
    || [[ "$*" == "direnv edit" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'file;[`_choice_path_to_rc`]'

    elif [[ "$*" == "direnv exec" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'dir' \
            'command;[`_module_os_command`]' \
            'args;~[`_choice_args`]' \

    elif [[ "$*" == "direnv fetchurl" ]]; then
        _patch_table_edit_arguments ';;' 'urls...'

    elif [[ "$*" == "direnv hook" ]]; then
        _patch_table_edit_arguments ';;' 'shell;[`_choice_hook_shell`]'

    else
        cat
    fi
}

_choice_path_to_rc() {
    _argc_util_comp_path exts=.envrc,.env
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_hook_shell() {
    printf "%s" bash elvish fish tcsh zsh
}
