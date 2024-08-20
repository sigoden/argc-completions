_patch_help() {
    $@ --help | sed '/^Usage:/ s/{ -.* }//'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--modify;[`_choice_acl`]' \
        '--remove;[`_choice_acl`]' \
        '--set;[`_choice_acl`]' \

}

_choice_acl() {
    _argc_util_mode_parts ':'
    if [[ "$argc__parts_len" -lt 2 ]]; then
        printf "%s:\0\n" u g m o

    elif [[ "$argc__parts_len" -eq 2 ]]; then
        if [[ "${argc__parts_values[0]}" == "u" ]]; then
            _module_os_user | _argc_util_transform suffix=: nospace
        elif [[ "${argc__parts_values[0]}" == "g" ]]; then
            _module_os_group | _argc_util_transform suffix=: nospace
        else
            _choice_perm
        fi

    elif [[ "$argc__parts_len" -eq 3 ]]; then
        _choice_perm

    fi
}

_choice_perm() {
    printf "%s\n" r w x rw rx wx rwx
}
