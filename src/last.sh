_patch_help() { 
    $@ --help | sed '/^ -<number>/ d'
}

_patch_table() { 
    _patch_table_edit_options '--time-format;[notime|short|full|iso]' | \
    _patch_table_edit_arguments ';;' 'user-or-tty;*[`_choice_value`]'
}

_choice_value() {
    _argc_util_parallel _module_os_user ::: _module_os_tty
}
