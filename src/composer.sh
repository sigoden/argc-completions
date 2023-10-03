_patch_help() { 
    _common_edit() {
        sed \
            -e 's/-v|vv|vvv/-v.../' \
            -e 's/|--/, --/' \
            -e '/^Help:/,$ s/^\(\s*\)\(-\S\+\)/\1`\2`/'

    }

    if [[ "$*" == "composer" ]]; then
        composer list --no-plugins | \
        sed '/^  \(\S\+\)\s*\[/ {s/^  \(\S\+\)\s*\[\(.*\)\]/  \1|\2   /; s/|/, /g;}' | \
        _common_edit

    elif [[ "$*" == "composer list" ]]; then
        :;

    else
        $@ --help | _common_edit
    fi
}

_patch_table() { 
    if [[ "$*" == "composer archive" ]]; then
        _patch_table_edit_options \
            '--format;[tar|tar.gz|tar.gz2|zip]' \

    elif [[ "$*" == "composer browse" ]] \
      || [[ "$*" == "composer depends" ]] \
      || [[ "$*" == "composer outdated" ]] \
      || [[ "$*" == "composer reinstall" ]] \
      || [[ "$*" == "composer remove" ]] \
      || [[ "$*" == "composer show" ]] \
      || [[ "$*" == "composer suggests" ]] \
      || [[ "$*" == "composer update" ]] \
    ; then
        _patch_table_edit_arguments \
            'packages;*[`_choice_dependency`]' \
            'package;[`_choice_dependency`]' \

    elif [[ "$*" == "composer completion" ]]; then
        _patch_table_edit_arguments 'shell;[bash|zsh|fish]'

    elif [[ "$*" == "composer config" ]]; then
        _patch_table_edit_arguments 'setting-key;[`_choice_config_key`]'

    elif [[ "$*" == "composer exec" ]]; then
        _patch_table_edit_arguments ';;' 'binary;[`_choice_bin`]' 'args...'

    elif [[ "$*" == "composer global" ]]; then
        _patch_table_edit_arguments ';;' 'args;~[`_choice_global`]'

    elif [[ "$*" == "composer init" ]]; then
        _patch_table_edit_options \
            '--type;[library|project|metapackage|composer-plugin]' \

    elif [[ "$*" == "composer run-script" ]]; then
        _patch_table_edit_arguments 'script;[`_choice_script`]'

    else
        cat
    fi
}

_choice_dependency() {
    _helper_find_composer_json_path
    if [[ -n "$composer_json_path" ]]; then
        cat "$composer_json_path" | yq '(.require // {}) + (.require-dev // {}) | keys | .[]'
    fi
}

_choice_config_key() {
    composer config $(_argc_util_param_select_options --global) --list | \
    sed -n 's/\[\(.*\)\] \(\S*\)/\1\t\2/p'
}

_choice_bin() {
    composer_root_dir="$(_argc_util_path_search_parent -p composer.json)"
    if [[ -n  "$composer_root_dir" ]]; then
        (cd "$composer_root_dir/vendor/bin/" && ls -1)
    fi
}

_choice_global() {
    _argc_util_comp_subcommand 0 composer
}

_choice_script() {
    _helper_find_composer_json_path
    if [[ -n "$composer_json_path" ]]; then
        cat "$composer_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_find_composer_json_path() {
    composer_json_path="$(_argc_util_path_search_parent composer.json)" 
}
