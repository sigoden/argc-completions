_argc_util_path_to_platform() {
    local target="$1"
    if [[ -z "$target" ]] && [[ $# -eq 0 ]]; then
        target="$(cat)"
    fi
    if [[ "$OS" == "Windows_NT" ]]; then
        cygpath -w "$target"
    else
        echo "$target"
    fi
}