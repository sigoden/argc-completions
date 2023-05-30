_argc_util_path_search_parent() {
    local cache_pwd="$PWD"
    _check() {
        local item
        for item in $@; do
            if [[ -f "$item" ]]; then
                realpath "$item"
                return 0
            fi
        done
        if [[ $PWD == "/"  ]]; then
            return 0
        fi
        return 1
    }
    until _check $@; do
        cd ..
    done
    cd "$cache_pwd"
}