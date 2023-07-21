_module_oci_docker_image() {
    docker image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
}

_module_oci_docker_platform() {
    command cat <<-'EOF'
linux/amd64
linux/arm64
linux/ppc64le
linux/s390x
linux/386
linux/arm/v7
linux/arm/v6
EOF
}

_module_oci_podman_image() {
    podman image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
}