_patch_help() {
    _common_edit() {
        sed 's/-v|vv|vvv/-v/'
    }
    if [[ "$*" == "poetry" ]]; then
        $1 list | \
        _common_edit | \
        gawk '
            BEGIN { stop = 0 }
            {
                if (match($0, /^Available commands:/)) {
                    commandZone = 1
                }
                if (stop == 0 && commandZone == 1 && match($0, /^\s*$/)) {
                    stop = 1
                }
                if (stop == 0) {
                    print $0
                }
            }'
        cat <<-'EOF'
  cache              Interact with Poetry’s cache.
  debug              Debug operations.
  env                Interact with the virtualenvs associated with a specific project.
  self               Manage the Poetry installation itself.
  source             Manage repository sources for a Poetry project.
EOF
    elif [[ "$*" == "poetry cache" ]] \
      || [[ "$*" == "poetry debug" ]] \
      || [[ "$*" == "poetry env" ]] \
      || [[ "$*" == "poetry self" ]] \
      || [[ "$*" == "poetry source" ]] \
    ; then
        echo "Commands:"
        $1 list | sed -n "s/^  $2 \(\S\+\)  /  \1/p"

    else
        $@ --help 2>/dev/null | _common_edit
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--only;*,[`_choice_group`]' \
            '--with;*,[`_choice_group`]' \
            '--without;*,[`_choice_group`]' \
    )"

    if [[ "$*" == "poetry config" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'key;[`_choice_config_key`]'
    
    elif [[ "$*" == "poetry remove" ]] \
      || [[ "$*" == "poetry show" ]] \
      || [[ "$*" == "poetry update" ]] \
      || [[ "$*" == "poetry debug resolve" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'packages;*[`_choice_dependency`]' \
            'package;[`_choice_dependency`]' \

    elif [[ "$*" == "poetry env remove" ]] \
      || [[ "$*" == "poetry env use" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'python;[`_choice_env`]' \

    elif [[ "$*" == "poetry self remove" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'packages;*[`_choice_plugin`]' \

    elif [[ "$*" == "poetry self show" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'package;*[`_choice_self_show`]' \


    elif [[ "$*" == "poetry source remove" ]] \
      || [[ "$*" == "poetry source show" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'name;[`_choice_source`]' \
            'source;[`_choice_source`]' \

    else
        echo "$table"
    fi
}

_choice_config_key() {
    poetry config $(_argc_util_param_select_options --local) --list | \
    sed 's/ = /\t/' | \
    _argc_util_comp_parts .
}

_choice_group() {
    printf "%s\n" main test docs
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry.group | keys | .[]'
}

_choice_dependency() {
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry | .. | select(has("dependencies")) | .dependencies | keys | .[]'
}

_choice_env() {
    poetry env list
}

_choice_plugin() {
    poetry self show plugins | sed -n 's/^  • \(\S\+\) .*/\1/p'
}

_choice_self_show() {
    echo "plugins"
    _choice_plugin
}

_choice_source() {
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry.source.[].name'
}

_helper_find_pyproject_toml_path() {
    pyproject_toml_path="$(_argc_util_path_search_parent pyproject.toml)"
}
