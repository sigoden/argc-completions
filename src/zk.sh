_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help | sed '/^[A-Z][A-Z]/,+2 cCommands:'
    else
        $@ --help
    fi
}
