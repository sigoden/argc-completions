_patch_help() {
    $@ --help | _patch_help_preprocess_yargs
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--force-publish;[`_choice_package`]' \
            '--ignore;[`_choice_package`]' \
            '--loglevel;[`_choice_log_level`]' \
            '--scope;[`_choice_package`]' \
    )"

    if [[ "$*" == "lerna diff" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pkgname;[`_choice_package`]'

    elif [[ "$*" == "lerna exec" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'cmd;[`_choice_cmd`]' 'args(args...)'

    elif [[ "$*" == "lerna publish" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'bump;[`_choice_semver`]'


    elif [[ "$*" == "lerna run" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--npm-client;[`_choice_npm_client`]' \
        | \
        _patch_table_edit_arguments 'script;[`_choice_all_script`]'
    
    else
        echo "$table"
    fi
}

_choice_log_level() {
    printf "%s\n" silent error warn success info verbose silly
}

_choice_package() {
    lerna ls 2>/dev/null
}

_choice_cmd() {
    _argc_util_parallel _choice_bin ::: _choice_all_script
}

_choice_semver() {
    printf "%s\n" major minor patch premajor preminor prepatch
}

_choice_npm_client() {
    printf "%s\n" npm yarn pnpm
}

_choice_all_script() {
    {
        lerna list -p | while read p; do
            cat $p/package.json
        done
    } | \
    yq -N --input-format json  '(.scripts // {}) | keys | .[]'
}

_choice_bin() {
    _helper_find_lerna_json_path
    if [[ -f "$lerna_json_path" ]]; then
        bin_dir="$(dirname "$lerna_json_path")/node_modules/.bin"
        if [[ -d "$bin_dir" ]]; then
            ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
        fi
    fi
}

_helper_find_lerna_json_path() {
    lerna_json_path="$(_argc_util_path_search_parent lerna.json)"
}
