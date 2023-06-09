_patch_table() {
    if [[ "$*" == "deno uninstall" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_install_bin`]'
    elif [[ "$*" == "deno lint" ]]; then
        _patch_table_edit_options '--rules-include;[`_choice_lint_rule`]' '--rules-exclude;[`_choice_lint_rule`]'
    elif [[ "$*" == "deno task" ]]; then
        _patch_table_edit_arguments 'TASK;[`_choice_task`]'
    else
        cat
    fi
}

_choice_lint_rule() {
    deno lint --rules --json | yq '.[] | (.docs | split("\n") | .0) as $desc | .code + "	" + $desc'
}

_choice_task() {
    local config_file=$(_helper_config_file)
    if [[ -n "$config_file" ]]; then
        cat "$config_file" | yq '.tasks | keys | .[]' 
    fi
}

_choice_install_bin() {
    find ~/.deno/bin -maxdepth 1 -type f | xargs -I% basename % | grep -v '.cmd$\|^deno$'
}

_helper_config_file() {
    _argc_util_path_search_parent deno.json deno.jsonc
}