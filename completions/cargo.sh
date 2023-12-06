#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta symbol +toolchain[`_choice_toolchain`]
# @flag -V --version                           Print version info and exit
# @flag --list                                 List installed commands
# @option --explain <CODE>                     Provide a detailed explanation of a rustc error message
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag -q --quiet                             Do not print cargo log messages
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option -C <DIRECTORY>                       Change to DIRECTORY before doing anything (nightly-only)
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg cmd![`_choice_cmd`]

# {{ cargo build
# @cmd Compile the current package
# @alias b
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to build (see `cargo help pkgid`)
# @flag --workspace                              Build all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the build
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Build only this package's library
# @flag --bins                                   Build all binaries
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --examples                               Build all examples
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --tests                                  Build all tests
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --benches                                Build all benches
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --all-targets                            Build all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --out-dir <PATH>                       Copy final artifacts to this directory (unstable)
# @flag --build-plan                             Output the build plan in JSON (unstable)
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
build() {
    :;
}
# }} cargo build

# {{ cargo check
# @cmd Analyze the current package and report errors, but don't build object files
# @alias c
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to check
# @flag --workspace                              Check all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the check
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Check only this package's library
# @flag --bins                                   Check all binaries
# @option --bin[`_choice_bin`] <NAME>            Check only the specified binary
# @flag --examples                               Check all examples
# @option --example[`_choice_example`] <NAME>    Check only the specified example
# @flag --tests                                  Check all tests
# @option --test[`_choice_test`] <NAME>          Check only the specified test target
# @flag --benches                                Check all benches
# @option --bench[`_choice_bench`] <NAME>        Check only the specified bench target
# @flag --all-targets                            Check all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Check artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Check for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
check() {
    :;
}
# }} cargo check

# {{ cargo clean
# @cmd Remove the target directory
# @flag --doc                                    Whether or not to clean just the documentation directory
# @flag -q --quiet                               Do not print cargo log messages
# @flag -n --dry-run                             Display what would be deleted without deleting anything
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to clean artifacts for
# @flag -r --release                             Whether or not to clean release artifacts
# @option --profile <PROFILE-NAME>               Clean artifacts of the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Target triple to clean output for
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
clean() {
    :;
}
# }} cargo clean

# {{ cargo doc
# @cmd Build this package's and its dependencies' documentation
# @alias d
# @flag --open                                   Opens the docs in a browser after the operation
# @flag --no-deps                                Don't build documentation for dependencies
# @flag --document-private-items                 Document private items
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to document
# @flag --workspace                              Document all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the build
# @flag --all                                    Alias for --workspace (deprecated)
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @flag --lib                                    Document only this package's library
# @flag --bins                                   Document all binaries
# @option --bin[`_choice_bin`] <NAME>            Document only the specified binary
# @flag --examples                               Document all examples
# @option --example[`_choice_example`] <NAME>    Document only the specified example
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
doc() {
    :;
}
# }} cargo doc

# {{ cargo new
# @cmd Create a new cargo package
# @option --vcs[git|hg|pijul|fossil|none]      Initialize a new repository for the given version control system, overriding a global configuration.
# @option --bin[`_choice_bin`]                 Use a binary (application) template [default]
# @flag --lib                                  Use a library template
# @option --edition[2015|2018|2021] <YEAR>     Edition to set for the crate generated
# @option --name                               Set the resulting package name, defaults to the directory name
# @option --registry                           Registry to use
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg path!
new() {
    :;
}
# }} cargo new

# {{ cargo init
# @cmd Create a new cargo package in an existing directory
# @option --vcs[git|hg|pijul|fossil|none]      Initialize a new repository for the given version control system, overriding a global configuration.
# @option --bin[`_choice_bin`]                 Use a binary (application) template [default]
# @flag --lib                                  Use a library template
# @option --edition[2015|2018|2021] <YEAR>     Edition to set for the crate generated
# @option --name                               Set the resulting package name, defaults to the directory name
# @option --registry                           Registry to use
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg path                                    [default: .]
init() {
    :;
}
# }} cargo init

# {{ cargo add
# @cmd Add dependencies to a manifest file
# @flag --no-default-features                  Disable the default features
# @flag --default-features                     Re-enable the default features
# @option -F --features*,[`_choice_add_feature`]  Space or comma separated list of features to activate
# @flag --optional                             Mark the dependency as optional
# @flag --no-optional                          Mark the dependency as required
# @option --rename <NAME>                      Rename the dependency
# @flag --ignore-rust-version                  Ignore `rust-version` specification in packages (unstable)
# @flag -n --dry-run                           Don't actually write the manifest
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help (see a summary with '-h')
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option -p --package[`_choice_package`] <SPEC>  Package to modify
# @option --path                               Filesystem path to local crate to add
# @option --git <URI>                          Git repository location
# @option --branch                             Git branch to download the crate from
# @option --tag                                Git tag to download the crate from
# @option --rev                                Git reference to download the crate from
# @option --registry <NAME>                    Package registry for this dependency
# @flag --dev                                  Add as development dependency
# @flag --build                                Add as build dependency
# @option --target[`_choice_target`]           Add as dependency to the given target platform
# @arg dep_id*[`_choice_remote_crate`]         Reference to a package to add as a dependency
add() {
    :;
}
# }} cargo add

# {{ cargo remove
# @cmd Remove dependencies from a manifest file
# @flag -n --dry-run                           Don't actually write the manifest
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --dev                                  Remove as development dependency
# @flag --build                                Remove as build dependency
# @option --target[`_choice_target`]           Remove as dependency from the given target platform
# @option -p --package[`_choice_package`] <SPEC>  Package to remove from
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg dep_id+[`_choice_depid`]                Dependencies to be removed
remove() {
    :;
}
# }} cargo remove

# {{ cargo run
# @cmd Run a binary or example of the local package
# @alias r
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package with the target to run
# @option --bin[`_choice_bin`] <NAME>            Name of the bin target to run
# @option --example[`_choice_example`] <NAME>    Name of the example target to run
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg args*                                     Arguments for the binary or example to run
run() {
    :;
}
# }} cargo run

# {{ cargo test
# @cmd Run the tests
# @alias t
# @flag --doc                                    Test only this library's documentation
# @flag --no-run                                 Compile, but don't run tests
# @flag --no-fail-fast                           Run all tests regardless of failure
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Display one character per test instead of one line
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to run tests for
# @flag --workspace                              Test all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Test only this package's library unit tests
# @flag --bins                                   Test all binaries
# @option --bin[`_choice_bin`] <NAME>            Test only the specified binary
# @flag --examples                               Test all examples
# @option --example[`_choice_example`] <NAME>    Test only the specified example
# @flag --tests                                  Test all tests
# @option --test[`_choice_test`] <NAME>          Test only the specified test target
# @flag --benches                                Test all benches
# @option --bench[`_choice_bench`] <NAME>        Test only the specified bench target
# @flag --all-targets                            Test all targets (does not include doctests)
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg testname[`_choice_testname`]              If specified, only run tests containing this string in their names
# @arg args*                                     Arguments for the test binary
test() {
    :;
}
# }} cargo test

# {{ cargo bench
# @cmd Run the benchmarks
# @flag --no-run                                 Compile, but don't run benchmarks
# @flag --no-fail-fast                           Run all benchmarks regardless of failure
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to run benchmarks for
# @flag --workspace                              Benchmark all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the benchmark
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Benchmark only this package's library
# @flag --bins                                   Benchmark all binaries
# @option --bin[`_choice_bin`] <NAME>            Benchmark only the specified binary
# @flag --examples                               Benchmark all examples
# @option --example[`_choice_example`] <NAME>    Benchmark only the specified example
# @flag --tests                                  Benchmark all tests
# @option --test[`_choice_test`] <NAME>          Benchmark only the specified test target
# @flag --benches                                Benchmark all benches
# @option --bench[`_choice_bench`] <NAME>        Benchmark only the specified bench target
# @flag --all-targets                            Benchmark all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg benchname                                 If specified, only run benches containing this string in their names
# @arg args*                                     Arguments for the bench binary
bench() {
    :;
}
# }} cargo bench

# {{ cargo update
# @cmd Update dependencies listed in Cargo.lock
# @flag -n --dry-run                           Don't actually write the lockfile
# @flag --recursive                            Force updating all dependencies of [SPEC]... as well
# @option --precise                            Update [SPEC] to exactly PRECISE
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag -w --workspace                         Only update the workspace packages
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg spec*
update() {
    :;
}
# }} cargo update

# {{ cargo search
# @cmd Search registry for crates
# @option --limit                              Limit the number of results (default: 10, max: 100)
# @option --index                              Registry index URL to search packages in
# @option --registry                           Registry to search packages in
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg query*[`_choice_remote_crate`]
search() {
    :;
}
# }} cargo search

# {{ cargo publish
# @cmd Package and upload this package to the registry
# @flag -n --dry-run                             Perform all checks without uploading
# @option --index                                Registry index URL to upload the package to
# @option --registry                             Registry to upload the package to
# @option --token                                Token to use when uploading
# @flag --no-verify                              Don't verify the contents by building them
# @flag --allow-dirty                            Allow dirty working directories to be packaged
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to publish
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
publish() {
    :;
}
# }} cargo publish

# {{ cargo install
# @cmd Install a Rust binary.
# @option --version                              Specify a version to install
# @option --index                                Registry index to install from
# @option --registry                             Registry to use
# @option --git <URL>                            Git URL to install the specified crate from
# @option --branch                               Branch to use when installing from git
# @option --tag                                  Tag to use when installing from git
# @option --rev <SHA>                            Specific commit to use when installing from git
# @option --path                                 Filesystem path to local crate to install
# @option --root <DIR>                           Directory to install packages into
# @flag -f --force                               Force overwriting existing crates or binaries
# @flag --no-track                               Do not save tracking information
# @flag --list                                   list all installed packages and their versions
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag --debug                                  Build in debug mode (with the 'dev' profile) instead of release mode
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option --bin[`_choice_bin`] <NAME>            Install only the specified binary
# @flag --bins                                   Install all binaries
# @option --example[`_choice_example`] <NAME>    Install only the specified example
# @flag --examples                               Install all examples
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @option --profile <PROFILE-NAME>               Install artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg crate*[`_choice_remote_crate`]
install() {
    :;
}
# }} cargo install

# {{ cargo uninstall
# @cmd Uninstall a Rust binary
# @option --root <DIR>                         Directory to uninstall packages from
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to uninstall
# @option --bin[`_choice_bin`] <NAME>          Only uninstall the binary NAME
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg spec*
uninstall() {
    :;
}
# }} cargo uninstall

# {{ cargo clippy
# @cmd Checks a package to catch common mistakes and improve your Rust code.
# @flag --edition                                Fix in preparation for the next edition
# @flag --edition-idioms                         Fix warnings to migrate to the idioms of an edition
# @flag --broken-code                            Fix code even if it already has compiler errors
# @flag --allow-no-vcs                           Fix code even if a VCS was not detected
# @flag --allow-dirty                            Fix code even if the working directory is dirty
# @flag --allow-staged                           Fix code even if the working directory has staged changes
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to fix
# @flag --workspace                              Fix all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the fixes
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Fix only this package's library
# @flag --bins                                   Fix all binaries
# @option --bin[`_choice_bin`] <NAME>            Fix only the specified binary
# @flag --examples                               Fix all examples
# @option --example[`_choice_example`] <NAME>    Fix only the specified example
# @flag --tests                                  Fix all tests
# @option --test[`_choice_test`] <NAME>          Fix only the specified test target
# @flag --benches                                Fix all benches
# @option --bench[`_choice_bench`] <NAME>        Fix only the specified bench target
# @flag --all-targets                            Fix all targets (default)
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Fix artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Fix for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @flag --no-deps                                Run Clippy only on the given crate, without linting the dependencies
# @flag --fix                                    Automatically apply lint suggestions.
# @flag -h --help                                Print this message
# @flag -V --version                             Print version info and exit
# @option --explain <LINT>                       Print the documentation for a given lint
# @arg opts~[`_choice_clippy`]
clippy() {
    :;
}
# }} cargo clippy

# {{ cargo config
# @cmd Inspect configuration values
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
config() {
    :;
}

# {{{ cargo config get
# @cmd
# @option --format[toml|json|json-value] <format>  Display format [default: toml]
# @flag --show-origin                          Display where the config value is defined
# @option --merged[yes|no] <merged>            Whether or not to merge config values [default: yes]
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg key                                     The config key to display
config::get() {
    :;
}
# }}} cargo config get
# }} cargo config

# {{ cargo fetch
# @cmd Fetch dependencies of a package from the network
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option --target[`_choice_target`] <TRIPLE>    Fetch dependencies for the target triple
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
fetch() {
    :;
}
# }} cargo fetch

# {{ cargo fix
# @cmd Automatically fix lint warnings reported by rustc
# @flag --edition                                Fix in preparation for the next edition
# @flag --edition-idioms                         Fix warnings to migrate to the idioms of an edition
# @flag --broken-code                            Fix code even if it already has compiler errors
# @flag --allow-no-vcs                           Fix code even if a VCS was not detected
# @flag --allow-dirty                            Fix code even if the working directory is dirty
# @flag --allow-staged                           Fix code even if the working directory has staged changes
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to fix
# @flag --workspace                              Fix all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the fixes
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --lib                                    Fix only this package's library
# @flag --bins                                   Fix all binaries
# @option --bin[`_choice_bin`] <NAME>            Fix only the specified binary
# @flag --examples                               Fix all examples
# @option --example[`_choice_example`] <NAME>    Fix only the specified example
# @flag --tests                                  Fix all tests
# @option --test[`_choice_test`] <NAME>          Fix only the specified test target
# @flag --benches                                Fix all benches
# @option --bench[`_choice_bench`] <NAME>        Fix only the specified bench target
# @flag --all-targets                            Fix all targets (default)
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Fix artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Fix for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
fix() {
    :;
}
# }} cargo fix

# {{ cargo fmt
# @cmd Formats all bin and lib files of the current crate using rustfmt.
# @flag -q --quiet                             No output printed to stdout
# @flag -v --verbose                           Use verbose output
# @flag --version                              Print rustfmt version and exit
# @option -p --package*[`_choice_package`] <package>  Specify package to format
# @option --manifest-path <manifest-path>      Specify path to Cargo.toml
# @option --message-format <message-format>    Specify message-format: short|json|human
# @flag --all                                  Format all packages, and also their local path-based dependencies
# @flag --check                                Run rustfmt in check mode
# @flag -h --help                              Print help
# @arg rustfmt_options~[`_choice_fmt`]         Options passed to rustfmt
fmt() {
    :;
}
# }} cargo fmt

# {{ cargo generate-lockfile
# @cmd Generate the lockfile for a package
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
generate-lockfile() {
    :;
}
# }} cargo generate-lockfile

# {{ cargo git-checkout
# @cmd This command has been removed
git-checkout() {
    :;
}
# }} cargo git-checkout

# {{ cargo locate-project
# @cmd Print a JSON representation of a Cargo.toml file's location
# @flag --workspace                             Locate Cargo.toml of the workspace root
# @option --message-format[json|plain] <FMT>    Output representation
# @flag -q --quiet                              Do not print cargo log messages
# @flag -v --verbose*                           Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>     Coloring: auto, always, never
# @option --config <KEY=VALUE>                  Override a configuration value
# @option -Z <FLAG>                             Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                               Print help
# @option --manifest-path <PATH>                Path to Cargo.toml
# @flag --frozen                                Require Cargo.lock and cache are up to date
# @flag --locked                                Require Cargo.lock is up to date
# @flag --offline                               Run without accessing the network
locate-project() {
    :;
}
# }} cargo locate-project

# {{ cargo login
# @cmd Save an api token from the registry locally.
# @option --registry                           Registry to use
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg token
# @arg args*                                   Additional arguments for the credential provider
login() {
    :;
}
# }} cargo login

# {{ cargo logout
# @cmd Remove an API token from the registry locally
# @option --registry                           Registry to use
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
logout() {
    :;
}
# }} cargo logout

# {{ cargo metadata
# @cmd Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
# @option --filter-platform <TRIPLE>            Only include resolve dependencies matching the given target-triple
# @flag --no-deps                               Output information only about the workspace members and don't fetch dependencies
# @option --format-version[1] <VERSION>         Format version
# @flag -q --quiet                              Do not print cargo log messages
# @flag -v --verbose*                           Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>     Coloring: auto, always, never
# @option --config <KEY=VALUE>                  Override a configuration value
# @option -Z <FLAG>                             Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                               Print help
# @option -F --features*,[`_choice_feature`]    Space or comma separated list of features to activate
# @flag --all-features                          Activate all available features
# @flag --no-default-features                   Do not activate the `default` feature
# @option --manifest-path <PATH>                Path to Cargo.toml
# @flag --frozen                                Require Cargo.lock and cache are up to date
# @flag --locked                                Require Cargo.lock is up to date
# @flag --offline                               Run without accessing the network
metadata() {
    :;
}
# }} cargo metadata

# {{ cargo owner
# @cmd Manage the owners of a crate on the registry
# @option -a --add <LOGIN>                     Name of a user or team to invite as an owner
# @option -r --remove <LOGIN>                  Name of a user or team to remove as an owner
# @flag -l --list                              List owners of a crate
# @option --index                              Registry index URL to modify owners for
# @option --registry                           Registry to modify owners for
# @option --token                              API token to use when authenticating
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg crate
owner() {
    :;
}
# }} cargo owner

# {{ cargo package
# @cmd Assemble the local package into a distributable tarball
# @flag -l --list                                Print files included in a package without making one
# @flag --no-verify                              Don't verify the contents by building them
# @flag --no-metadata                            Ignore warnings about a lack of human-usable metadata
# @flag --allow-dirty                            Allow dirty working directories to be packaged
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to assemble
# @flag --workspace                              Assemble all packages in the workspace
# @option --exclude <SPEC>                       Don't assemble specified packages
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
package() {
    :;
}
# }} cargo package

# {{ cargo pkgid
# @cmd Print a fully qualified package specification
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option -p --package[`_choice_package`] <SPEC>  Argument to get the package ID specifier for
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg spec
pkgid() {
    :;
}
# }} cargo pkgid

# {{ cargo read-manifest
# @cmd Print a JSON representation of a Cargo.toml manifest.
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
read-manifest() {
    :;
}
# }} cargo read-manifest

# {{ cargo report
# @cmd Generate and display various kinds of reports
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
report() {
    :;
}

# {{{ cargo report future-incompatibilities
# @cmd Reports any crates which will eventually stop compiling
# @option --id <id>                            identifier of the report generated by a Cargo command invocation
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to display a report for
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
report::future-incompatibilities() {
    :;
}
# }}} cargo report future-incompatibilities
# }} cargo report

# {{ cargo rustc
# @cmd Compile a package, and pass extra options to the compiler
# @option --print <INFO>                         Output compiler information without compiling
# @option --crate-type                           Comma separated list of types of crates for the compiler to emit
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to build
# @flag --lib                                    Build only this package's library
# @flag --bins                                   Build all binaries
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --examples                               Build all examples
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --tests                                  Build all tests
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --benches                                Build all benches
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --all-targets                            Build all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Target triple which compiles will be for
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg args*                                     Extra rustc flags
rustc() {
    :;
}
# }} cargo rustc

# {{ cargo rustdoc
# @cmd Build a package's documentation, using specified custom flags.
# @flag --open                                   Opens the docs in a browser after the operation
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag -q --quiet                               Do not print cargo log messages
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to document
# @flag --lib                                    Build only this package's library
# @flag --bins                                   Build all binaries
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --examples                               Build all examples
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --tests                                  Build all tests
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --benches                                Build all benches
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --all-targets                            Build all targets
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs.
# @flag --keep-going                             Do not abort the build as soon as there is an error
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @arg args*                                     Extra rustdoc flags
rustdoc() {
    :;
}
# }} cargo rustdoc

# {{ cargo tree
# @cmd Display a tree visualization of a dependency graph
# @flag -q --quiet                               Do not print cargo log messages
# @option -e --edges[features|normal|build|dev|all|no-normal|no-build|no-dev|no-proc-macro] <KINDS>  The kinds of dependencies to display
# @option -i --invert <SPEC>                     Invert the tree direction and focus on the given package
# @option --prune <SPEC>                         Prune the given package from the display of the dependency tree
# @option --depth                                Maximum display depth of the dependency tree
# @option --prefix[depth|indent|none]            Change the prefix (indentation) of how each entry is displayed [default: indent]
# @flag --no-dedupe                              Do not de-duplicate (repeats all shared dependencies)
# @flag -d --duplicates                          Show only dependencies which come in multiple versions (implies -i)
# @option --charset[utf8|ascii]                  Character set to use in output [default: utf8]
# @option -f --format                            Format string used for printing dependencies [default: {p}]
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
# @option -p --package[`_choice_package`] <SPEC>  Package to be used as the root of the tree
# @flag --workspace                              Display the tree for all packages in the workspace
# @option --exclude <SPEC>                       Exclude specific workspace members
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Filter dependencies matching the given target-triple (default host platform).
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
tree() {
    :;
}
# }} cargo tree

# {{ cargo vendor
# @cmd Vendor all dependencies for a project locally
# @flag --no-delete                            Don't delete older crates in the vendor directory
# @option -s --sync <TOML>                     Additional `Cargo.toml` to sync and vendor
# @flag --respect-source-config                Respect `[source]` config in `.cargo/config`
# @flag --versioned-dirs                       Always include version in subdir name
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg path                                    Where to vendor crates (`vendor` by default)
vendor() {
    :;
}
# }} cargo vendor

# {{ cargo verify-project
# @cmd Check correctness of crate manifest
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
verify-project() {
    :;
}
# }} cargo verify-project

# {{ cargo version
# @cmd Show version information
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
version() {
    :;
}
# }} cargo version

# {{ cargo yank
# @cmd Remove a pushed crate from the index
# @option --version                            The version to yank or un-yank
# @flag --undo                                 Undo a yank, putting a version back into the index
# @option --index                              Registry index URL to yank from
# @option --registry                           Registry to yank from
# @option --token                              API token to use when authenticating
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @arg crate
yank() {
    :;
}
# }} cargo yank

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cmd() {
    cargo --list | sed -n 's/^    \(\S\+\)$/\1/p'
}

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

_choice_add_feature() {
    if [[ "${#argc_dep_id[@]}" -eq 1 ]]; then
        curl -fsSL https://crates.io/api/v1/crates/$argc_dep_id | yq '.versions[0].features | keys | .[]'
    fi
}

_choice_remote_crate() {
    if [[ "${#ARGC_CWORD}" -gt 2 ]]; then
        curl -fsSL "https://crates.io/api/v1/crates?q=${ARGC_CWORD}&per_page=50" | \
        yq '.crates[] | .name + "	" + .description'
    fi
}

_choice_depid() {
    _helper_package_json | yq '.dependencies[].name'
}

_choice_testname() {
    cargo t -- --list | gawk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_clippy() {
    if [[ "$ARGC_CWORD" == '-'* ]]; then
        cat <<-'EOF'
--warn	Set lint warnings
-W	Set lint warnings
--allow	Set lint allowed
-A	Set lint allowed
--deny	Set lint denied
-D	Set lint denied
--forbid	Set lint forbidden
-F	Set lint forbidden
EOF
    else
        _argc_util_comp_subcommand 0 rustc
    fi
}

_choice_fmt() {
    _argc_util_comp_subcommand 0 rustfmt
}

_choice_toolchain() {
    rustup toolchain list | gawk '{
        split($1, parts, "-")
        print parts[1]
        print $1
    }'
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