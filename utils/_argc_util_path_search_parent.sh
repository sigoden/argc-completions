_argc_util_path_search_parent() {
    local target="$1"
    until [[ -f "$target" ]] || [[ $PWD = '/' ]]; do
        cd ..
    done
    if [[ -f "$target" ]]; then
        realpath "$target"
    fi
}
