_patch_table() { 
    _patch_table_edit_arguments ';;' 'key-value;*[`_choice_key_value`]'
}

_choice_key_value() {
    _argc_util_mode_kv '='
    if [[ -z "$argc__kv_prefix" ]]; then
        sysctl --all | gawk -F ' = ' '{print $1 "=\0\t" $2}'
    else
        sysctl --values $argc__kv_key 
    fi
}
