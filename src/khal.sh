_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    line="${argc__args[*]}"
    mapfile -t lines < <(COMP_WORDS="${line}" COMP_CWORD="${argc__args[-1]}" _KHAL_COMPLETE=fish_complete khal)
    for completion in "${lines[@]}"; do
        IFS=',' read type value <<< "$completion"
        if [[ $type == 'dir' ]]; then
            _argc_util_comp_path dir
        elif [[ $type == 'file' ]]; then
            _argc_util_comp_path
        elif [[ $type == 'plain' ]]; then
            printf "%s\n" "$value"
        fi
    done
}
