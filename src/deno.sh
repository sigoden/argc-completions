_patch_table() {
    if [[ "$*" == "deno uninstall" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_install_bin`]'

    elif [[ "$*" == "deno lint" ]]; then
        _patch_table_edit_options \
            '--rules-exclude;[`_choice_lint_rule`]' \
            '--rules-include;[`_choice_lint_rule`]' \

    elif [[ "$*" == "deno task" ]]; then
        _patch_table_edit_arguments 'task;[`_choice_task`]'

    else
        cat
    fi
}

_choice_install_bin() {
    find ~/.deno/bin -maxdepth 1 -type f | xargs -I% basename % | grep -v '.cmd$\|^deno$'
}

_choice_lint_rule() {
    deno lint --rules --json | yq '.[] | (.docs | split("\n") | .0) as $desc | .code + "	" + $desc'
}

_choice_task() {
    _helper_find_deno_json_path
    if [[ -n "$deno_json_path" ]]; then
        cat "$deno_json_path" | yq '.tasks | keys | .[]' 
    fi
}

_helper_find_deno_json_path() {
    deno_json_path="$(_argc_util_path_search_parent deno.json deno.jsonc)"
}
