_patch_help() { 
    $@ --help | _patch_help_preprocess_cobra
}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '--driver(<value>);[virtualbox|vmwarefusion|kvm2|qemu2|qemu|vmware|none|docker|podman|ssh|auto-detect]' \
            '--file(<file>)' \
            '--namespace;[`_choice_namespace`]' \
            '--node;[`_choice_node`]' \
            '--output;[text|json]' \
    )"

    if [[ "$*" == "minikube start" ]]; then
        echo "$table" | \
        _patch_table_dedup_options '--driver' | \
        _patch_table_edit_options \
            '--addons;*,[`_choice_addon`]' \
            '--base-image(<image>);[`_module_oci_docker_image`]' \
            '--cni;[`_choice_cni`]' \
            '--container-runtime;[docker|cri-o|containerd]' \
            '--cri-socket(<file>)' \
            '--driver(<value>);[virtualbox|vmwarefusion|kvm2|qemu2|qemu|vmware|none|docker|podman|ssh|auto-detect]' \
            '--host-only-nic-type;[Am79C970A|Am79C973|82540EM|82543GC|82545EM|virtio]' \
            '--hyperkit-vpnkit-sock;[`_choice_vnpkit_sock`]' \
            '--iso-url(<url>);*,;Locations to fetch the minikube ISO from.' \
            '--mount-string;[`_choice_mount_string`]' \
            '--nat-nic-type;[Am79C970A|Am79C973|82540EM|82543GC|82545EM|virtio]' \
            '--ssh-key(<file>)' \

    elif [[ "$*" == "minikube docker-env" ]]; then
        echo "$table" | _patch_table_edit_options "--format(<value>)"

    elif [[ "$*" == "minikube image"* ]]; then
        if [[ "$*" == "minikube image load" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'image;[`_choice_load_image`]'

        elif [[ "$*" == "minikube image save" ]]; then
            echo "$table" | _patch_table_edit_arguments 'image;[`_choice_image`]' 'archive(archive <path>)'

        else
            echo "$table" | _patch_table_edit_arguments 'image;[`_choice_image`]'
        fi

    elif [[ "$*" == "minikube addons"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'addon_name;[`_choice_addon`]'

    elif [[ "$*" == "minikube config"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'property_name;[`_choice_property_name`]'

    elif [[ "$*" == "minikube profile" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'minikube_profile_name'

    elif [[ "$*" == "minikube mount" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'src:dest;[`_choice_mount`]'

    elif [[ "$*" == "minikube kubectl" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'args;~[`_choice_kubectl`]'

    elif [[ "$*" == "minikube cp" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'src;[`_choice_cp`]' 'dest;[`_choice_cp`]'

    elif [[ "$*" == "minikube license" ]]; then
        echo "$table" | _patch_table_edit_options '--dir(<dir>)'

    else
        echo "$table"
    fi
}

_choice_addon() {
    minikube addons list --output json  | yq 'keys | .[]'
}

_choice_cni() {
    if _argc_util_has_path_prefix "$argc_cni"; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto bridge calico cilium flannel kindnet
}

_choice_vnpkit_sock() {
    if _argc_util_has_path_prefix "$argc_hyperkit_vpnkit_sock"; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto
}

_choice_mount_string() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path suffix=:
    else
        echo /minikube-host
    fi
}

_choice_namespace() {
    minikube kubectl get namespaces | tail -n +2 | gawk '{print $1}'
}

_choice_node() {
    minikube node list
}

_choice_load_image() {
    if _argc_util_has_path_prefix "$argc_image"; then
        _argc_util_comp_path
        return
    fi
    _module_oci_docker_image
}

_choice_image() {
    minikube image ls
}

_choice_property_name() {
    cat <<-'EOF'
driver
vm-driver
container-runtime
feature-gates
v
cpus
disk-size
host-only-cidr
memory
log_dir
kubernetes-version
iso-url
WantUpdateNotification
WantBetaUpdateNotification
ReminderWaitPeriodInHours
WantNoneDriverWarning
WantVirtualBoxDriverWarning
profile
bootstrapper
insecure-registry
hyperv-virtual-switch
disable-driver-mounts
cache
EmbedCerts
native-ssh
rootless
MaxAuditEntries
EOF
}

_choice_mount() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path suffix=:
    else
        _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
        if [[ -z "$argc__kv_filter" ]]; then
            echo -e "/\0"
            return
        fi
        minikube ssh "ls -1 -p '$argc__parts_local_prefix'" | _argc_util_transform nospaceIfEnd=/
    fi
}

_choice_kubectl() {
    _argc_util_comp_subcommand 0 kubectl
}

_choice_cp() {
    _complete_node_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_node | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            minikube ssh --node "${argc__kv_key}"  "ls -1 -p '$argc__parts_local_prefix'" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_node_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_node_path
        fi
    fi
}
