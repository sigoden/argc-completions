_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_arguments 'packages;*[`_choice_package`]'
}

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}
