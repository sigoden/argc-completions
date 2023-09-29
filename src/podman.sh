_patch_table() { 
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--network;[`_choice_network`]' \
        | \
        _patch_table_edit_arguments \
            'container;[`_choice_container`]' \
            'image;[`_module_oci_podman_image`]' \
            'machine;[`_choice_machine`]' \
    )"

    if [[ "$*" == "podman" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman build" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--file(<file>);pathname or URL of a Dockerfile' \

    elif [[ "$*" == "podman container" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman container cp"* ]] \
      || [[ "$*" == "podman cp"* ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'src;[`_choice_container_cp`]' \
            'dest;[`_choice_container_cp`]' \

    elif [[ "$*" == "podman container create" ]] \
      || [[ "$*" == "podman container exec" ]] \
      || [[ "$*" == "podman container run" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'arg;~[`_choice_args`]' \

    elif [[ "$*" == "podman create" ]] \
      || [[ "$*" == "podman exec" ]] \
      || [[ "$*" == "podman run" ]] \
      || [[ "$*" == "podman unshare" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'arg;~[`_choice_args`]' \

    elif [[ "$*" == "podman generate systemd" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'value;[`_choice_container_pod`]' \

    elif [[ "$*" == "podman image" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman image build" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--file(<file>);;pathname or URL of a Dockerfile' \
            '--network;[private|none|ns:|host]' \

    elif [[ "$*" == "podman image list" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--sort(<kind>);[size|tag|created|id|repository];Sort by kind' \

    elif [[ "$*" == "podman images" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--sort(<kind>);[size|tag|created|id|repository];Sort by kind' \

    elif [[ "$*" == "podman inspect" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--type;[image|container|all]' \
        | \
        _patch_table_edit_arguments ';;' 'name'

    elif [[ "$*" == "podman machine" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \

    elif [[ "$*" == "podman machine ssh" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'arg;~[`_choice_args`]' \

    elif [[ "$*" == "podman network"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments \
                'network;[`_choice_network`]' \
        )"

        if [[ "$*" == "podman network" ]]; then
            echo "$table" | \
            _patch_table_edit_commands \
                'rm(rm, remove)' \

        else
            echo "$table"
        fi
        
    elif [[ "$*" == "podman pod"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments \
                'pod;[`_choice_pod`]' \
        )"

        if [[ "$*" == "podman pod" ]]; then
            echo "$table" | \
            _patch_table_edit_commands \
                'ps(ps, ls, list)' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "podman secret"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments \
                'secret;[`_choice_secret`]' \
        )"

        if [[ "$*" == "podman secret" ]]; then
            echo "$table" | \
            _patch_table_edit_commands \
                'ls(ls, list)' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "podman system connection" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'remove(remove, rm)' \
            'rename(rename, mv)' \
            'ls(ls, list)' \

    elif [[ "$*" == "podman volume"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_arguments \
                'volume;[`_choice_volume`]' \
        )"

        if [[ "$*" == "podman volume" ]]; then
            echo "$table" | \
            _patch_table_edit_commands \
                'ls(ls, list)' \
                'rm(rm, remove)' \

        else
            echo "$table"
        fi

    else
        echo "$table"
    fi
}

_choice_container() {
    podman ps --format json | yq '.[] | .Names[0] + "	" + .Image' 
}

_choice_network() {
    podman network ls --format json | yq '.[].Name'
}

_choice_container_cp() {
    _complete_container_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_container | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            podman exec "${argc__kv_key}" ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
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

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_container_pod() {
    _argc_util_parallel _choice_container ::: _choice_pod
}

_choice_machine() {
    podman machine list | gawk '{ if (NR > 1) { gsub(/\*$/, "", $1); print $1}}'
}

_choice_pod() {
    podman pod list --format json | yq '.[].Name'
}

_choice_secret() {
    podman secret list --format '{{.Name}}'
}

_choice_volume() {
    podman volume list --format json | yq '.[] | .Name + "	" + .Driver'
}
