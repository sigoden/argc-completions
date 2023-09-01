_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    if [[ ${#argc__args[@]} -eq 2 ]]; then
        output="$(rbenv commands)"
    else
        output="$(rbenv completions "${argc__args[@]:1}")"
    fi
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
