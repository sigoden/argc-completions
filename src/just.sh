_patch_table() {
    _patch_table_edit_options '--command;[`_module_os_command`]' | \
    _patch_table_edit_arguments 'arguments;[`_choice_recipe`]'
}

_choice_recipe() {
    just --summary 2> /dev/null | tr " " "\n" || gawk '{$1=$1};1'
}
