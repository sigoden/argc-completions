_patch_table() { 
    _patch_table_edit_options \
        '--theme;[simple|base16|ocean]' \
    | \
    _patch_table_edit_arguments ';;' 'cmd;[`_choice_cmd`]'
}

_choice_cmd() {
    tldr --list | sed 's/, /\n/g'
}
