_patch_help() {
    $@ --help | sed '/^\s*-/ s/\s*</ </'

}

_patch_table() {
    _patch_table_edit_options \
        '--informat;[`_choice_informat`]' \
        '--outformat;[`_choice_outformat`]' \

}

_choice_informat() {
    abook --formats  | sed -n '/^input formats:/,/^\s*$/ {//d; s/^\s\+//p}'
}

_choice_outformat() {
    abook --formats  | sed -n '/^output formats:/,/^\s*$/ {//d; s/^\s\+//p}'
}
