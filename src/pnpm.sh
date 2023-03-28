_choice_cmd() {
    _choice_script
    _choice_exe
}

_choice_script() {
    _option_filter
    project_dir="$(_locate_project)"
    jq -r '.scripts | keys[]' "$project_dir/package.json"
}

_choice_dependency() {
    _option_filter
    project_dir="$(_locate_project)"
    jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]' "$project_dir/package.json"
}

_choice_config_key() {
    pnpm config list --json | jq -r 'keys[]'
}

_choice_workspace() {
    pnpm recursive list --json | jq -r '.[].name // empty'
}

_choice_exe() {
    bin_dir="$(_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_option_filter() {
    if [[ -n "$argc_filter" ]]; then
        local path = "$(pnpm recursive list --json | jq -r '.[] | select(.name == "'"$argc_filter"'") | .path // empty')"
        if [[ -n "$path" ]]; then
            project_dir="$(_argc_util_safe_path "$path")"
        fi
    fi
}

_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_locate_project_base)"
    fi
    echo "$_project_dir"
}

_locate_project_base() {
    if [ -f package.json ]; then
        pwd
    else
        echo "$(cd "$(_argc_util_safe_path "$(pnpm root)")/.." && pwd)"
    fi
}