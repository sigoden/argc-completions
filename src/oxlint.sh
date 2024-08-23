_patch_table() {
    _patch_table_edit_options \
        '--allow;*[`_choice_rule`]' \
        '--config(<file:.json>)' \
        '--deny;*[`_choice_rule`]' \
        '--tsconfig(<file:.json>)' \
        '--warn;*[`_choice_rule`]' \

}

_choice_rule() {
    data="$(oxlint --rules)"
    echo "$data" | sed -n 's/## \(\S\+\).*/\L\1/p'
    echo "$data" | sed -n 's/^| \([a-z][a-z0-9-]\+\).*/\1/p'
}
