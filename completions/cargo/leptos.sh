#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --manifest-path <MANIFEST_PATH>    Path to Cargo.toml
# @option --log[wasm|wasm-opt|walrus]        Output logs from dependencies (multiple --log accepted)
# @flag -h --help                            Print help (see a summary with '-h')
# @flag -V --version                         Print version

# {{ cargo leptos build
# @cmd Build the server (feature ssr) and the client (wasm with feature hydrate)
# @flag -r --release                           Build artifacts in release mode, with optimizations
# @flag -P --precompress                       Precompress static assets with gzip and brotli.
# @flag --hot-reload                           Turn on partial hot-reloading.
# @option -p --project                         Which project to use, from a list of projects defined in a workspace
# @option --features*,[`_choice_feature`]      The features to use when compiling all targets
# @option --lib-features <LIB_FEATURES>        The features to use when compiling the lib target
# @option --lib-cargo-args <LIB_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the lib target
# @option --bin-features <BIN_FEATURES>        The features to use when compiling the bin target
# @option --bin-cargo-args <BIN_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the bin target
# @flag -v*                                    Verbosity (none: info, errors & warnings, -v: verbose, --vv: very verbose)
# @flag -h --help                              Print help
build() {
    :;
}
# }} cargo leptos build

# {{ cargo leptos test
# @cmd Run the cargo tests for app, client and server
# @flag -r --release                           Build artifacts in release mode, with optimizations
# @flag -P --precompress                       Precompress static assets with gzip and brotli.
# @flag --hot-reload                           Turn on partial hot-reloading.
# @option -p --project                         Which project to use, from a list of projects defined in a workspace
# @option --features*,[`_choice_feature`]      The features to use when compiling all targets
# @option --lib-features <LIB_FEATURES>        The features to use when compiling the lib target
# @option --lib-cargo-args <LIB_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the lib target
# @option --bin-features <BIN_FEATURES>        The features to use when compiling the bin target
# @option --bin-cargo-args <BIN_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the bin target
# @flag -v*                                    Verbosity (none: info, errors & warnings, -v: verbose, --vv: very verbose)
# @flag -h --help                              Print help
test() {
    :;
}
# }} cargo leptos test

# {{ cargo leptos end-to-end
# @cmd Start the server and end-2-end tests
# @flag -r --release                           Build artifacts in release mode, with optimizations
# @flag -P --precompress                       Precompress static assets with gzip and brotli.
# @flag --hot-reload                           Turn on partial hot-reloading.
# @option -p --project                         Which project to use, from a list of projects defined in a workspace
# @option --features*,[`_choice_feature`]      The features to use when compiling all targets
# @option --lib-features <LIB_FEATURES>        The features to use when compiling the lib target
# @option --lib-cargo-args <LIB_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the lib target
# @option --bin-features <BIN_FEATURES>        The features to use when compiling the bin target
# @option --bin-cargo-args <BIN_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the bin target
# @flag -v*                                    Verbosity (none: info, errors & warnings, -v: verbose, --vv: very verbose)
# @flag -h --help                              Print help
end-to-end() {
    :;
}
# }} cargo leptos end-to-end

# {{ cargo leptos serve
# @cmd Serve.
# @flag -r --release                           Build artifacts in release mode, with optimizations
# @flag -P --precompress                       Precompress static assets with gzip and brotli.
# @flag --hot-reload                           Turn on partial hot-reloading.
# @option -p --project                         Which project to use, from a list of projects defined in a workspace
# @option --features*,[`_choice_feature`]      The features to use when compiling all targets
# @option --lib-features <LIB_FEATURES>        The features to use when compiling the lib target
# @option --lib-cargo-args <LIB_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the lib target
# @option --bin-features <BIN_FEATURES>        The features to use when compiling the bin target
# @option --bin-cargo-args <BIN_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the bin target
# @flag -v*                                    Verbosity (none: info, errors & warnings, -v: verbose, --vv: very verbose)
# @flag -h --help                              Print help
serve() {
    :;
}
# }} cargo leptos serve

# {{ cargo leptos watch
# @cmd Serve and automatically reload when files change
# @flag -r --release                           Build artifacts in release mode, with optimizations
# @flag -P --precompress                       Precompress static assets with gzip and brotli.
# @flag --hot-reload                           Turn on partial hot-reloading.
# @option -p --project                         Which project to use, from a list of projects defined in a workspace
# @option --features*,[`_choice_feature`]      The features to use when compiling all targets
# @option --lib-features <LIB_FEATURES>        The features to use when compiling the lib target
# @option --lib-cargo-args <LIB_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the lib target
# @option --bin-features <BIN_FEATURES>        The features to use when compiling the bin target
# @option --bin-cargo-args <BIN_CARGO_ARGS>    The cargo flags to pass to cargo when compiling the bin target
# @flag -v*                                    Verbosity (none: info, errors & warnings, -v: verbose, --vv: very verbose)
# @flag -h --help                              Print help
watch() {
    :;
}
# }} cargo leptos watch

# {{ cargo leptos new
# @cmd WIP: Start wizard for creating a new project (using cargo-generate).
# @option -g --git       Git repository to clone template from.
# @option -b --branch    Branch to use when installing from git
# @option -t --tag       Tag to use when installing from git
# @option -p --path      Local path to copy the template from.
# @option -n --name      Directory to create / project name; if the name isn't in kebab-case, it will be converted to kebab-case unless `--force` is given
# @flag -f --force       Don't convert the project name to kebab-case before creating the directory.
# @flag -v --verbose     Enables more verbose output
# @flag --init           Generate the template directly into the current dir.
# @flag -h --help        Print help
new() {
    :;
}
# }} cargo leptos new

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
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