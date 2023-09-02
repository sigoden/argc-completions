_patch_help() { 
    _prepare_workspace() {
        _patch_help_prepare_workspace $1
        if [[ ! -d "$workspace_dir" ]]; then
            mkdir -p "$base_dir" && \
            cd "$base_dir" && \
            ng new "$1-completion" --interactive=false -g >/dev/null 2>&1
        fi
        cd "$workspace_dir"
    }
    if [[ "$*" == "ng" ]] \
    || [[ "$*" == "ng new" ]] \
    ; then
        $@ --help | _patch_help_preprocess_yargs
    else
        (_prepare_workspace $1 && $@ --help) | _patch_help_preprocess_yargs
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--configuration;*,[`_choice_configuration`]' \
        | \
        _patch_table_edit_arguments \
            'project;[`_choice_project`]' \
    )"
    if [[ "$*" == "ng run" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'target;[`_choice_run`]' \

    else
        echo "$table"
    fi

}

_choice_configuration() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    project="${argc_project:-"${argc__positionals[0]}"}" 
    if [[ -z "$project"  ]]; then
        return
    fi
    if [[ "$argc__cmd_fn" =~ ^(build|lint|test|serve)$ ]]; then
        architect="$argc__cmd_fn"
    fi
    _helper_list_configuration_keys "$project" "$architect"
}

_choice_project() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    cat "$angular_json_path" | yq '.projects | keys | .[]'
}

_choice_run() {
    _helper_find_angular_json_path
    if [[ ! -f "$angular_json_path" ]]; then
        return
    fi
    _argc_util_mode_parts :
    if [[ "$argc__parts_len" -lt  2 ]]; then
        _choice_project | _argc_util_transform suffix=: nospace
    elif [[ "$argc__parts_len" -eq  2 ]]; then
        cat "$angular_json_path" | \
        yq '(.projects["'"${argc__parts_values[0]}"'"] // {}) | .architect | keys | .[]' | \
        _argc_util_transform nospace
    else
        _helper_list_configuration_keys "${argc__parts_values[0]}" "${argc__parts_values[1]}"
    fi
}

_helper_find_angular_json_path() {
    angular_json_path="$(_argc_util_path_search_parent angular.json)"
}

_helper_list_configuration_keys() {
    cat "$angular_json_path" | \
    yq '(.projects["'$1'"].architect["'$2'"].configurations // {}) | keys | .[]'
}
