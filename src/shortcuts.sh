_patch_table() {
    if [[ "$*" == "shortcuts run" ]] \
    || [[ "$*" == "shortcuts view" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'shortcut-name;[`_choice_shortcut`]'
    else
        cat
    fi
}

_choice_shortcut() {
    shortcuts list   
}
