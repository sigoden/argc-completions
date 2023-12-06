#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --add-cpes-if-none        generate CPEs for packages with no CPE data
# @flag --by-cve                  orient results by CVE instead of the original vulnerability ID when possible
# @option -c --config <file>      grype configuration file
# @option --distro <string>       distro to match against in the format: <distro>:<version>
# @option --exclude* <path>       exclude paths from being scanned using a glob expression
# @option -f --fail-on[negligible|low|medium|high|critical] <string>  set the return code to 1 if a vulnerability is found with a severity >= the given severity, options=[negligible low medium high critical]
# @option --file <file>           file to write the default report output to (default is STDOUT)
# @flag -h --help                 help for grype
# @option --ignore-states[fixed|not-fixed|unknown|wont-fix] <string>  ignore matches for vulnerabilities with specified comma separated fix states, options=[fixed not-fixed unknown wont-fix]
# @option --name <string>         set the name of the target being analyzed
# @flag --only-fixed              ignore matches for vulnerabilities that are not fixed
# @flag --only-notfixed           ignore matches for vulnerabilities that are fixed
# @option -o --output*[json|table|cyclonedx|cyclonedx-json|sarif|template]|deprecated|formats=[embedded-cyclonedx-vex-json|embedded-cyclonedx-vex-xml] <string>  report output formatter, formats=[json table cyclonedx cyclonedx-json sarif template], deprecated formats=[embedded-cyclonedx-vex-json embedded-cyclonedx-vex-xml]
# @option --platform[`_module_oci_docker_platform`] <string>  an optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')
# @flag -q --quiet                suppress all logging output
# @option -s --scope[squashed|all-layers] <string>  selection of layers to analyze, options=[squashed all-layers] (default "squashed")
# @flag --show-suppressed         show suppressed/ignored vulnerabilities in the output (only supported with table output format)
# @option -t --template <file>    specify the path to a Go template file (requires 'template' output to be selected)
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
# @flag --version                 version for grype
# @option --vex* <string>         a list of VEX documents to consider when producing scanning results
# @arg image[`_choice_image`]

# {{ grype completion
# @cmd Generate a shell completion for Grype (listing local docker images)
# @flag -h --help                 help for completion
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
# @arg enum[bash|zsh|fish]
completion() {
    :;
}
# }} grype completion

# {{ grype db
# @cmd vulnerability database operations
# @flag -h --help                 help for db
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
db() {
    :;
}

# {{{ grype db check
# @cmd check to see if there is a database update available
# @flag -h --help                 help for check
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
db::check() {
    :;
}
# }}} grype db check

# {{{ grype db delete
# @cmd delete the vulnerability database
# @flag -h --help                 help for delete
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
db::delete() {
    :;
}
# }}} grype db delete

# {{{ grype db diff
# @cmd diff two DBs and display the result
# @flag -d --delete                           delete downloaded databases after diff occurs
# @flag -h --help                             help for diff
# @option -o --output[table|json] <string>    format to display results (available=[table, json]) (default "table")
# @option -c --config <file>                  grype configuration file
# @flag -q --quiet                            suppress all logging output
# @option -v --verbose <count>                increase verbosity (-v = info, -vv = debug)
# @arg base_db_url
# @arg target_db_url
db::diff() {
    :;
}
# }}} grype db diff

# {{{ grype db import
# @cmd import a vulnerability database archive
# @flag -h --help                 help for import
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
# @arg file
db::import() {
    :;
}
# }}} grype db import

# {{{ grype db list
# @cmd list all DBs available according to the listing URL
# @flag -h --help                                help for list
# @option -o --output[text|raw|json] <string>    format to display results (available=) (default "text")
# @option -c --config <file>                     grype configuration file
# @flag -q --quiet                               suppress all logging output
# @option -v --verbose <count>                   increase verbosity (-v = info, -vv = debug)
db::list() {
    :;
}
# }}} grype db list

# {{{ grype db status
# @cmd display database status
# @flag -h --help                 help for status
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
db::status() {
    :;
}
# }}} grype db status

# {{{ grype db update
# @cmd download the latest vulnerability database
# @flag -h --help                 help for update
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
db::update() {
    :;
}
# }}} grype db update
# }} grype db

# {{ grype explain
# @cmd Ask grype to explain a set of findings
# @flag -h --help                 help for explain
# @option --id* <string>          CVE IDs to explain
# @option -c --config <file>      grype configuration file
# @flag -q --quiet                suppress all logging output
# @option -v --verbose <count>    increase verbosity (-v = info, -vv = debug)
# @arg vulnerability-id <VULNERABILITY ID>
explain() {
    :;
}
# }} grype explain

# {{ grype version
# @cmd show version information
# @flag -h --help                            help for version
# @option -o --output[text|json] <string>    the format to show the results (allowable: [text json]) (default "text")
# @option -c --config <file>                 grype configuration file
# @flag -q --quiet                           suppress all logging output
# @option -v --verbose <count>               increase verbosity (-v = info, -vv = debug)
version() {
    :;
}
# }} grype version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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