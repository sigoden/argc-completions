_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi

    len="${#argc__args[@]}"
    if [[ "$len" -eq 2 ]]; then
        jenv commands
    else
        jenv completions "${argc__args[@]:1}"
    fi
}
