_patch_help() {
    $@ --help | 
    sed \
        '/^\s*-/ s/\[\.\.\.\]/[value...]/' \

}

_patch_table() {
    _patch_table_edit_options \
        '--add(<url>);*,' \
        '--import;[html|xbel|json|md|org|db]' \
        '--stag(<value>);*' \
        '--tag(<value>);*' \

}
