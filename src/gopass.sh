_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'secret;[`_choice_secret`]' \
            'from;[`_choice_secret`]' \
            'to;[`_choice_folder`]' \
    )"

    if [[ "$*" == "gopass fscopy" ]] \
    || [[ "$*" == "gopass fsmove" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'from(from-file)' \
            'to(to-file)' \

    elif [[ "$*" == "gopass list" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'prefix;[`_choice_folder`]' \

    else
        echo "$table"
    fi
}

_choice_secret() {
    gopass ls --flat
}

_choice_folder() {
    gopass ls --folders --flat | _argc_util_comp_parts /
}
