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

    elif [[ "$*" == "docker compose cp" ]]; then
        $@ --help | sed '/Usage:/ c\Usage:  docker compose cp [OPTIONS] SRC DEST'

    elif [[ "$*" == "docker container cp" ]] \
      || [[ "$*" == "docker cp" ]] \
    ; then
        $@ --help |  sed '/Usage:/ c\Usage:  docker cp [OPTIONS] SRC DEST'

    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--platform;[`_module_oci_docker_platform`]' \
    | \
    _patch_table_edit_arguments \
        'container;[`_choice_container_name`]' \
        'image-tag;[`_module_oci_docker_image`]' \
        'image;[`_module_oci_docker_image`]' \
        'repository-tag;[`_module_oci_docker_image`]' \
    )"

    if [[ "$*" == "docker run" ]] \
    || [[ "$*" == "docker exec" ]] \
    || [[ "$*" == "docker container create" ]] \
    || [[ "$*" == "docker container exec" ]] \
    || [[ "$*" == "docker container run" ]] \
    || [[ "$*" == "docker create" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'arg;~[`_choice_args`]' \
            'args;~[`_choice_args`]' \

    elif [[ "$*" == "docker ps"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_container_ls_filter`]'

    elif [[ "$*" == "docker images"* ]] \
      || [[ "$*" == "docker image ls"* ]] \
    ; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_image_ls_filter`]'

    elif [[ "$*" == "docker builder"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'name;[`_choice_builder`]'

    elif [[ "$*" == "docker buildx"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'name;[`_choice_builder`]'

    elif [[ "$*" == "docker compose"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments \
                'service;[`_choice_compose_service`]' \
                'services;[`_choice_compose_service`]' \
        )"

        if [[ "$*" == "docker compose" ]]; then
            echo "$table" | _patch_table_edit_commands 'convert(convert, config)'

        elif [[ "$*" == "docker compose cp" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'src;[`_choice_compose_cp`]' \
                'dest;[`_choice_compose_cp`]' \

        elif [[ "$*" == "docker compose exec" ]] \
          || [[ "$*" == "docker compose run" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'command;[`_module_os_command`]' \
                'arg;~[`_choice_args`]' \
                'args;~[`_choice_args`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "docker container" ]]; then
        echo "$table" | _patch_table_edit_commands 'ls(ls, list, ps)'

    elif [[ "$*" == "docker container cp"* ]] \
      || [[ "$*" == "docker cp"* ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'src;[`_choice_container_cp`]' \
            'dest;[`_choice_container_cp`]' \

    elif [[ "$*" == "docker container logs" ]] \
      || [[ "$*" == "docker container rm" ]] \
      || [[ "$*" == "docker logs" ]] \
      || [[ "$*" == "docker rm" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments 'container;[`_choice_container_name_all`]' \

    elif [[ "$*" == "docker container ls"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_container_ls_filter`]'

    elif [[ "$*" == "docker context"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'context;[`_choice_context`]'

    elif [[ "$*" == "docker image" ]]; then
        echo "$table" | _patch_table_edit_commands 'ls(ls, list, ps)'

    elif [[ "$*" == "docker image tag"* ]] \
      || [[ "$*" == "docker tag"* ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'source_image-tag;[`_module_oci_docker_image`]' \
            'target_image-tag;[`_module_oci_docker_image`]' \

    elif [[ "$*" == "docker network"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'network;[`_choice_network`]'

    elif [[ "$*" == "docker plugin"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'plugin;[`_choice_plugin`]'  'plugin-tag;[`_choice_plugin`]'

    elif [[ "$*" == "docker trust"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'repository;[`_choice_repository`]'

    elif [[ "$*" == "docker volume"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'volume;[`_choice_volume`]'

    elif [[ "$*" == "docker events"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_event_filter`]'

    elif [[ "$*" == "docker config"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'config;[`_choice_config`]'

    elif [[ "$*" == "docker node"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'node;[`_choice_node`]'

    elif [[ "$*" == "docker secret"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'secret;[`_choice_secret`]'

    elif [[ "$*" == "docker service"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'service;[`_choice_service`]' 'service-replicas;[`_choice_service`]'

    elif [[ "$*" == "docker stack"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'stack;[`_choice_stack`]'

    else
        echo "$table"
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_container_name() {
    _docker ps --format '{{.Names}}\t{{.Image}} ({{.Status}})'
}

_choice_container_ls_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
id=`_choice_container_id`
name=`_choice_container_name`
label=
exited
status=created,dead,exited,paused,restarting,running,removing
ancestor=`_module_oci_docker_image`
before=`_choice_container_name`
since=`_choice_container_name`
volume=`_choice_volume`
network=`_choice_network`
publish=
expose=
health=healthy,none,starting,unhealthy
isolation=default,process,hyperv
is-task=true,false
EOF
}

_choice_image_ls_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
dangling=true,false
label=
before=`_module_oci_docker_image`
since=`_module_oci_docker_image`
reference=`_module_oci_docker_image`
EOF
}

_choice_builder() {
    _docker buildx ls | tail -n +2 | gawk '{if (match($0, /^\w+/)) {print $1} }'
}

_choice_compose_service() {
    _docker compose convert --services
}

_choice_compose_cp() {
    _complete_compose_service_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_compose_service | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            _docker compose exec "${argc__kv_key}" ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_compose_service_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_compose_service_path
        fi
    fi
}

_choice_container_cp() {
    _complete_container_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_container_name | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            _docker exec "${argc__kv_key}" ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_container_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_container_path
        fi
    fi
}

_choice_container_name_all() {
    _docker ps -a --format '{{.Names}}\t{{.Image}} ({{.Status}})'
}

_choice_context() {
    _docker context list --format '{{.Name}}\t{{.Description}}'
}

_choice_network() {
    _docker network list --format '{{.Name}}\t{{.Driver}}/{{.Scope}}'
}

_choice_plugin() {
    _docker plugin list --format '{{.Name}}\t{{.Description}}'
}

_choice_repository() {
    _docker image ls --format '{{.Repository}}'
}

_choice_volume() {
    _docker volume list --format '{{.Name}}\t{{.Driver}}'
}

_choice_event_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
config=`_choice_config`
container=`_choice_container_name`
daemon=
event=attach,commit,connect,copy,create,delete,destroy,detach,die,disable,disconnect,enable,exec_create,exec_detach,exec_start,export,health_status,import,install,kill,load,mount,oom,pause,pull,push,reload,remove,rename,resize,restart,save,start,stop,tag,top,unmount,unpause,untag,update
image=`_module_oci_docker_image`
label=
network=`_choice_network`
node=`_choice_node`
plugin=`_choice_plugin`
scope=local,swarm
secret=`_choice_secret`
service=`_choice_service`
type=container,daemon,image,network,volume
volume=`_choice_volume`
EOF
}

_choice_config() {
    _docker config ls --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_node() {
    _docker node list --format '{{.ID}}\t{{.Hostname}} {{.ManagerStatus}}'
}

_choice_secret() {
    _docker secret list --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_service() {
    _docker service list --format '{{.Name}}\t{{.Image}} {{.Mode}} {{.Replicas}}'
}

_choice_stack() {
    _docker stack list --format '{{.Name}}\t{{.Services}} on {{.Orchestrator}}'
}

_choice_container_id() {
    _docker ps --format '{{.ID}}\t{{.Image}} ({{.Status}})'
}

_docker() {
    docker $(_argc_util_param_select_options --host --config --context) "$@"
}
