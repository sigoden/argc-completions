_patch_table() { 
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--network;[`_choice_network`]' \
        | \
        _patch_table_edit_arguments \
            'container;[`_choice_container`]' \
            'image;[`_module_oci_podman_image`]' \
    )"

    if [[ "$*" == "podman" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman container" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman container cp"* ]] || [[ "$*" == "podman cp"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'SRC;[`_choice_container_cp`]' \
            'DEST;[`_choice_container_cp`]' \

    elif [[ "$*" == "podman image" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \
            'unmount(unmount, umount)' \

    elif [[ "$*" == "podman machine" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \

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
        
    elif [[ "$*" == "podman image build" ]]; then
        echo "$table" | \
        _patch_table_edit_options '--network;[private|none|ns:|host]'

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

    elif [[ "$*" == "podman system connection" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'ls(ls, list)' \
            'remove(remove, rm)' \
            'rename(rename, mv)' \

    else
        echo "$table"
    fi
}

_choice_container() {
    podman ps --format json | yq '.[] | .Names[0] + "	" + .Image' 
}

_choice_pod() {
    podman pod list --format json | yq '.[].Name'
}

_choice_volume() {
    podman volume list --format json | yq '.[] | .Name + "	" + .Driver'
}

_choice_network() {
    podman network ls --format json | yq '.[].Name'
}

_choice_secret() {
    podman secret list --format '{{.Name}}'
}

_choice_container_cp() {
    _argc_util_mode_kv ':'
    _complete_container_path() {
        if [[ -z "$argc__kv_prefix" ]]; then
            echo "__argc_value=path"
            if ! _argc_util_is_path "$src"; then
                _choice_container | _argc_util_transform suffix=: nospace
            fi
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