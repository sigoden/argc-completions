# Search for a file by traversing the directory tree upwards starting from the current directory.
# Args:
# - `-p`: Return the parent directory, not the file itself.
# ```sh
#   _argc_util_path_search_parent package.json
#   _argc_util_path_search_parent deno.json deno.jsonc
#   _argc_util_path_search_parent -p package.json  # search folder contains package.json
# ```
_argc_util_path_search_parent() {
    local pwd_="$PWD"
    local parent
    if [[ "$1" == "-p" ]]; then parent=1; shift; fi
    _check() {
        local value target
        for value in $@; do
            if [[ -f "$value" ]]; then
                target="$(realpath "$value")"
                if [[ $parent == 1 ]]; then dirname "$target"; else echo "$target"; fi
                return 0
            fi
        done
        if [[ $PWD == "/"  ]]; then return 0; fi
        return 1
    }
    until _check $@; do cd ..; done
    cd "$pwd_"
}