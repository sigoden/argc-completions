#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                Prints help information
# @flag -V --version                             Prints version information
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @option -p --package[`_choice_package`] <SPEC>  Package to build
# @flag --release                                Build artifacts in release mode, with optimizations
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @option --features*,[`_choice_feature`]        Space-separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`]             Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --crates                                 Per crate bloatedness
# @flag --time                                   Per crate build time.
# @option --filter <CRATE|REGEXP>                Filter functions by crate
# @flag --split-std                              Split the 'std' crate to original crates like core, alloc, etc.
# @flag --no-relative-size                       Hide 'File' and '.text' columns
# @flag --full-fn                                Print full function name with hash values
# @option -n <NUM>                               Number of lines to show, 0 to show all [default: 20]
# @flag -w --wide                                Do not trim long function names
# @option --message-format[table|json] <FMT>     Output format [default: table]

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