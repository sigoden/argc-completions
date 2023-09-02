_patch_help() {
    $@ -h
}

_patch_table() {
    _patch_table_edit_arguments 'provider;[`_choice_provider`]'
}

_choice_provider() {
    find /etc/ppp/peers/ -type f -printf '%f\n'
}
