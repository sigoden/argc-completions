_patch_help() { 
    $@ --help | sed 's/-h, --help/    --help/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_choice_group`]' \
        '--user;[`_choice_user`]' \
        '--other-user;[`_choice_user`]' \
        '--preserve-env;[`_choice_env_var`]' | \
    _patch_table_edit_arguments ';;' 'CMD;[`_choice_cmd`]' 'ARGS;~[`_choice_args`]'
}

_choice_cmd() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 0
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_choice_env_var() {
    env | _argc_util_transform format== | _argc_util_comp_multi ,
}