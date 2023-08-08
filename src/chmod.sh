_patch_table() { 
    _patch_table_edit_arguments 'mode-mode(mode);[`_choice_mode`]'
}

_choice_mode() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_path
    else
        echo
    fi
}