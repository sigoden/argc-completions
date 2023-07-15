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
    elif [[ "$*" == "docker container cp" ]] || [[ "$*" == "docker cp" ]]; then
        $@ --help | sed '/Usage:/ c\Usage:  docker cp [OPTIONS] SRC DEST'
    elif [[ "$*" == "docker compose cp" ]]; then
        $@ --help | sed '/Usage:/ c\Usage:  docker compose cp [OPTIONS] SRC DEST'
    else
        $@ --help
    fi
}

_patch_table() {
    table="$(_patch_table_edit_arguments \
        'CONTAINER;[`_choice_container_name`]' \
        'REPOSITORY[:TAG];[`_choice_image_repo_tag`]' \
        'IMAGE;[`_choice_image_repo_tag`]' \
    )"
    if [[ "$*" == "docker config"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'CONFIG;[`_choice_config`]'
    elif [[ "$*" == "docker compose"* ]]; then
        table="$(echo "$table" | _patch_table_edit_arguments 'SERVICE;[`_choice_compose_service`]' 'SERVICES;[`_choice_compose_service`]')"
        if [[ "$*" == "docker compose" ]]; then
            echo "$table" | _patch_table_edit_commands 'convert(convert, config)'
        elif [[ "$*" == "docker compose cp" ]]; then
            echo "$table" | _patch_table_edit_arguments 'SRC;[`_choice_compose_cp`]' 'DEST;[`_choice_compose_cp`]'
        else
            echo "$table"
        fi
    elif [[ "$*" == "docker container" ]]; then
        echo "$table" | _patch_table_edit_commands 'ls(ls, list, ps)'
    elif [[ "$*" == "docker container cp"* ]] || [[ "$*" == "docker cp"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'SRC;[`_choice_container_cp`]' 'DEST;[`_choice_container_cp`]'
    elif [[ "$*" == "docker container list"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_container_ls_filter`]'
    elif [[ "$*" == "docker ps"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_container_ls_filter`]'
    elif [[ "$*" == "docker image" ]]; then
        echo "$table" | _patch_table_edit_commands 'ls(ls, list, ps)'
    elif [[ "$*" == "docker image list"* ]] || [[ "$*" == "docker images"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_image_ls_filter`]'
    elif [[ "$*" == "docker image tag"* ]] || [[ "$*" == "docker tag"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'SOURCE_IMAGE;[`_choice_image_repo_tag`]' 'TARGET_IMAGE;[`_choice_image_repo_tag`]'
    elif [[ "$*" == "docker events"* ]]; then
        echo "$table" | _patch_table_edit_options '--filter;[`_choice_event_filter`]'
    elif [[ "$*" == "docker buildx"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'NAME;[`_choice_builder`]'
    elif [[ "$*" == "docker builder"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'NAME;[`_choice_builder`]'
    elif [[ "$*" == "docker network"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'NETWORK;[`_choice_network`]'
    elif [[ "$*" == "docker context"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'CONTEXT;[`_choice_context`]'
    elif [[ "$*" == "docker node"* ]]; then
        if [[ "$*" == "docker node inspect" ]]; then
            echo "$table" | _patch_table_edit_arguments "" 'NODE;*[`_choice_image_repo`]'
        else
            echo "$table" | _patch_table_edit_arguments 'NODE;[`_choice_node`]'
        fi
    elif [[ "$*" == "docker plugin"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'PLUGIN;[`_choice_plugin`]'
    elif [[ "$*" == "docker secret"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'SECRET;[`_choice_secret`]'
    elif [[ "$*" == "docker service"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'SERVICE;[`_choice_service`]'
    elif [[ "$*" == "docker stack"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'STACK;[`_choice_stack`]'
    elif [[ "$*" == "docker volume"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'VOLUME;[`_choice_volume`]'
    elif [[ "$*" == "docker trust"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'REPOSITORY;[`_choice_image_repo`]'
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
    _docker buildx ls | tail -n +2 | gawk '{if (match($0, /^\w+/)) {print $1} }'
}

_choice_container_cp() {
    _argc_util_mode_kv ':'
    _complete_container_path() {
        if [[ -z "$argc__kv_prefix" ]]; then
            echo "__argc_value=file"
            if ! _argc_util_is_path "$src"; then
                _choice_container_name | _argc_util_transform suffix=: nospace
            fi
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
            echo "__argc_value=file"
        else
            _complete_container_path
        fi
    fi
}

_choice_compose_service() {
    _docker compose convert --services
}

_choice_compose_cp() {
    _argc_util_mode_kv ':'
    _complete_compose_service_path() {
        if [[ -z "$argc__kv_prefix" ]]; then
            echo "__argc_value=file"
            if ! _argc_util_is_path "$src"; then
                _choice_compose_service | _argc_util_transform suffix=: nospace
            fi
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
            echo "__argc_value=file"
        else
            _complete_compose_service_path
        fi
    fi
}

_choice_container_ls_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
id=`_choice_container_id`
name=`_choice_container_name`
label=
exited
status=created,dead,exited,paused,restarting,running,removing
ancestor=`_choice_image_repo_tag`
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
before=`_choice_image_repo_tag`
since=`_choice_image_repo_tag`
reference=`_choice_image_repo_tag`
EOF
}

_choice_event_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
config=`_choice_config`
container=`_choice_container_name`
daemon=
event=attach,commit,connect,copy,create,delete,destroy,detach,die,disable,disconnect,enable,exec_create,exec_detach,exec_start,export,health_status,import,install,kill,load,mount,oom,pause,pull,push,reload,remove,rename,resize,restart,save,start,stop,tag,top,unmount,unpause,untag,update
image=`_choice_image_repo_tag`
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