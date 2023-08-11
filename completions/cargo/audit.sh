#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --color                     color configuration: always, never (default: auto)
# @option -d --db                        advisory database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny                      exit with an error on: warnings (any), unmaintained, unsound, yanked
# @option -f --file                      Cargo lockfile to inspect (or `-` for STDIN, default: Cargo.lock)
# @flag -h --help                        output help information and exit
# @option --ignore <ADVISORY_ID>         Advisory id to ignore (can be specified multiple times)
# @flag --ignore-source                  Ignore sources of packages in Cargo.toml, matching advisories regardless of source
# @flag --json                           Output report in JSON format
# @flag -n --no-fetch                    do not perform a git fetch on the advisory DB
# @flag -q --quiet                       Avoid printing unnecessary information
# @flag --stale                          allow stale database
# @option --target-arch <TARGET_ARCH>    filter vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS>        filter vulnerabilities by OS (default: no filter)
# @option -u --url                       URL for advisory database git repo
# @flag -V --version                     Print version information

# {{ cargo audit bin
# @cmd scan compiled binaries
# @option -c --color                     color configuration: always, never (default: auto)
# @option -d --db                        advisory database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny                      exit with an error on: warnings (any), unmaintained, unsound, yanked
# @flag -h --help                        output help information and exit
# @option --ignore <ADVISORY_ID>         Advisory id to ignore (can be specified multiple times)
# @flag --ignore-source                  Ignore sources of packages in the audit data, matching advisories regardless of source
# @flag --json                           Output report in JSON format
# @flag -n --no-fetch                    do not perform a git fetch on the advisory DB
# @flag -q --quiet                       Avoid printing unnecessary information
# @flag --stale                          allow stale database
# @option --target-arch <TARGET_ARCH>    filter vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS>        filter vulnerabilities by OS (default: no filter)
# @option -u --url                       URL for advisory database git repo
# @arg binary_paths+                     Paths to the binaries to be scanned
bin() {
    :;
}
# }} cargo audit bin

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_bench() {
    _helper_package_target bench
}

_choice_bin() {
    _helper_package_target bin
}

_choice_cmd() {
    cargo --list 2>/dev/null | gawk 'NR>1 {print $1}'
}

_choice_depid() {
    _helper_package_json | yq '.dependencies[].name'
}

_choice_example() {
    _helper_package_target example
}

_choice_package() {
    _helper_metadata_json | yq '.packages[].name'
}

_choice_target() {
    rustup target list --installed
}

_choice_test() {
    _helper_package_target test
}

_choice_testname() {
    cargo t -- --list | gawk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_helper_metadata_json() {
    cargo metadata --format-version 1 --no-deps
}

_helper_package_json() {
    metadata_json="$(_helper_metadata_json)"
    if [[ -n "$argc_package" ]]; then
        echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
    else
        workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
        manifest_path="$(_argc_util_path_resolve -u "$workspace_root" Cargo.toml)"
        echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
    fi
}

_helper_package_target() {
    _helper_package_json | yq '.targets[] | select( .kind[] | contains("'$1'") ) | .name'
}

command eval "$(argc --argc-eval "$0" "$@")"