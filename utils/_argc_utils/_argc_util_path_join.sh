_argc_util_path_join() {
    local sep="/"
    if [[ "$OS" == "Windows_NT" ]]; then
        sep="\\"
    fi
    local base="$1"
    if [[ "$base" = *"$sep" ]]; then
        base="${base::-1}"
    fi
    echo "$base$(printf "$sep%s" "${@:2}")"
}