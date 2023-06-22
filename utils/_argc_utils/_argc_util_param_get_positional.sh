_argc_util_param_get_positional() {
    local arg=$1
    if [[ "$arg" == '-'* ]]; then
        echo "${argc__positionals[@]: $arg:1}"
    elif [[ "$arg" == 'len' ]]; then
        echo "${#argc__positionals[@]}"
    else
        echo "${argc__positionals[$arg]}"
    fi
}