_patch_help() {
    $@ --help | sed '0,/^Usage:/ {//!d}'
    
}

_patch_table() {
    _patch_table_detect_value_type
}
