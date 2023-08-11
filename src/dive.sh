_patch_help() { 
    $@ --help | sed '/^Available Commands:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--ci-config(<file>)' \
        '--config(<file>)' \
        '--json(<file>)' \
        '--source;[docker|podman|docker-archive]' \
    | \
    _patch_table_edit_arguments 'image;[`_choice_image`]'

}

_choice_image() {
    docker image ls --format '{{.Repository}}:{{.Tag}}' | sed 's/:/=/' | _argc_util_comp_kv :
}
