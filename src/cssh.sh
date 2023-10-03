_patch_help() {
    $@ --help | \
    sed \
        -e 's/\x27\(<[^>]\+>\)\x27/\1/g' \
        -e '/^Arguments/,+1 cArguments' \

}

_patch_table() {
    _patch_table_edit_options \
        '--debug(<level>);*[`_choice_debug`]' \
        '--evaluate;[`_module_ssh_host`]' \
    | \
    _patch_table_edit_arguments ';;' 'args;*[`_module_ssh_host`]'

}

_choice_debug() {
    seq 0 9
}
