_patch_help() { 
    if [[ "$*" == "conda" ]]; then
        $@ --help | sed '/^positional arguments:/,+1 c\commands:' | sed '/(legacy):/,/^$/ d'
    else
        $@ --help | sed -e 's/^\(\s\+-\S\+\)\( \S\+\)\+, -/\1 -/' \
            -e 's/{\(\S\+\(,\S\+\)\+\)},\?/\1/' \
            -e '/\S\+\(,\S\+\)\{1,\}/ s/,/|/g'
    fi
}

_patch_table() { 
    table="$(
        _patch_table_edit_options '--name;[`_choice_env_var`]'
    )"
    if [[ "$*" == "conda config" ]]; then
        echo "$table" | _patch_table_edit_options \
            '--add;[`_choice_config_kv`]' \
            '--append;[`_choice_config_kv`]' \
            '--describe;[`_choice_config_key`]' \
            '--get;[`_choice_config_key`]' \
            '--prepend;[`_choice_config_kv`]' \
            '--remove;[`_choice_config_kv`]' \
            '--remove-key;[`_choice_config_key`]' \
            '--set;[`_choice_config_kv`]' \
            '--show;[`_choice_config_key`]'
    elif [[ "$*" == "conda config" ]]; then
        _patch_table_edit_arguments ';;' 'SHELLS;*[bash|fish|powershell|tcsh|xonsh|zsh]'
    elif [[ "$*" == "conda remove" ]] || [[ "$*" == "conda update" ]]; then
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
    (set -o posix; set) | command grep argc_ > /tmp/argc-debug
    printenv | command grep ARGC_ >> /tmp/argc-debug
    if [[ "${#argc_add[@]}" -eq 2 ]] || \
        [[ "${#argc_append[@]}" -eq 2 ]] || \
        [[ "${#argc_prepend[@]}" -eq 2 ]] || \
        [[ "${#argc_remove[@]}" -eq 2 ]] || \
        [[ "${#argc_set[@]}" -eq 2 ]]; then
        :;
    elif [[ "${#argc_add[@]}" -eq 1 ]] || \
        [[ "${#argc_append[@]}" -eq 1 ]] || \
        [[ "${#argc_prepend[@]}" -eq 1 ]] || \
        [[ "${#argc_remove[@]}" -eq 1 ]] || \
        [[ "${#argc_set[@]}" -eq 1 ]]; then
        _choice_config_key
    fi
}

_choice_package() {
    conda $(_argc_util_param_select_options --prefix --name) list --json | yq '.[] | .name + "	" + .version'
}