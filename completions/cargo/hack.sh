#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --package*[`_choice_package`] <SPEC>  Package(s) to check.
# @flag --all                                   Alias for --workspace.
# @flag --workspace                             Perform command for all packages in the workspace.
# @option --exclude* <SPEC>                     Exclude packages from the check.
# @option --manifest-path <PATH>                Path to Cargo.toml.
# @option -F --features*,[`_choice_feature`]    Space or comma separated list of features to activate.
# @flag --each-feature                          Perform for each feature of the package.
# @flag --feature-powerset                      Perform for the feature powerset of the package.
# @option --optional-deps* <DEPS>               Use optional dependencies as features.
# @option --skip* <FEATURES>                    Alias for --exclude-features.
# @option --exclude-features* <FEATURES>        Space or comma separated list of features to exclude.
# @flag --exclude-no-default-features           Exclude run of just --no-default-features flag.
# @flag --exclude-all-features                  Exclude run of just --all-features flag.
# @option --depth <NUM>                         Specify a max number of simultaneous feature flags of --feature-powerset.
# @option --group-features* <FEATURES>          Space or comma separated list of features to group.
# @option --at-least-one-of* <FEATURES>         Space or comma separated list of features.
# @option --include-features* <FEATURES>        Include only the specified features in the feature combinations instead of package features.
# @flag --no-dev-deps                           Perform without dev-dependencies.
# @flag --remove-dev-deps                       Equivalent to --no-dev-deps flag except for does not restore the original `Cargo.toml` after performed.
# @flag --no-private                            Perform without `publish = false` crates.
# @flag --ignore-private                        Skip to perform on `publish = false` packages.
# @flag --ignore-unknown-features               Skip passing --features flag to `cargo` if that feature does not exist in the package.
# @flag --rust-version                          Perform commands on `package.rust-version`.
# @option --version-range <[START]..[=END]>     Perform commands on a specified (inclusive) range of Rust versions.
# @option --version-step <NUM>                  Specify the version interval of --version-range (default to `1`).
# @flag --clean-per-run                         Remove artifacts for that package before running the command.
# @flag --clean-per-version                     Remove artifacts per Rust version.
# @flag --keep-going                            Keep going on failure.
# @option --log-group[none|github-actions] <KIND>  Log grouping: none, github-actions.
# @flag --print-command-list                    Print commands without run (Unstable).
# @flag --no-manifest-path                      Do not pass --manifest-path option to cargo (Unstable).
# @flag -v --verbose                            Use verbose output.
# @option --color[auto|always|never] <WHEN>     Coloring: auto, always, never.
# @flag -h --help                               Prints help information.
# @flag -V --version                            Prints version information.

# {{ cargo hack build
# @cmd Compile the current package
# @arg args~[`_choice_proxy_build`]
build() {
    :;
}
# }} cargo hack build

# {{ cargo hack check
# @cmd Analyze the current package and report errors, but don't build object files
# @arg args~[`_choice_proxy_check`]
check() {
    :;
}
# }} cargo hack check

# {{ cargo hack run
# @cmd Run a binary or example of the local package
# @arg args~[`_choice_proxy_run`]
run() {
    :;
}
# }} cargo hack run

# {{ cargo hack test
# @cmd Run the tests
# @arg args~[`_choice_proxy_test`]
test() {
    :;
}
# }} cargo hack test

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package() {
    _helper_metadata_json | yq '.packages[].name'
}

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
}

_choice_proxy_build() {
    _argc_util_comp_subcommand 0 cargo build
}

_choice_proxy_check() {
    _argc_util_comp_subcommand 0 cargo check
}

_choice_proxy_run() {
    _argc_util_comp_subcommand 0 cargo run
}

_choice_proxy_test() {
    _argc_util_comp_subcommand 0 cargo test
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

command eval "$(argc --argc-eval "$0" "$@")"