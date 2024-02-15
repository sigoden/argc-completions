_patch_help() {
    if [[ "$*" == "pre-commit" ]]; then
        $@ --help | \
        sed \
            -e '/^usage:/,+2 d' \
            -e '/^positional arguments:/,+1 c\Commands:' \

    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--config(<file>)' \
    )"
    
    if [[ "$*" == "pre-commit autoupdate" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--repo;[`_choice_repo`]' \

    elif [[ "$*" == "pre-commit run" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--local-branch;[`_module_git_local_branch`]' \
            '--origin;[`_module_git_ref`]' \
            '--remote-branch;[`_module_git_remote_branch`]' \
            '--source;[`_module_git_ref`]' \
        | \
        _patch_table_edit_arguments \
            'hook;[`_choice_hook`]' \

    elif [[ "$*" == "pre-commit try-repo" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--origin;[`_module_git_ref`]' \
            '--ref;[`_module_git_ref`]' \
            '--source;[`_module_git_ref`]' \

    else
        echo "$table"
    fi
}

_choice_repo() {
    _helper_find_config_file
    if [[ -f "$config_file" ]]; then
        cat "$config_file" | yq '.repos[].repo'
    fi
}

_choice_hook() {
    _helper_find_config_file
    if [[ -f "$config_file" ]]; then
        cat "$config_file" | yq '.repos[].hooks[].id'
    fi
}

_helper_find_config_file() {
    config_file="$(git rev-parse --show-toplevel 2>/dev/null)"/.pre-commit-config.yaml
}
