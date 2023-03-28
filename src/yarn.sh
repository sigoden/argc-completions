_choice_cmd() {
    _choice_script
    _list_module_bins
}

_choice_script() {
    project_dir="$(_locate_project)"
    jq -r '.scripts | keys[]' "$project_dir/package.json"
}

_choice_dependency() {
    project_dir="$(_locate_project)"
    jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]' "$project_dir/package.json"
}

_choice_global_dependency() {
    global_dir="$(_argc_util_safe_path "$(yarn global dir)")"
    jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]' "$global_dir/package.json"
}

_choice_workspace() {
    yarn workspaces info | sed '1d;$d' | jq -r 'keys[]'
}

_choice_workspace_args() {
    if [[ "$1" == workspace ]] && [[ -n "$2" ]]; then
        project_dir="$(_locate_project)"
        location="$(yarn workspaces info | sed '1d;$d' | jq -r '."'$2'".location')"
        if [[ -z "$location" ]]; then
            return
        fi
        workspace_dir="$project_dir/$location"
        line=" ${@:3}"
        if [[ "$argc__line" =~ [[:space:]]$ ]]; then
            line="$line "
        fi
        while read -r item; do
            if [[ "$item" == \`*\` ]]; then
                ${item:1:-1}
            else
                echo "$item"
            fi
        done < <(argc --compgen "${BASH_SOURCE[0]}" "$line")
    fi
}

_choice_config_key() {
    yarn config list --json | jq -r 'select(.type == "inspect") | .data | keys[]'
}

_list_module_bins() {
    bin_dir="$(_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_locate_project_base)"
    fi
    echo "$_project_dir"
}

_locate_project_base() {
    if [[ -n "$workspace_dir" ]]; then
        echo "$workspace_dir" 
    elif [ -f package.json ]; then
        pwd
    else
        echo "$(_argc_util_safe_path "$(npm prefix)")"
    fi
}