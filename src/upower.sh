_patch_table() { 
    _patch_table_edit_options '--show-info;[`_choice_power_device`]' | \
    _patch_table_edit_arguments ';;'
}

_choice_power_device() {
    upower --enumerate 
}
