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

_patch_table() {
    table="$(_patch_util_bind_choice_fn \
        'CONTAINER:_choice_container_name' \
        'REPOSITORY\[:TAG\]:_choice_image_repo_tag' \
        'IMAGE:_choice_image_repo_tag' \
    )"
    if [[ "$*" == "docker config"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'CONFIG:_choice_config'
    elif [[ "$*" == "docker compose cp"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SRC:_choice_compose_cp' 'DEST:_choice_compose_cp'
    elif [[ "$*" == "docker compose"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SERVICE:_choice_compose_service' 'SERVICES:_choice_compose_service' 
    elif [[ "$*" == "docker container cp"* ]] || [[ "$*" == "docker cp"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SRC:_choice_container_cp' 'DEST:_choice_container_cp'
    elif [[ "$*" == "docker container list"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn '--filter:_choice_container_ls_filter'
    elif [[ "$*" == "docker ps"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn '--filter:_choice_container_ls_filter'
    elif [[ "$*" == "docker image list"* ]] || [[ "$*" == "docker images"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn '--filter:_choice_image_ls_filter'
    elif [[ "$*" == "docker image tag"* ]] || [[ "$*" == "docker tag"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SOURCE_IMAGE:_choice_image_repo_tag' 'TARGET_IMAGE:_choice_image_repo_tag'
    elif [[ "$*" == "docker events"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn '--filter:_choice_event_filter'
    elif [[ "$*" == "docker buildx"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'NAME:_choice_builder'
    elif [[ "$*" == "docker builder"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'NAME:_choice_builder'
    elif [[ "$*" == "docker network"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'NETWORK:_choice_network'
    elif [[ "$*" == "docker context"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'CONTEXT:_choice_context'
    elif [[ "$*" == "docker node"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'NODE:_choice_node'
    elif [[ "$*" == "docker plugin"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'PLUGIN:_choice_plugin'
    elif [[ "$*" == "docker secret"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SECRET:_choice_secret'
    elif [[ "$*" == "docker service"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'SERVICE:_choice_service'
    elif [[ "$*" == "docker stack"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'STACK:_choice_stack'
    elif [[ "$*" == "docker volume"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'VOLUME:_choice_volume'
    elif [[ "$*" == "docker trust"* ]]; then
        echo "$table" | _patch_util_bind_choice_fn 'REPOSITORY:_choice_image_repo' 'IMAGE:_choice_image_repo_tag'
    else
        echo "$table"
    fi
}

_docker() {
    docker $(_argc_util_param_select_options --host --config --context) "$@"
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
    src="$(_argc_util_param_get_positional 0)"
    dest="$(_argc_util_param_get_positional 1)"
    if [ -n "$dest" ]]; then
        if [[ "$src" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            if [[ ! "$dest" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_container_name
            else
                _helper_container_path "$dest"
            fi
        fi
    else
        if [[ "$src" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_container_name
        elif [[ "$src" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_container_path "$src"
        else
            echo "__argc_comp:file"
        fi
    fi
}

_choice_compose_service() {
    _docker compose ls --format json | jq -r '.[] | .Name'
}

_choice_compose_cp() {
    src="$(_argc_util_param_get_positional 0)"
    dest="$(_argc_util_param_get_positional 1)"
    if [ -n "$dest" ]]; then
        if [[ "$src" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            if [[ ! "$dest" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_compose_service
            else
                _helper_compose_service_path "$dest"
            fi
        fi
    else
        if [[ "$src" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_compose_service
        elif [[ "$src" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_compose_service_path "$src"
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
    if [[ "$path" == '' ]] || [[ "$path" == '/' ]]; then
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
    service="${1%%:*}"
    path="${1#*:}"
    if [[ "$path" == '' ]] || [[ "$path" == '/' ]]; then
        search_path="/"
    elif [[ "$path" != *'/' ]]; then
        search_path="$(dirname "$path")"
        if [[ "$search_path" != *'/' ]]; then
            search_path="$search_path/"
        fi
    else
        search_path="$path"
    fi
    _docker compose exec "$service" ls -1 -p "$search_path" | xargs -I% echo "$service:$search_path%"
}
