_patch_table() {
    _patch_table_edit_options \
        '--enable-list;*,[`_choice_rule`]' \
        '--fix;*,[`_choice_rule`]' \
        '--list-rules; ;' \
        '--skip-list;*,[`_choice_rule`]' \
        '--warn-list;*,[`_choice_rule`]' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}

_choice_rule() {
    ansible-lint --list-rules  | \
    sed -n 's/^\s\+\x1b\S\+\x1b\\\(\S\+\)\x1b\]8;;\x1b\\\s\+\(.*\)\x1b\[2m.*/\1\t\2/p'
}
