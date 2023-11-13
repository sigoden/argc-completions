#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --format[list|json]                Output formatting [default: list]
# @option --color[auto|never|always]         Output coloring [default: auto]
# @option --features*,[`_choice_feature`]    Space-separated list of features
# @option -i --ignore <DEPENDENCIES>         Dependencies to not print in the output (comma separated or one per '--ignore' argument)
# @option -x --exclude <DEPENDENCIES>        Dependencies to exclude from building (comma separated or one per '--exclude' argument)
# @option -m --manifest-path <PATH>          Path to the Cargo.toml file to use (Default to Cargo.toml in project root)
# @flag -q --quiet                           Suppresses warnings
# @flag -v --verbose*                        Use verbose output
# @option --exit-code <NUM>                  The exit code to return on new versions found [default: 0]
# @option -p --packages <PKGS>               Packages to inspect for updates (comma separated or one per --packages' argument)
# @option -r --root                          Package to treat as the root package
# @option -d --depth <NUM>                   How deep in the dependency chain to search (Defaults to all dependencies)
# @flag -R --root-deps-only                  Only check root dependencies (Equivalent to --depth=1)
# @flag -w --workspace                       Checks updates for all workspace members rather than only the root package
# @flag -a --aggressive                      Ignores channels for latest updates
# @flag -e --ignore-external-rel             Ignore relative dependencies external to workspace and check root dependencies only
# @flag -o --offline                         Run without accessing the network (useful for testing w/ local registries)
# @flag -h --help                            Print help
# @flag -V --version                         Print version

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