_patch_table() { 
    _patch_table_edit_options '--override;*[`_choice_override`]'
}

_choice_override() {
    _argc_util_mode_kv :
    if [[ -n "$argc__kv_prefix" ]]; then
        _choice_language
    fi
}

_choice_language() {
    difft --list-languages  | sed -n 's/^\(\S\+\)$/\1/p'
}
