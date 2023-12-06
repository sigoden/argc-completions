#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet                               Do not print cargo log messages
# @option --message-format <FMT>                 Error format
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value (unstable)
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build (unstable)
# @flag -h --help                                Print help
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @option --profile <PROFILE-NAME>               Build artifacts with the specified Cargo profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple [env: CARGO_BUILD_TARGET=]
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --timings*[html|json] <FMTS>           Timing output formats (unstable) (comma separated): html, json
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --out-dir <PATH>                       Copy final artifacts to this directory (unstable)
# @flag --build-plan                             Output the build plan in JSON (unstable)
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option -p --package[`_choice_package`] <SPEC>  Package to build (see `cargo help pkgid`)
# @flag --workspace                              Build all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the build
# @flag --all                                    Alias for workspace (deprecated)
# @flag --lib                                    Build only this package's library
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --bins                                   Build all binaries
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --examples                               Build all examples
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --tests                                  Build all tests
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --benches                                Build all benches
# @flag --all-targets                            Build all targets

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