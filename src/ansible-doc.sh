_patch_table() {
    _patch_table_edit_arguments 'plugin;[`_choice_plugin`]'
}

_choice_plugin() {
    ansible-doc --list | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/' | _argc_util_comp_parts '.'
}
