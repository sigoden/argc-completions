_patch_table() { 
    if [[ "$*" == "volta uninstall" ]]; then
        _patch_table_edit_arguments 'tool;[`_choice_tool`]'
    else
        cat
    fi
}

_choice_tool() {
    volta list --format plain | gawk '{print $2}'
}