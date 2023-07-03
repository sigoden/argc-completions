# Test value is a path
# ```sh
# _argc_util_is_path ./      # yes
# _argc_util_is_path /       # yes
# _argc_util_is_path ~       # yes
# _argc_util_is_path C:\\    # yes
# _argc_util_is_path README  # no
# ```
_argc_util_is_path() {
     if [[ "$1" == '.'* || "$1" == '/'* || "$1" == '~'* || "$1" == [A-Za-z]:*  ]]; then
        return 0
    else
        return 1
    fi
}