_patch_table() {
    _patch_util_add_extra_column 'SERVICE:[`_choice_service`]'
}

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
}

_choice_service() {
    _docker_compose config --services
}