_patch_script() {
    sed 's/@arg SERVICE\(\*\)\?$/@arg SERVICE\1[`_choice_service`]/'
}

_docker_compose() {
    docker-compose $(_argc_util_select_options --file) "$@"
}

_choice_service() {
    _docker_compose config --services
}