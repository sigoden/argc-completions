_patch_help() {
    if [[ "$*" == "terragrunt run-all" ]]; then
        $@ --help | sed '/^GLOBAL OPTIONS:/,/^\s*$/ d'
    elif [[ $# -gt 2 ]]; then
        :;
    else
        $@ --help
    fi
}

_patch_table() {
    _patch_table_detect_value_type
}
