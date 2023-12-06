#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose                            Verbose output
# @option --color <WHEN>                        Produce color output: auto, always, never
# @flag -h --help                               Print help (see a summary with '-h')
# @flag -V --version                            Print version
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --config-file <PATH>                  Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>    Tool-specific config files
# @flag --override-version-check                Override checks for the minimum version defined in nextest's config.

# {{ cargo nextest list
# @cmd List tests in workspace
# @flag -v --verbose                             Verbose output
# @option --color <WHEN>                         Produce color output: auto, always, never
# @flag -h --help                                Print help (see a summary with '-h')
# @option -p --package[`_choice_package`] <PACKAGES>  Package to test
# @flag --workspace                              Test all packages in the workspace
# @option --exclude                              Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`]                   Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`]           Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`]                 Test only the specified test target
# @flag --tests                                  Test all targets
# @option --bench[`_choice_bench`]               Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --build-jobs <N>                       Number of build jobs to run
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --cargo-profile <NAME>                 Build artifacts with the specified Cargo profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIR>                     Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @flag --cargo-quiet                            Do not print cargo log messages
# @flag --cargo-verbose*                         Use cargo verbose output (specify twice for very verbose/build.rs output)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --run-ignored[default|ignored-only|all] <WHICH>  Run ignored tests
# @option --partition                            Test partition, e.g. hash:1/2 or count:2/3
# @option --platform-filter[target|host|any] <PLATFORM>  Filter test binaries by build platform (DEPRECATED)
# @option -E --filter-expr <EXPR>                Test filter expression (see <https://nexte.st/book/filter-expressions>)
# @option -T --message-format[human|json|json-pretty] <FMT>  Output format
# @option --list-type[full|binaries-only] <TYPE>  Type of listing
# @option --archive-file <PATH>                  Path to nextest archive
# @option --archive-format[auto|tar-zst] <FORMAT>  Archive format
# @option --extract-to <DIR>                     Destination directory to extract archive to [default: temporary directory]
# @flag --extract-overwrite                      Overwrite files in destination directory while extracting archive
# @flag --persist-extract-tempdir                Persist extracted temporary directory
# @option --cargo-metadata <PATH>                Path to cargo metadata JSON
# @option --workspace-remap <PATH>               Remapping for the workspace root
# @option --binaries-metadata <PATH>             Path to binaries-metadata JSON
# @option --target-dir-remap <PATH>              Remapping for the target directory
# @option --config-file <PATH>                   Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>     Tool-specific config files
# @flag --override-version-check                 Override checks for the minimum version defined in nextest's config.
# @arg filters*                                  Test name filters and emulated test binary arguments (partially supported)
list() {
    :;
}
# }} cargo nextest list

# {{ cargo nextest run
# @cmd Build and run tests [aliases: r]
# @option -P --profile                           Nextest profile to use
# @flag -v --verbose                             Verbose output
# @option --color <WHEN>                         Produce color output: auto, always, never
# @flag -h --help                                Print help (see a summary with '-h')
# @option -p --package[`_choice_package`] <PACKAGES>  Package to test
# @flag --workspace                              Test all packages in the workspace
# @option --exclude                              Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`]                   Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`]           Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`]                 Test only the specified test target
# @flag --tests                                  Test all targets
# @option --bench[`_choice_bench`]               Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --build-jobs <N>                       Number of build jobs to run
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --cargo-profile <NAME>                 Build artifacts with the specified Cargo profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIR>                     Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @flag --cargo-quiet                            Do not print cargo log messages
# @flag --cargo-verbose*                         Use cargo verbose output (specify twice for very verbose/build.rs output)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --run-ignored[default|ignored-only|all] <WHICH>  Run ignored tests
# @option --partition                            Test partition, e.g. hash:1/2 or count:2/3
# @option --platform-filter[target|host|any] <PLATFORM>  Filter test binaries by build platform (DEPRECATED)
# @option -E --filter-expr <EXPR>                Test filter expression (see <https://nexte.st/book/filter-expressions>)
# @flag --no-run                                 Compile, but don't run tests
# @option -j --test-threads <N>                  Number of tests to run simultaneously [possible values: integer or "num-cpus"] [default: from profile]
# @option --retries <N>                          Number of retries for failing tests [default: from profile]
# @flag --fail-fast                              Cancel test run on the first failure
# @flag --no-fail-fast                           Run all tests regardless of failure
# @flag --no-capture                             Run tests serially and do not capture output
# @option --failure-output[immediate|immediate-final|final|never] <WHEN>  Output stdout and stderr on failure
# @option --success-output[immediate|immediate-final|final|never] <WHEN>  Output stdout and stderr on success
# @option --status-level[none|fail|retry|slow|leak|pass|skip|all] <LEVEL>  Test statuses to output
# @option --final-status-level[none|fail|flaky|slow|skip|pass|all] <LEVEL>  Test statuses to output at the end of the run
# @flag --hide-progress-bar                      Do not display the progress bar
# @option --archive-file <PATH>                  Path to nextest archive
# @option --archive-format[auto|tar-zst] <FORMAT>  Archive format
# @option --extract-to <DIR>                     Destination directory to extract archive to [default: temporary directory]
# @flag --extract-overwrite                      Overwrite files in destination directory while extracting archive
# @flag --persist-extract-tempdir                Persist extracted temporary directory
# @option --cargo-metadata <PATH>                Path to cargo metadata JSON
# @option --workspace-remap <PATH>               Remapping for the workspace root
# @option --binaries-metadata <PATH>             Path to binaries-metadata JSON
# @option --target-dir-remap <PATH>              Remapping for the target directory
# @option --config-file <PATH>                   Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>     Tool-specific config files
# @flag --override-version-check                 Override checks for the minimum version defined in nextest's config.
# @arg filters*                                  Test name filters and emulated test binary arguments (partially supported)
run() {
    :;
}
# }} cargo nextest run

# {{ cargo nextest archive
# @cmd Build and archive tests
# @flag -v --verbose                             Verbose output
# @option --color <WHEN>                         Produce color output: auto, always, never
# @flag -h --help                                Print help (see a summary with '-h')
# @option -p --package[`_choice_package`] <PACKAGES>  Package to test
# @flag --workspace                              Test all packages in the workspace
# @option --exclude                              Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`]                   Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`]           Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`]                 Test only the specified test target
# @flag --tests                                  Test all targets
# @option --bench[`_choice_bench`]               Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --build-jobs <N>                       Number of build jobs to run
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --cargo-profile <NAME>                 Build artifacts with the specified Cargo profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIR>                     Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @flag --cargo-quiet                            Do not print cargo log messages
# @flag --cargo-verbose*                         Use cargo verbose output (specify twice for very verbose/build.rs output)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --archive-file <PATH>                  File to write archive to
# @option --archive-format[auto|tar-zst] <FORMAT>  Archive format
# @option --zstd-level <LEVEL>                   Zstandard compression level (-7 to 22, higher is more compressed + slower)
# @option --config-file <PATH>                   Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>     Tool-specific config files
# @flag --override-version-check                 Override checks for the minimum version defined in nextest's config.
# @arg path!
archive() {
    :;
}
# }} cargo nextest archive

# {{ cargo nextest show-config
# @cmd Show information about nextest's configuration in this workspace
# @flag -v --verbose                            Verbose output
# @option --color <WHEN>                        Produce color output: auto, always, never
# @flag -h --help                               Print help (see a summary with '-h')
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --config-file <PATH>                  Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>    Tool-specific config files
# @flag --override-version-check                Override checks for the minimum version defined in nextest's config.
show-config() {
    :;
}

# {{{ cargo nextest show-config version
# @cmd Show version-related configuration
# @flag -v --verbose                            Verbose output
# @option --color <WHEN>                        Produce color output: auto, always, never
# @flag -h --help                               Print help (see a summary with '-h')
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --config-file <PATH>                  Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>    Tool-specific config files
# @flag --override-version-check                Override checks for the minimum version defined in nextest's config.
show-config::version() {
    :;
}
# }}} cargo nextest show-config version

# {{{ cargo nextest show-config test-groups
# @cmd Show defined test groups and their associated tests
# @option -P --profile                           Nextest profile to show test groups for
# @flag --show-default                           Show default test groups
# @flag -v --verbose                             Verbose output
# @option --color <WHEN>                         Produce color output: auto, always, never
# @option --groups                               Show only the named groups
# @flag -h --help                                Print help (see a summary with '-h')
# @option -p --package[`_choice_package`] <PACKAGES>  Package to test
# @flag --workspace                              Test all packages in the workspace
# @option --exclude                              Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`]                   Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`]           Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`]                 Test only the specified test target
# @flag --tests                                  Test all targets
# @option --bench[`_choice_bench`]               Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --build-jobs <N>                       Number of build jobs to run
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --cargo-profile <NAME>                 Build artifacts with the specified Cargo profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIR>                     Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @flag --cargo-quiet                            Do not print cargo log messages
# @flag --cargo-verbose*                         Use cargo verbose output (specify twice for very verbose/build.rs output)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --run-ignored[default|ignored-only|all] <WHICH>  Run ignored tests
# @option --partition                            Test partition, e.g. hash:1/2 or count:2/3
# @option --platform-filter[target|host|any] <PLATFORM>  Filter test binaries by build platform (DEPRECATED)
# @option -E --filter-expr <EXPR>                Test filter expression (see <https://nexte.st/book/filter-expressions>)
# @option --archive-file <PATH>                  Path to nextest archive
# @option --archive-format[auto|tar-zst] <FORMAT>  Archive format
# @option --extract-to <DIR>                     Destination directory to extract archive to [default: temporary directory]
# @flag --extract-overwrite                      Overwrite files in destination directory while extracting archive
# @flag --persist-extract-tempdir                Persist extracted temporary directory
# @option --cargo-metadata <PATH>                Path to cargo metadata JSON
# @option --workspace-remap <PATH>               Remapping for the workspace root
# @option --binaries-metadata <PATH>             Path to binaries-metadata JSON
# @option --target-dir-remap <PATH>              Remapping for the target directory
# @option --config-file <PATH>                   Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>     Tool-specific config files
# @flag --override-version-check                 Override checks for the minimum version defined in nextest's config.
# @arg filters*                                  Test name filters and emulated test binary arguments (partially supported)
show-config::test-groups() {
    :;
}
# }}} cargo nextest show-config test-groups
# }} cargo nextest show-config

# {{ cargo nextest self
# @cmd Manage the nextest installation
# @flag -v --verbose                            Verbose output
# @option --color <WHEN>                        Produce color output: auto, always, never
# @flag -h --help                               Print help (see a summary with '-h')
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --config-file <PATH>                  Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>    Tool-specific config files
# @flag --override-version-check                Override checks for the minimum version defined in nextest's config.
self() {
    :;
}

# {{{ cargo nextest self update
# @cmd Download and install updates to nextest
# @option --version                             Version or version range to download
# @flag -n --check                              Check for updates rather than downloading them
# @flag -v --verbose                            Verbose output
# @option --color <WHEN>                        Produce color output: auto, always, never
# @flag -y --yes                                Do not prompt for confirmation
# @flag -f --force                              Force downgrades and reinstalls
# @option --releases-url <RELEASES_URL>         URL or path to fetch releases.json from
# @flag -h --help                               Print help (see a summary with '-h')
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --config-file <PATH>                  Config file [default: workspace-root/.config/nextest.toml]
# @option --tool-config-file <TOOL:ABS_PATH>    Tool-specific config files
# @flag --override-version-check                Override checks for the minimum version defined in nextest's config.
self::update() {
    :;
}
# }}} cargo nextest self update
# }} cargo nextest self

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