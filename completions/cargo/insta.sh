#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information

# {{ cargo insta review
# @cmd Interactively review snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
review() {
    :;
}
# }} cargo insta review

# {{ cargo insta reject
# @cmd Rejects all snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
reject() {
    :;
}
# }} cargo insta reject

# {{ cargo insta accept
# @cmd Accept all snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
accept() {
    :;
}
# }} cargo insta accept

# {{ cargo insta test
# @cmd Run tests and then reviews
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --workspace-root <PATH>                Explicit path to the workspace root
# @option -e --extensions*                       Sets the extensions to consider.
# @flag --workspace                              Work on all packages in the workspace
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --include-ignored                        Also walk into ignored paths
# @flag --include-hidden                         Also include hidden paths
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`] <bin>             Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`] <example>  Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`] <test>          Test only the specified test target
# @flag --tests                                  Test all tests
# @option -p --package[`_choice_package`] <package>  Package to run tests for
# @option --exclude <SPEC>                       Exclude packages from the test
# @flag --no-force-pass                          Disable force-passing of snapshot tests
# @flag --fail-fast                              Prevent running all tests regardless of failure
# @option --features*,[`_choice_feature`]        Space-separated list of features to activate
# @option -j --jobs <jobs>                       Number of parallel jobs, defaults to ♯ of CPUs
# @flag --release                                Build artifacts in release mode, with optimizations
# @option --profile <profile>                    Build artifacts with the specified profile
# @flag --all-targets                            Test all targets (does not include doctests)
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <target>    Build for the target triple
# @flag --review                                 Follow up with review
# @flag --accept                                 Accept all snapshots after test
# @flag --accept-unseen                          Accept all new (previously unseen)
# @flag --check                                  Instructs the test command to just assert
# @flag --keep-pending                           Do not reject pending snapshots before run
# @flag --force-update-snapshots                 Update all snapshots even if they are still matching
# @option --unreferenced[ignore|warn|reject|delete|auto] <unreferenced>  Controls what happens with unreferenced snapshots [default: ignore]
# @option --glob-filter* <glob-filter>           Filters to apply to the insta glob feature
# @flag -Q --no-quiet                            Do not pass the quiet flag (`-q`) to tests
# @option --test-runner[auto|cargo-test|nextest] <test-runner>  Picks the test runner [default: auto]
# @option --color[auto|always|never] <WHEN>      Coloring
# @flag -h --help                                Prints help information
# @flag -V --version                             Prints version information
# @arg cargo_test_args+                          Options passed to cargo test
test() {
    :;
}
# }} cargo insta test

# {{ cargo insta pending-snapshots
# @cmd Print a summary of all pending snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @flag --as-json                              Changes the output from human readable to JSON
# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
pending-snapshots() {
    :;
}
# }} cargo insta pending-snapshots

# {{ cargo insta show
# @cmd Shows a specific snapshot
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --color[auto|always|never] <WHEN>    Coloring
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
# @arg path!                                   The path to the snapshot file
show() {
    :;
}
# }} cargo insta show

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