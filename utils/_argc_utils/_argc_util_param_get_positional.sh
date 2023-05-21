_argc_util_param_get_positional() {
    local arg=$1
    if [[ "$arg" == '-'* ]]; then
        echo "${argc__args[@]: $arg:1}"
    elif [[ "$arg" == 'len' ]]; then
        echo "${#argc__args[@]}"
    else
        echo "${argc__args[$arg]}"
    fi
}