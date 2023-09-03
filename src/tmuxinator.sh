_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    len="${#argc__args[@]}"
    if [[ "$len" -eq 2 ]]; then
        tmuxinator commands
        tmuxinator completions start
    else
        tmuxinator completions "${argc__args[@]:1:$((len - 2))}"
    fi
}
