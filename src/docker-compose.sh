_patch_table() {
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_arguments \
            'service;[`_choice_service`]'  \
            'service-num;[`_choice_service`]' \
    )"

    if [[ "$*" == "docker-compose exec" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]'  \
            'args;~[`_choice_args`]' \

    else
        echo "$table"
    fi
}

_choice_service() {
    _docker_compose config --services
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
}
