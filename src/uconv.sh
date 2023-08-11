_patch_help() { 
    $@ --help | sed -n '/^Options:/,$ s/^.\{8\}/ /p'
}

_patch_table() { 
    _patch_table_edit_options \
        '--from-callback;[`_choice_callback`]' \
        '--to-callback;[`_choice_callback`]' \
    | \
    _patch_table_edit_arguments ';;' 'file...'

}

_choice_callback() {
    printf "%s\n" substitute skip stop escape escape-icu escape-java escape-c escape-xml escape-xml-hex escape-xml-dec escape-unicode
}
