#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --base-path <dir>            base directory for scanning, no links will be followed above this directory, and all paths will be reported relative to this directory
# @option --catalogers* <string>       enable one or more package catalogers
# @option -c --config <file>           syft configuration file
# @option --exclude* <path>            exclude paths from being scanned using a glob expression
# @option --file <file>                file to write the default report output to (default is STDOUT) (DEPRECATED: use: output)
# @flag -h --help                      help for syft
# @option --name <string>              set the name of the target being analyzed (DEPRECATED: use: source-name)
# @option -o --output*[cyclonedx-json|cyclonedx-xml|github-json|spdx-json|spdx-tag-value|syft-json|syft-table|syft-text|template]|(default|[syft-table] <file>  report output format (<format>=<file> to output to a file), formats=[cyclonedx-json cyclonedx-xml github-json spdx-json spdx-tag-value syft-json syft-table syft-text template] (default [syft-table])
# @option --platform[`_module_oci_docker_platform`] <string>  an optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')
# @flag -q --quiet                     suppress all logging output
# @option -s --scope[squashed|all-layers] <string>  selection of layers to catalog, options=[squashed all-layers] (default "squashed")
# @option --source-name <string>       set the name of the target being analyzed
# @option --source-version <string>    set the version of the target being analyzed
# @option -t --template <file>         specify the path to a Go template file
# @option -v --verbose <count>         increase verbosity (-v = info, -vv = debug)
# @flag --version                      version for syft
# @arg source[`_choice_source`]

# {{ syft attest
# @cmd Generate an SBOM as an attestation for the given [SOURCE] container image
# @option --base-path <dir>            base directory for scanning, no links will be followed above this directory, and all paths will be reported relative to this directory
# @option --catalogers* <string>       enable one or more package catalogers
# @option --exclude* <path>            exclude paths from being scanned using a glob expression
# @flag -h --help                      help for attest
# @option --name <string>              set the name of the target being analyzed (DEPRECATED: use: source-name)
# @option -o --output*[cyclonedx-json|cyclonedx-xml|github-json|spdx-json|spdx-tag-value|syft-json|syft-table|syft-text|template]|(default|[syft-json] <file>  report output format (<format>=<file> to output to a file), formats=[cyclonedx-json cyclonedx-xml github-json spdx-json spdx-tag-value syft-json syft-table syft-text template] (default [syft-json])
# @option --platform[`_module_oci_docker_platform`] <string>  an optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')
# @option -s --scope[squashed|all-layers] <string>  selection of layers to catalog, options=[squashed all-layers] (default "squashed")
# @option --source-name <string>       set the name of the target being analyzed
# @option --source-version <string>    set the version of the target being analyzed
# @option -c --config <file>           syft configuration file
# @flag -q --quiet                     suppress all logging output
# @option -v --verbose <count>         increase verbosity (-v = info, -vv = debug)
# @arg source[`_choice_source`]
attest() {
    :;
}
# }} syft attest

# {{ syft completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help                 help for completion
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
completion() {
    :;
}

# {{{ syft completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help                 help for bash
# @flag --no-descriptions         disable completion descriptions
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
completion::bash() {
    :;
}
# }}} syft completion bash

# {{{ syft completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help                 help for fish
# @flag --no-descriptions         disable completion descriptions
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
completion::fish() {
    :;
}
# }}} syft completion fish

# {{{ syft completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help                 help for powershell
# @flag --no-descriptions         disable completion descriptions
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
completion::powershell() {
    :;
}
# }}} syft completion powershell

# {{{ syft completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help                 help for zsh
# @flag --no-descriptions         disable completion descriptions
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
completion::zsh() {
    :;
}
# }}} syft completion zsh
# }} syft completion

# {{ syft convert
# @cmd Convert between SBOM formats
# @option --file <file>           file to write the default report output to (default is STDOUT) (DEPRECATED: use: output)
# @flag -h --help                 help for convert
# @option -o --output*[cyclonedx-json|cyclonedx-xml|github-json|spdx-json|spdx-tag-value|syft-json|syft-table|syft-text|template]|(default|[syft-table] <file>  report output format (<format>=<file> to output to a file), formats=[cyclonedx-json cyclonedx-xml github-json spdx-json spdx-tag-value syft-json syft-table syft-text template] (default [syft-table])
# @option -t --template <file>    specify the path to a Go template file
# @option -c --config <file>      syft configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
# @arg source-sbom-file
# @arg format[`_choice_convert_format`]
convert() {
    :;
}
# }} syft convert

# {{ syft login
# @cmd Log in to a registry
# @flag -h --help                   help for login
# @option -p --password <string>    Password
# @flag --password-stdin            Take the password from stdin
# @option -u --username <string>    Username
# @option -c --config <file>        syft configuration file
# @flag -q --quiet                  suppress all logging output
# @option -v --verbose <count>      increase verbosity (-v = info, -vv = debug)
# @arg server
login() {
    :;
}
# }} syft login

# {{ syft packages
# @cmd Generate a package SBOM
# @option --base-path <dir>            base directory for scanning, no links will be followed above this directory, and all paths will be reported relative to this directory
# @option --catalogers* <string>       enable one or more package catalogers
# @option --exclude* <path>            exclude paths from being scanned using a glob expression
# @option --file <file>                file to write the default report output to (default is STDOUT) (DEPRECATED: use: output)
# @flag -h --help                      help for packages
# @option --name <string>              set the name of the target being analyzed (DEPRECATED: use: source-name)
# @option -o --output*[cyclonedx-json|cyclonedx-xml|github-json|spdx-json|spdx-tag-value|syft-json|syft-table|syft-text|template]|(default|[syft-table] <file>  report output format (<format>=<file> to output to a file), formats=[cyclonedx-json cyclonedx-xml github-json spdx-json spdx-tag-value syft-json syft-table syft-text template] (default [syft-table])
# @option --platform[`_module_oci_docker_platform`] <string>  an optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')
# @option -s --scope[squashed|all-layers] <string>  selection of layers to catalog, options=[squashed all-layers] (default "squashed")
# @option --source-name <string>       set the name of the target being analyzed
# @option --source-version <string>    set the version of the target being analyzed
# @option -t --template <file>         specify the path to a Go template file
# @option -c --config <file>           syft configuration file
# @flag -q --quiet                     suppress all logging output
# @option -v --verbose <count>         increase verbosity (-v = info, -vv = debug)
# @arg source
packages() {
    :;
}
# }} syft packages

# {{ syft version
# @cmd show version information
# @flag -h --help                            help for version
# @option -o --output[text|json] <string>    the format to show the results (allowable: [text json]) (default "text")
# @option -c --config <file>                 syft configuration file
# @flag -q --quiet                           suppress all logging output
# @option -v --verbose <count>               increase verbosity (-v = info, -vv = debug)
version() {
    :;
}
# }} syft version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_source() {
    if [[ $ARGC_CWORD != *':'* ]]; then
        _argc_util_comp_path
    fi
    _argc_util_parallel _module_oci_docker_image ::: _choice_provider
}

_choice_convert_format() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s=\n" spdx-json cyclonedx-json syft-json
    else
        _argc_util_comp_path
    fi
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
docker=`_choice_docker_image`;;use the Docker daemon
podman=`_choice_podman_image`;;use the Podman daemon
registry=;;pull image directly from a registry
docker-archive=__argc_value=file;;use a tarball from disk for archives created from "docker save"
oci-archive=__argc_value=file;;use a tarball from disk for OCI archives (from Podman or otherwise)
oci-dir=__argc_value=file;;read directly from a path on disk for OCI layout directories (from Skopeo or otherwise)
singularity=__argc_value=file;;read directly from a Singularity Image Format (SIF) container on disk
dir=__argc_value=dir;;read directly from a path on disk (any directory)
file=__argc_value=file;;read directly from a path on disk (any single file)
EOF
}

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

command eval "$(argc --argc-eval "$0" "$@")"