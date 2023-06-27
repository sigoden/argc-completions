_patch_table() {
    _patch_util_edit_table_argument 'SERVICE;[`_choice_service`]'
}

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
}

_choice_service() {
    _docker_compose config --services
}