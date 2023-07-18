_patch_help() {
    $@ --help | sed '/^  -/ s/,-/, -/g'
}

_patch_table() { 
    _patch_table_edit_options '--color;[off|dark]'
}