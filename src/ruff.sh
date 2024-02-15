_patch_table() {
    if [[ "$*" == "ruff check" ]]; then
        _patch_table_edit_options \
            '--extend-fixable;*,[`_choice_rule`]' \
            '--extend-select;*,[`_choice_rule`]' \
            '--fixable;*,[`_choice_rule`]' \
            '--ignore;*,[`_choice_rule`]' \
            '--select;*,[`_choice_rule`]' \
            '--unfixable;*,[`_choice_rule`]' \

    elif [[ "$*" == "ruff rule" ]]; then
        _patch_table_edit_arguments 'rule;[`_choice_rule`]' 

    else
        cat
    fi
}

_choice_rule() {
    ruff rule --all --format json | \
    yq '.[] | .code + "	" + .name'
}
