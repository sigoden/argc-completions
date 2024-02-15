_patch_help() { 
    if [[ "$*" == "conda" ]] \
    || [[ "$*" == "conda env" ]] \
    ; then
        $@ --help | \
        sed '/^positional arguments:/,+1 c\commands:' | \
        sed '/(legacy):/,/^$/ d'

    elif [[ "$*" == "conda shell" ]]; then
        :;
    else
        $@ --help | \
        sed -e 's/^\(\s\+-\S\+\)\( \S\+\)\+, -/\1 -/' \
            -e 's/{\(\S\+\(,\S\+\)\+\)},\?/\1/' \
            -e '/\S\+\(,\S\+\)\{1,\}/ s/,/|/g' \

    fi
}

_patch_table() { 
    table="$( \
        _patch_table_edit_options '--name;[`_choice_env_var`]' \
    )"

    if [[ "$*" == "conda config" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--add;[`_choice_config_kv`]' \
            '--append;[`_choice_config_kv`]' \
            '--describe;[`_choice_config_key`]' \
            '--get;[`_choice_config_key`]' \
            '--prepend;[`_choice_config_kv`]' \
            '--remove;[`_choice_config_kv`]' \
            '--remove-key;[`_choice_config_key`]' \
            '--set;[`_choice_config_kv`]' \
            '--show;[`_choice_config_key`]' \

    elif [[ "$*" == "conda init" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'SHELLS;*[bash|fish|powershell|tcsh|xonsh|zsh]'

    elif [[ "$*" == "conda remove" ]] \
      || [[ "$*" == "conda update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'package_name;[`_choice_package`]'

    else
        echo "$table"
    fi
}

_choice_env_var() {
    conda info --envs | gawk '{if(match($0, /^([^# ]+)[ *]+(.*)$/, arr)) { print arr[1] "\t" arr[2] }}'
}

_choice_config_key() {
    conda config --show | yq -p yaml 'keys | .[]'
}

_choice_config_kv() {
    if _helper_check_config_flag 1; then
        _choice_config_key
    fi
}

_choice_package() {
    conda $(_argc_util_param_select_options --prefix --name) list --json | yq '.[] | .name + "	" + .version'
}

_helper_check_config_flag() {
    num="$1"
    if [[ "${#argc_add[@]}" == "$num" ]] \
    || [[ "${#argc_append[@]}" == "$num" ]] \
    || [[ "${#argc_prepend[@]}" == "$num" ]] \
    || [[ "${#argc_remove[@]}" == "$num" ]] \
    || [[ "${#argc_set[@]}" == "$num" ]] \
    ; then
        return 0
    else
        return 1
    fi
}
