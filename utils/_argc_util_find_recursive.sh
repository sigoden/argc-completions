_argc_util_find_recursive() {
    until [[ -f "$1" ]] || [[ $PWD = '/' ]]; do
        cd ..
    done
    if [[ -f "$1" ]]; then
        realpath $1
    fi
}