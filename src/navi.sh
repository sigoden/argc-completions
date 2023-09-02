_patch_help() {
    if [[ "$*" == "navi" ]]; then
        $@ --help | sed '/^FEATURE STABILITY:/,/^\s*$/ d'

    else
        $@ --help
    fi
}
