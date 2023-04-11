_argc_util_count_positional() {
    if [[ -z "$argc__words" ]]; then
        echo 0
    else
        echo "${#argc__words[@]}"
    fi
}