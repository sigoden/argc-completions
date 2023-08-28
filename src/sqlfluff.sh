_patch_table() {
    _patch_table_edit_options \
        '--dialect;[`_choice_dialect`]' \
        '--exclude-rules;*,[`_choice_rule`]' \
        '--rules;*,[`_choice_rule`]' \

}

_choice_rule() {
    sqlfluff rules | sed -n 's/^\(\S\+\): \(.*\)$/\1\t\2/p'
}

_choice_dialect() {
    sqlfluff dialects | sed -n 's/^\(\S\+\):.*/\1/p'
}
