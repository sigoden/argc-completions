_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | sed '/^\s*-/ s/ \([A-Z0-9]\+\) \([A-Z][a-z]\)/ \1  \2/'
    fi
}
