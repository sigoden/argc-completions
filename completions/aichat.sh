# @flag -H --no-highlight
# @flag -S --no-stream
# @flag   --list-roles
# @option -r --role[`_list_roles`]
# @option -p --prompt

_list_roles() {
    aichat --list-roles
}

eval "$(argc "$0" "$@")"