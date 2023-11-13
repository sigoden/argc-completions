#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet                               No output printed to stdout
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to check
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --workspace                              Check all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the check
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --lib                                    Check only this package's library
# @option --bin[`_choice_bin`] <NAME>            Check only the specified binary
# @flag --bins                                   Check all binaries
# @option --example[`_choice_example`] <NAME>    Check only the specified example
# @flag --examples                               Check all examples
# @option --test[`_choice_test`] <NAME>          Check only the specified test target
# @flag --tests                                  Check all tests
# @option --bench[`_choice_bench`] <NAME>        Check only the specified bench target
# @flag --benches                                Check all benches
# @flag --all-targets                            Check all targets
# @flag --release                                Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Check artifacts with the specified profile
# @option --features*,[`_choice_feature`]        Space-separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Check for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format[human|json|short] <FMT>  Error format [default: human]
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option --output[human|json]                   Output format [default: human]
# @option --backend[save-analysis|depinfo]       Backend to use for determining unused deps [default: depinfo]
# @flag --keep-going                             Needed because the keep-going flag is asked about by cargo code
# @flag --show-unused-transitive                 Show unused dependencies that get used transitively by main dependencies.
# @flag -h --help                                Print help
# @flag -V --version                             Print version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package() {
    _helper_metadata_json | yq '.packages[].name'
}

_choice_bin() {
    _helper_package_target bin
}

_choice_example() {
    _helper_package_target example
}

_choice_test() {
    _helper_package_target test
}

_choice_bench() {
    _helper_package_target bench
}

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
}

_choice_target() {
    rustup target list --installed
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
        manifest_path="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
        echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
    fi
}

_helper_package_target() {
    _helper_package_json | yq '.targets[] | select( .kind[] | contains("'$1'") ) | .name'
}

command eval "$(argc --argc-eval "$0" "$@")"