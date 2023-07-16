_patch_table() { 
    _patch_table_edit_options \
        '--userspec;[`_choice_user_group`]' \
        '--groups;*,[`_choice_group`]' \
    | \
    _patch_table_edit_arguments 'NEWROOT(PATH)'
}

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_user | _argc_util_transform suffix=: nospace
    else
        _helper_group
    fi
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}
