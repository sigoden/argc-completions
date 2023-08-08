_patch_table() {
    _patch_table_edit_arguments \
        'service;[`_choice_service`]'  \
        'service-num;[`_choice_service`]' \

}

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
}

_choice_service() {
    _docker_compose config --services
}