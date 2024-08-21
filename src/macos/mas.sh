_patch_help() {
    if [[ "$*" == "mas" ]]; then
        $@    
    else
        _patch_help_run_help_subcmd $@
    fi
}

_patch_table() {
    if [[ "$*" == "mas home" ]] \
    || [[ "$*" == "mas info" ]] \
    || [[ "$*" == "mas install" ]] \
    || [[ "$*" == "mas open" ]] \
    || [[ "$*" == "mas purchase" ]] \
    || [[ "$*" == "mas uninstall" ]] \
    || [[ "$*" == "mas vendor" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'app;[`_choice_app`]' 

    elif [[ "$*" == "mas lucky" ]] \
      || [[ "$*" == "mas search" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'name'

    elif [[ "$*" == "mas signin" ]]; then
        _patch_table_edit_arguments ';;' 'appleid' 'password'

    else
        cat
    fi
}

_choice_app() {
    mas list | sed 's/\s\+/\t/'
}
