_patch_help() {
    $@ --help | \
    sed \
        '/^\s*-/ s/,-/, -/' \

}

_patch_table() {
    _patch_table_edit_options \
        '--decode;[`_choice_decode`]' \
        '--option;[`_choice_option`]' \

}

_choice_decode() {
    fq --help formats | sed 's/\s\+\(.*\)/\t\1/'
}

_choice_option() {
    fq --help options | sed 's/\s\+\(.*\)/\t\1/'
}
