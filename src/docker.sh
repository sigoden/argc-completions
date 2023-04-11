_patch_help() {
    if [[ "$*" == "docker" ]]; then
        $@ --help
        cat <<-'EOF'
Miss Commands:
  config      Manage Swarm configs
  node        Manage Swarm nodes
  secret      Manage Swarm secrets
  service     Manage Swarm services
  stack       Manage Swarm stacks
EOF
    elif [[ "$*" == "docker container" ]]; then
        $@ --help | sed 's/ls\s\+/ls, ps, list  /'
    elif [[ "$*" == "docker image" ]]; then
        $@ --help | sed 's/ls\s\+/ls, list  /'
    elif [[ "$*" == "docker container cp" ]] || [[ "$*" == "docker cp" ]]; then
        $@ --help | sed '/Usage:/ c\Usage:  docker cp [OPTIONS] SRC DEST'
    elif [[ "$*" == "docker compose cp" ]]; then
        $@ --help | sed '/Usage:/ c\Usage:  docker compose cp [OPTIONS] SRC DEST'
    else
        $@ --help
    fi
}

_patch_script() {
    sed \
        -e '/{ docker config/, /} docker config/ s/@arg CONFIG\(\*\)\?/@arg CONFIG\1[`_choice_config`]/' \
        -e '/{ docker container cp/, /} docker container cp/ s/@arg SRC\(\*\)\?/@arg SRC\1[`_choice_container_cp`]/' \
        -e '/{ docker container cp/, /} docker container cp/ s/@arg DEST\(\*\)\?/@arg DEST\1[`_choice_container_cp`]/' \
        -e '/{ docker container list/, /} docker container list/ s/--filter <filter>\s\+/--filter[`_choice_container_ls_filter`] <filter>  /' \
        -e '/{ docker ps/, /} docker ps/ s/--filter <filter>\s\+/--filter[`_choice_container_ls_filter`] <filter>  /' \
        -e '/{ docker image list/, /} docker image list/ s/--filter <filter>\s\+/--filter[`_choice_image_ls_filter`] <filter>  /' \
        -e '/{ docker images/, /} docker images/ s/--filter <filter>\s\+/--filter[`_choice_image_ls_filter`] <filter>  /' \
        -e '/{ docker events/, /} docker events/ s/--filter <filter>\s\+/--filter[`_choice_event_filter`] <filter>  /' \
        -e '/{ docker cp/, /} docker cp/ s/@arg SRC\(\*\)\?/@arg SRC\1[`_choice_container_cp`]/' \
        -e '/{ docker cp/, /} docker cp/ s/@arg DEST\(\*\)\?/@arg DEST\1[`_choice_container_cp`]/' \
        -e '/{ docker buildx/, /} docker buildx/ s/@arg NAME\(\*\)\?$/@arg NAME\1[`_choice_builder`]/' \
        -e '/{ docker builder/, /} docker builder/ s/@arg NAME\(\*\)\?$/@arg NAME\1[`_choice_builder`]/' \
        -e '/{ docker network/, /} docker network/ s/@arg NETWORK\(\*\)\?$/@arg NETWORK\1[`_choice_network`]/' \
        -e '/{ docker context/, /} docker context/ s/@arg CONTEXT\(\*\)\?$/@arg CONTEXT\1[`_choice_context`]/' \
        -e '/{ docker node/, /} docker node/ s/@arg NODE\(\*\)\?$/@arg NODE\1[`_choice_node`]/' \
        -e '/{ docker plugin/, /} docker plugin/ s/@arg PLUGIN\(\*\)\?$/@arg PLUGIN\1[`_choice_plugin`]/' \
        -e '/{ docker secret/, /} docker secret/ s/@arg SECRET\(\*\)\?$/@arg SECRET\1[`_choice_secret`]/' \
        -e '/{ docker service/, /} docker service/ s/@arg SERVICE\(\*\)\?$/@arg SERVICE\1[`_choice_service`]/' \
        -e '/{ docker service/, /} docker service/ s/@arg SERVICE-TASK\(\*\)\?$/@arg SERVICE-TASK\1[`_choice_service`]/' \
        -e '/{ docker service/, /} docker service/ s/@arg SERVICE-REPLICAS\(\*\)\?$/@arg SERVICE-REPLICAS\1[`_choice_service`]/' \
        -e '/{ docker compose/, /} docker compose/ s/@arg SERVICE\(\*\)\?$/@arg SERVICE\1[`_choice_compose_service`]/' \
        -e '/{ docker compose/, /} docker compose/ s/@arg SERVICES\(\*\)\?$/@arg SERVICES\1[`_choice_compose_service`]/' \
        -e '/{ docker compose cp/, /} docker compose cp/ s/@arg SRC\(\*\)\?/@arg SRC\1[`_choice_compose_cp`]/' \
        -e '/{ docker compose cp/, /} docker compose cp/ s/@arg DEST\(\*\)\?/@arg DEST\1[`_choice_compose_cp`]/' \
        -e '/{ docker stack/, /} docker stack/ s/@arg STACK\(\*\)\?$/@arg STACK\1[`_choice_stack`]/' \
        -e '/{ docker volume/, /} docker volume/ s/@arg VOLUME\(\*\)\?$/@arg VOLUME\1[`_choice_volume`]/' \
        -e '/{ docker trust/, /} docker trust/ s/@arg REPOSITORY\(\*\)\?$/@arg REPOSITORY\1[`_choice_image_repo`]/' \
        -e 's/@arg CONTAINER\(\*\)\?$/@arg CONTAINER\1[`_choice_container_name`]/' \
        -e 's/@arg REPOSITORY-TAG\(\*\)\? /@arg REPOSITORY-TAG\1[`_choice_image_repo_tag`] /' \
        -e 's/@arg IMAGE\(\*\)\?$/@arg IMAGE\1[`_choice_image_repo_tag`]/' \
        -e 's/@arg IMAGE-TAG\(\*\)\?$/@arg IMAGE-TAG\1[`_choice_image_repo_tag`]/' \
        -e 's/@arg \([A-Za-z0-9_-]\+\)IMAGE-TAG\(\*\)\? /@arg \1IMAGE-TAG\2[`_choice_image_repo_tag`] /'
}

_docker() {
    docker $(_argc_util_global_options --host --config --context) "$@"
}

_choice_config() {
    _docker config ls --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_container_name() {
    _docker ps --format '{{.Names}}\t{{.Image}} ({{.Status}})'
}

_choice_container_id() {
    _docker ps --format '{{.ID}}\t{{.Image}} ({{.Status}})'
}

_choice_image_repo() {
    _docker image ls --format '{{.Repository}}'
}

_choice_image_repo_tag() {
    _docker image ls --format '{{.Repository}}:{{.Tag}}'
}

_choice_context() {
    _docker context list --format '{{.Name}}\t{{.Description}}'
}

_choice_network() {
    _docker network list --format '{{.Name}}\t{{.Driver}}/{{.Scope}}'
}

_choice_node() {
    _docker node list --format '{{.ID}}\t{{.Hostname}} {{.ManagerStatus}}'
}

_choice_plugin() {
    _docker plugin list --format '{{.Name}}\t{{.Description}}'
}

_choice_secret() {
    _docker secret list --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_service() {
    _docker service list --format '{{.Name}}\t{{.Image}} {{.Mode}} {{.Replicas}}'
}

_choice_stack() {
    _docker stack list --format '{{.Name}}\t{{.Driver}}'
}

_choice_volume() {
    _docker volume list --format '{{.Name}}\t{{.Services}} on {{.Orchestrator}}'
}

_choice_builder() {
    _docker buildx ls | tail -n +2 | awk '{if (match($0, /^\w+/)) {print $1} }'
}

_choice_container_cp() {
    if [[ "${#argc__words[@]}" -gt 1 ]]; then
        prev_arg="$(_argc_util_positional -2)"
        if [[ "$prev_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            last_arg="$(_argc_util_positional -1)"
            if [[ ! "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_container_name
            else
                _helper_container_path "$last_arg"
            fi
        fi
    else
        last_arg="$(_argc_util_positional -1)"
        if [[ "$last_arg" == "" ]] || [[ "$last_arg" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_container_name
        elif [[ "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_container_path "$last_arg"
        else
            echo "__argc_comp:file"
        fi
    fi
}

_choice_compose_service() {
    _docker compose ls --format json | jq -r '.[] | .Name'
}

_choice_compose_cp() {
    if [[ "$(_argc_util_count_positional)" -gt 1 ]]; then
        prev_arg="$(_argc_util_positional -2)"
        if [[ "$prev_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            last_arg="$(_argc_util_positional -1)"
            if [[ ! "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_compose_service
            else
                _helper_compose_service_path "$last_arg"
            fi
        fi
    else
        last_arg="$(_argc_util_positional -1)"
        if [[ "$last_arg" == "" ]] || [[ "$last_arg" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_compose_service
        elif [[ "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_compose_service_path "$last_arg"
        else
            echo "__argc_comp:file"
        fi
    fi
}

_choice_container_ls_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            ancestor)
                _choice_image_repo_tag
                ;;
            before | since)
                _choice_container_name
                ;;
            health)
                health_opts=('healthy' 'none' 'starting' 'unhealthy')
                printf "%s\n" "${health_opts[@]}"
                ;;
            id)
                _choice_container_id
                ;;
            is-task)
                bool_opts=('true' 'false')
                printf "%s\n" "${bool_opts[@]}"
                ;;
            isolation)
                isolation_opts=('default' 'process' 'hyperv')
                printf "%s\n" "${isolation_opts[@]}"
                ;;
            name)
                _choice_container_name
                ;;
            network)
                _choice_network
                ;;
            status)
                status_opts=('created' 'dead' 'exited' 'paused' 'restarting' 'running' 'removing')
                printf "%s\n" "${status_opts[@]}"
                ;;
            volume)
                _choice_volume
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('ancestor' 'before' 'exited' 'expose' 'health' 'id' 'label' 'name' 'network' 'publish' 'since' 'status' 'volume')
        printf "%s=\n" "${opts[@]}"
    fi
}

_choice_image_ls_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            before|reference|since)
                _choice_image_repo_tag
                ;;
            dangling)
                bool_opts=('true' 'false')
                printf "%s\n" "${bool_opts[@]}"
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('before' 'dangling' 'label' 'reference' 'since')
        printf "%s=\n" "${opts[@]}"
    fi
}

_choice_event_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            config)
                _choice_config
                ;;
            container)
                _choice_container_name
                ;;
            event)
                event_opts=('attach' 'commit' 'connect' 'copy' 'create' 'delete' 'destroy' 'detach' 'die' 'disable' 'disconnect' 'enable' 'exec_create' 'exec_detach'
                'exec_start' 'export' 'health_status' 'import' 'install' 'kill' 'load'  'mount' 'oom' 'pause' 'pull' 'push' 'reload' 'remove' 'rename' 'resize'
                'restart' 'save' 'start' 'stop' 'tag' 'top' 'unmount' 'unpause' 'untag' 'update')
                printf "%s\n" "${event_opts[@]}"
                ;;
            image)
                _choice_image_repo_tag
                ;;
            network)
                _choice_network
                ;;
            node)
                _choice_node
                ;;
            plugin)
                _choice_plugin
                ;;
            scope)
                scope_opts=('local' 'swarm')
                printf "%s\n" "${scope_opts[@]}"
                ;;
            secret)
                _choice_secret
                ;;
            service)
                _choice_service
                ;;
            type)
                type_opts=('container' 'daemon' 'image' 'network' 'volume')
                printf "%s\n" "${type_opts[@]}"
                ;;
            volume)
                _choice_volume
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('config' 'container' 'daemon' 'event' 'image' 'label' 'network' 'node' 'plugin' 'scope' 'secret' 'service' 'type' 'volume')
        printf "%s=\n" "${opts[@]}"
    fi
}

_helper_container_path() {
    container="${1%%:*}"
    path="${1#*:}"
    if [[ "$path" == '/' ]]; then
        search_path="/"
    elif [[ "$path" != *'/' ]]; then
        search_path="$(dirname "$path")"
        if [[ "$search_path" != *'/' ]]; then
            search_path="$search_path/"
        fi
    else
        search_path="$path"
    fi
    _docker exec "$container" ls -1 -p "$search_path" | xargs -I% echo "$container:$search_path%"
}


_helper_compose_service_path() {
    container="${1%%:*}"
    path="${1#*:}"
    if [[ "$path" == '/' ]]; then
        search_path="/"
    elif [[ "$path" != *'/' ]]; then
        search_path="$(dirname "$path")"
        if [[ "$search_path" != *'/' ]]; then
            search_path="$search_path/"
        fi
    else
        search_path="$path"
    fi
    _docker exec "$container" ls -1 -p "$search_path" | xargs -I% echo "$container:$search_path%"
}
