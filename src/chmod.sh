_patch_table() { 
    _patch_table_edit_arguments 'MODE(MODE);[`_choice_mode`]'
}

_choice_mode() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_path
    else
        echo
    fi
}