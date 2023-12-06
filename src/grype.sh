_patch_table() {
    _extract_choices() {
        gawk '{
            if (match($0, /\[([^A-Z]\S+( [^A-Z]\S+)+)\]/, arr)) {
                gsub(" ", "|", arr[1])
                gsub(",", "", arr[1])
                print $0 " # [" arr[1] "]" 
            } else { print }
        }'
    }

    table="$( \
        _patch_table_detect_value_type | \
        _extract_choices | \
        _patch_table_edit_options \
            '--platform;[`_module_oci_docker_platform`]' \
    )"

    if [[ "$*" == "grype" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'image;[`_choice_image`]'

    else
        echo "$table"
    fi
}

_choice_image() {
    if [[ $ARGC_CWORD != *':'* ]]; then
        _argc_util_comp_path
    fi
    _argc_util_parallel _module_oci_docker_image ::: _choice_provider
}

_choice_docker_image() {
    if [[ "$argc__kv_filter" == *':'* ]]; then
        prefix="$argc__kv_prefix${argc__kv_filter%%:*}:"
    else
        prefix="$argc__kv_prefix"
    fi
    ARGC_CWORD="$argc__kv_filter" _module_oci_docker_image
    echo "__argc_prefix=$prefix"
}

_choice_podman_image() {
    if [[ "$argc__kv_filter" == *':'* ]]; then
        prefix="$argc__kv_prefix${argc__kv_filter%%:*}:"
    else
        prefix="$argc__kv_prefix"
    fi
    ARGC_CWORD="$argc__kv_filter" _module_oci_podman_image
    echo "__argc_prefix=$prefix"
}

_choice_provider() {
    cat <<-'EOF' | _argc_util_comp_kv :
podman=`_choice_podman_image`;;use the Podman daemon
docker=`_choice_docker_image`;;use the Docker daemon
docker-archive=__argc_value=file;;use a tarball from disk for archives created from "docker save"
oci-archive=__argc_value=file;;use a tarball from disk for OCI archives (from Podman or otherwise)
oci-dir=__argc_value=file;;read directly from a path on disk for OCI layout directories (from Skopeo or otherwise)
singularity=__argc_value=file;;read directly from a Singularity Image Format (SIF) container on disk
dir=__argc_value=dir;;read directly from a path on disk (any directory)
sbom=__argc_value=file;;read Syft JSON from path on disk
registry=;;pull image directly from a registry
purl=__argc_value=file;;read a newline separated file of purls from a path on disk
EOF
}
