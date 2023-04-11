_argc_util_positional() {
    if [[ -z "$argc__words" ]]; then
        echo ""
    else
        echo "${argc__words[$1]:-}"
    fi
}