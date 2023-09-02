_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
    fi
}

_patch_table() {
    _patch_table_edit_options \
        '--passphrase;[`_choice_passphrase`]' \

}

_choice_passphrase() {
    cat <<-'EOF' | _argc_util_comp_kv :
dev=tty-stdin,stdin-once,tty-once
env=`_choice_env_key`
file=__argc_value=path
EOF
}

_choice_env_key() {
    env | sed 's/=/\t/'
}
