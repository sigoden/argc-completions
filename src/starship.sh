_patch_table() { 
    if [[ "$*" == "starship config" ]] \
    || [[ "$*" == "starship print-config" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_config_key`]'

    elif [[ "$*" == "starship init" ]]; then
        _patch_table_edit_arguments 'shell;[bash|elvish|fish|powershell|zsh]'

    elif [[ "$*" == "starship module" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_module`]'

    else
        cat
    fi
}

_choice_config_key() {
    starship print-config  | \
    sed '/\[custom\]/,+1 { N; s/\[custom\]\n\s*//;}' | \
    yq -p toml '.. | path | select((. | length) <= 2)  | join "."' | \
    _argc_util_comp_parts .
}

_choice_module() {
    starship module --list | tail -n +3
}
