#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --package[`_choice_package`] <SPEC>  Package to be used as the root of the tree.
# @option --features*,[`_choice_feature`]      Space-separated list of features to activate.
# @flag --all-features                         Activate all available features.
# @flag --no-default-features                  Do not activate the `default` feature.
# @option --target[`_choice_target`]           Set the target triple.
# @flag --all-targets                          Return dependencies for all targets.
# @option --manifest-path <PATH>               Path to Cargo.toml.
# @flag -i --invert                            Invert the tree direction.
# @flag --no-indent                            Display the dependencies as a list (rather than a tree).
# @flag --prefix-depth                         Display the dependencies as a list (rather than a tree), but prefixed with the depth.
# @flag -a --all                               Don't truncate dependencies that have already been displayed.
# @option --format                             Format string used for printing dependencies [default: {p}].
# @flag --output-format                        Output format for the report: Ascii, GitHubMarkdown, Json, Utf8, Ratio [default: Utf8]
# @flag --update-readme                        Writes output to ./README.md.
# @option --readme-path <PATH>                 Path of README.md file to be written to.
# @option --section-name <NAME>                The section name in the README.md to be written to.
# @flag -v --verbose                           Use verbose output (-vv very verbose/build.rs output).
# @flag -q --quiet                             No output printed to stdout other than the tree.
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never.
# @flag --frozen                               Require Cargo.lock and cache are up to date.
# @flag --locked                               Require Cargo.lock is up to date.
# @flag --offline                              Run without accessing the network.
# @option -Z <"<FLAG>...">                     Unstable (nightly-only) flags to Cargo.
# @flag --include-tests                        Count unsafe usage in tests.
# @flag --build-dependencies                   Also analyze build dependencies.
# @flag --dev-dependencies                     Also analyze dev dependencies.
# @flag --all-dependencies                     Analyze all dependencies, including build and dev.
# @flag --forbid-only                          Don't build or clean anything, only scan entry point .rs source files for.
# @flag -h --help                              Prints help information.
# @flag -V --version                           Prints version information.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package() {
    _helper_metadata_json | yq '.packages[].name'
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

command eval "$(argc --argc-eval "$0" "$@")"