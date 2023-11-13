#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --authors                           Display crate authors
# @flag --all-features                         Activate all available features
# @flag --avoid-build-deps                     Exclude build dependencies
# @flag --avoid-dev-deps                       Exclude development dependencies
# @option --color[auto|always|never] <WHEN>    Coloring
# @option --current-dir <CURRENT_DIR>          Current directory of the cargo metadata process
# @flag -d --do-not-bundle                     Output one license per line
# @flag --direct-deps-only                     Output information only about the root package and don't fetch dependencies
# @option --features*,[`_choice_feature`] <FEATURE>  Space-separated list of features to activate
# @option --filter-platform <TRIPLE>           Only include resolve dependencies matching the given target-triple
# @flag -h --help                              Print help information
# @flag -j --json                              Detailed output as JSON
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --no-default-features                  Deactivate default features
# @flag --root-only                            Output information only about the root package
# @flag -t --tsv                               Detailed output as tab-separated-values

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