_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    export CLOUDSDK_COMPONENT_MANAGER_DISABLE_UPDATE_CHECK=1
    _module_bridge_argcomplete
}
