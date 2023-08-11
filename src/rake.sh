_patch_table() { 
    _patch_table_edit_arguments ';;' 'target;*[`_choice_target`]'
}

_choice_target() {
    rake -T | sed -n 's/rake \(\S\+\)\s*# \(.*\)/\1\t\2/p'
}
