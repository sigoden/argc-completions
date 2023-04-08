_patch_table() {
    if [[ "$*" == "yarn" ]]; then
        cat
        echo 'argument # cmd # # [`_choice_cmd`]'
    elif [[ "$*" == "yarn run" ]]; then
        cat
        echo 'argument # script # # [`_choice_script`]'
    elif [[ "$*" == "yarn remove" ]]; then
        sed '/argument # \[packages/ cargument # [packages]... # # [`_choice_dependency`]'
    elif [[ "$*" == "yarn upgrade" ]]; then
        cat
        echo 'argument # [packages]... # # [`_choice_dependency`]'
    elif [[ "$*" == "yarn workspace" ]]; then
        cat
        echo 'argument # <workspace-name> # # [`_choice_workspace`]'
        echo 'argument # [workspace-args]... # # [`_choice_workspace_args`]'
    elif [[ "$*" == "yarn generate-lock-entry" ]]; then
        sed '/option # --registry <registry>/ d'
    elif [[ "$*" == "yarn autoclean" ]]; then
        sed '/option # --force/ d'
    else
        cat
    fi
}

_patch_script() {
    sed \
        -e '/{ yarn config/, /} yarn config/ s/@arg key/@arg key[`_choice_config_key`]/' \
        -e '/{ yarn global/, /} yarn global/ s/@arg packages\*/@arg packages*[`_choice_global_dependency`]/'
}

_choice_cmd() {
    _choice_script
    _helper_bin
}

_choice_script() {
    project_dir="$(_helper_locate_project)"
    cat "$project_dir/package.json" | jq -r '.scripts | keys[]' 
}

_choice_dependency() {
    project_dir="$(_helper_locate_project)"
    cat  "$project_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_global_dependency() {
    global_dir="$(_argc_util_unix_path "$(yarn global dir)")"
    cat  "$global_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_workspace() {
    yarn workspaces info | sed '1d;$d' | jq -r 'keys[]'
}

_choice_workspace_args() {
    if [[ "$1" == workspace ]] && [[ -n "$2" ]]; then
        project_dir="$(_helper_locate_project)"
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

_helper_bin() {
    bin_dir="$(_helper_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_helper_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_helper_locate_base)"
    fi
    echo "$_project_dir"
}

_helper_locate_base() {
    if [[ -n "$workspace_dir" ]]; then
        echo "$workspace_dir" 
    elif [ -f package.json ]; then
        pwd
    else
        echo "$(_argc_util_unix_path "$(npm prefix)")"
    fi
}