_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | sed '/^\s*-/ s/ \([A-Z0-9]\+\) \([A-Z][a-z]\)/ \1  \2/'
    fi
}

_patch_table() {
    if [[ "$*" == "msfdb" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    else
        cat
    fi
}
