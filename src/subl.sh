_patch_help() {
    $@ --help | sed '/^\s*-/ {s/ or -/ -/;s/: /  /;}'
}

_patch_table() {
    _patch_table_edit_arguments ';;' 'paths...'
}
