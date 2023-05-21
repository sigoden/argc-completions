_argc_util_path_to_unix() {
    local target="$1"
    if [[ -z "$target" ]]; then
        target="$(cat)"
    fi
    if [[ "$OS" == "Windows_NT" ]]; then
        cygpath "$target"
    else
        echo "$target"
    fi
}