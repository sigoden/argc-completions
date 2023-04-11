_argc_util_positional_len() {
    if [[ -z "$argc__words" ]]; then
        echo 0
    else
        echo "${#argc__words[@]}"
    fi
}