_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
    else
        :;
    fi
}

_patch_table() {
    if [[ $# -eq 1 ]]; then
        _patch_table_add_metadata inherit-flag-options | \
        _patch_table_edit_arguments ';;'
        
    else
        _patch_table_edit_arguments ';;' 'services;[`_choice_service`]'
    fi
}

_choice_service() {
    ls -1 /etc/service/
}
