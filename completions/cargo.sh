#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                           Print version info and exit
# @flag --list                                 List installed commands
# @option --explain <CODE>                     Run `rustc --explain CODE`
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag -q --quiet                             Do not print cargo log messages
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
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
# @flag -q --quiet                               Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package to build (see `cargo help pkgid`)
# @flag --workspace                              Build all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the build
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --all                                    Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --lib                                    Build only this package's library
# @flag --locked                                 Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --offline                                Run without accessing the network
# @flag --bins                                   Build all binaries
# @option --config <KEY=VALUE>                   Override a configuration value
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                               Build all examples
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --tests                                  Build all tests
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --benches                                Build all benches
# @flag --all-targets                            Build all targets
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --out-dir <PATH>                       Copy final artifacts to this directory (unstable)
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag --build-plan                             Output the build plan in JSON (unstable)
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
build() {
    :;
}
# }} cargo build

# {{ cargo check
# @cmd Analyze the current package and report errors, but don't build object files
# @alias c
# @flag -q --quiet                               Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to check
# @flag --workspace                              Check all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the check
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --all                                    Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --lib                                    Check only this package's library
# @flag --locked                                 Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>            Check only the specified binary
# @flag --offline                                Run without accessing the network
# @flag --bins                                   Check all binaries
# @option --config <KEY=VALUE>                   Override a configuration value
# @option --example[`_choice_example`] <NAME>    Check only the specified example
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                               Check all examples
# @option --test[`_choice_test`] <NAME>          Check only the specified test target
# @flag --tests                                  Check all tests
# @option --bench[`_choice_bench`] <NAME>        Check only the specified bench target
# @flag --benches                                Check all benches
# @flag --all-targets                            Check all targets
# @flag -r --release                             Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Check artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Check for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
check() {
    :;
}
# }} cargo check

# {{ cargo clean
# @cmd Remove the target directory
# @flag -q --quiet                               Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package to clean artifacts for
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --target[`_choice_target`] <TRIPLE>    Target triple to clean output for
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag -r --release                             Whether or not to clean release artifacts
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --profile <PROFILE-NAME>               Clean artifacts of the specified profile
# @flag --doc                                    Whether or not to clean just the documentation directory
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
clean() {
    :;
}
# }} cargo clean

# {{ cargo doc
# @cmd Build this package's and its dependencies' documentation
# @alias d
# @flag -q --quiet                               Do not print cargo log messages
# @flag --open                                   Opens the docs in a browser after the operation
# @option -p --package[`_choice_package`] <SPEC>  Package to document
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                              Document all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the build
# @flag --all                                    Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --no-deps                                Don't build documentation for dependencies
# @flag --document-private-items                 Document private items
# @flag --locked                                 Require Cargo.lock is up to date
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --lib                                    Document only this package's library
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --bin[`_choice_bin`] <NAME>            Document only the specified binary
# @flag --bins                                   Document all binaries
# @option --example[`_choice_example`] <NAME>    Document only the specified example
# @flag --examples                               Document all examples
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format <FMT>                 Error format
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
doc() {
    :;
}
# }} cargo doc

# {{ cargo new
# @cmd Create a new cargo package
# @flag -q --quiet                             Do not print cargo log messages
# @option --registry                           Registry to use
# @option --vcs[git|hg|pijul|fossil|none]      Initialize a new repository for the given version control system (git, hg, pijul, or fossil) or do not initialize any version control at all (none), overriding a global configuration.
# @option --bin[`_choice_bin`]                 Use a binary (application) template [default]
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                                  Use a library template
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --edition[2015|2018|2021] <YEAR>     Edition to set for the crate generated
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --name                               Set the resulting package name, defaults to the directory name
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg path!
new() {
    :;
}
# }} cargo new

# {{ cargo init
# @cmd Create a new cargo package in an existing directory
# @flag -q --quiet                             Do not print cargo log messages
# @option --registry                           Registry to use
# @option --vcs[git|hg|pijul|fossil|none]      Initialize a new repository for the given version control system (git, hg, pijul, or fossil) or do not initialize any version control at all (none), overriding a global configuration.
# @option --bin[`_choice_bin`]                 Use a binary (application) template [default]
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                                  Use a library template
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --edition[2015|2018|2021] <YEAR>     Edition to set for the crate generated
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --name                               Set the resulting package name, defaults to the directory name
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg path                                    [default: .]
init() {
    :;
}
# }} cargo init

# {{ cargo add
# @cmd Add dependencies to a manifest file
# @flag --no-default-features                  Disable the default features
# @flag --default-features                     Re-enable the default features
# @option -F --features                        Space or comma separated list of features to activate
# @flag --optional                             Mark the dependency as optional
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag --no-optional                          Mark the dependency as required
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --rename <NAME>                      Rename the dependency
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --locked                               Require Cargo.lock is up to date
# @option -p --package[`_choice_package`] <SPEC>  Package to modify
# @flag --offline                              Run without accessing the network
# @flag -q --quiet                             Do not print cargo log messages
# @option --config <KEY=VALUE>                 Override a configuration value
# @flag --dry-run                              Don't actually write the manifest
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help (see a summary with '-h')
# @option --path                               Filesystem path to local crate to add
# @option --git <URI>                          Git repository location
# @option --branch                             Git branch to download the crate from
# @option --tag                                Git tag to download the crate from
# @option --rev                                Git reference to download the crate from
# @option --registry <NAME>                    Package registry for this dependency
# @flag --dev                                  Add as development dependency
# @flag --build                                Add as build dependency
# @option --target[`_choice_target`]           Add as dependency to the given target platform
# @arg DEP_ID*                                 Reference to a package to add as a dependency
add() {
    :;
}
# }} cargo add

# {{ cargo remove
# @cmd Remove dependencies from a manifest file
# @option -p --package[`_choice_package`] <SPEC>  Package to remove from
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag -q --quiet                             Do not print cargo log messages
# @flag --dry-run                              Don't actually write the manifest
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @flag --dev                                  Remove as development dependency
# @flag --build                                Remove as build dependency
# @option --target[`_choice_target`]           Remove as dependency from the given target platform
# @arg DEP_ID+[`_choice_depid`]                Dependencies to be removed
remove() {
    :;
}
# }} cargo remove

# {{ cargo run
# @cmd Run a binary or example of the local package
# @alias r
# @flag -q --quiet                               Do not print cargo log messages
# @option --bin[`_choice_bin`] <NAME>            Name of the bin target to run
# @option --example[`_choice_example`] <NAME>    Name of the example target to run
# @option -p --package[`_choice_package`] <SPEC>  Package with the target to run
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @flag --locked                                 Require Cargo.lock is up to date
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --offline                                Run without accessing the network
# @flag --all-features                           Activate all available features
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --no-default-features                    Do not activate the `default` feature
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format <FMT>                 Error format
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg args*
run() {
    :;
}
# }} cargo run

# {{ cargo test
# @cmd Run the tests
# @alias t
# @flag -q --quiet                               Display one character per test instead of one line
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`] <NAME>            Test only the specified binary
# @flag --bins                                   Test all binaries
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --example[`_choice_example`] <NAME>    Test only the specified example
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --examples                               Test all examples
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --test[`_choice_test`] <NAME>          Test only the specified test target
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --tests                                  Test all tests
# @option --bench[`_choice_bench`] <NAME>        Test only the specified bench target
# @flag --offline                                Run without accessing the network
# @flag --benches                                Test all benches
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --all-targets                            Test all targets
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --doc                                    Test only this library's documentation
# @flag --no-run                                 Compile, but don't run tests
# @flag --no-fail-fast                           Run all tests regardless of failure
# @option -p --package[`_choice_package`] <SPEC>  Package to run tests for
# @flag --workspace                              Test all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the test
# @flag --all                                    Alias for --workspace (deprecated)
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg TESTNAME[`_choice_testname`]              If specified, only run tests containing this string in their names
# @arg args*                                     Arguments for the test binary
test() {
    :;
}
# }} cargo test

# {{ cargo bench
# @cmd Run the benchmarks
# @flag -q --quiet                               Do not print cargo log messages
# @flag --lib                                    Benchmark only this package's library
# @option --bin[`_choice_bin`] <NAME>            Benchmark only the specified binary
# @flag --bins                                   Benchmark all binaries
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --example[`_choice_example`] <NAME>    Benchmark only the specified example
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --examples                               Benchmark all examples
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --test[`_choice_test`] <NAME>          Benchmark only the specified test target
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --tests                                  Benchmark all tests
# @option --bench[`_choice_bench`] <NAME>        Benchmark only the specified bench target
# @flag --offline                                Run without accessing the network
# @flag --benches                                Benchmark all benches
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --all-targets                            Benchmark all targets
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-run                                 Compile, but don't run benchmarks
# @option -p --package[`_choice_package`] <SPEC>  Package to run benchmarks for
# @flag --workspace                              Benchmark all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the benchmark
# @flag --all                                    Alias for --workspace (deprecated)
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --message-format <FMT>                 Error format
# @flag --no-fail-fast                           Run all benchmarks regardless of failure
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg BENCHNAME                                 If specified, only run benches containing this string in their names
# @arg args*                                     Arguments for the bench binary
bench() {
    :;
}
# }} cargo bench

# {{ cargo update
# @cmd Update dependencies listed in Cargo.lock
# @flag -q --quiet                             Do not print cargo log messages
# @flag -w --workspace                         Only update the workspace packages
# @option -p --package[`_choice_package`] <SPEC>  Package to update
# @flag --aggressive                           Force updating all dependencies of SPEC as well when used with -p
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag --dry-run                              Don't actually write the lockfile
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --precise                            Update a single dependency to exactly PRECISE when used with -p
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
update() {
    :;
}
# }} cargo update

# {{ cargo search
# @cmd Search registry for crates
# @flag -q --quiet                             Do not print cargo log messages
# @option --index                              Registry index URL to upload the package to
# @option --limit                              Limit the number of results (default: 10, max: 100)
# @option --registry                           Registry to use
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg query*
search() {
    :;
}
# }} cargo search

# {{ cargo publish
# @cmd Package and upload this package to the registry
# @flag -q --quiet                               Do not print cargo log messages
# @option --index                                Registry index URL to upload the package to
# @option --token                                Token to use when uploading
# @flag --no-verify                              Don't verify the contents by building them
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --allow-dirty                            Allow dirty working directories to be packaged
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --locked                                 Require Cargo.lock is up to date
# @option -p --package[`_choice_package`] <SPEC>  Package to publish
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-default-features                    Do not activate the `default` feature
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --dry-run                                Perform all checks without uploading
# @option --registry                             Registry to publish to
# @flag -h --help                                Print help
publish() {
    :;
}
# }} cargo publish

# {{ cargo install
# @cmd Install a Rust binary.
# @flag -q --quiet                               Do not print cargo log messages
# @option --version                              Specify a version to install
# @option --git <URL>                            Git URL to install the specified crate from
# @option --branch                               Branch to use when installing from git
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --tag                                  Tag to use when installing from git
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --rev <SHA>                            Specific commit to use when installing from git
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --path                                 Filesystem path to local crate to install
# @flag --list                                   list all installed packages and their versions
# @flag --locked                                 Require Cargo.lock is up to date
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag -f --force                               Force overwriting existing crates or binaries
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-track                               Do not save tracking information
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --profile <PROFILE-NAME>               Install artifacts with the specified profile
# @flag --debug                                  Build in debug mode (with the 'dev' profile) instead of release mode
# @option --bin[`_choice_bin`] <NAME>            Install only the specified binary
# @flag --bins                                   Install all binaries
# @option --example[`_choice_example`] <NAME>    Install only the specified example
# @flag --examples                               Install all examples
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --root <DIR>                           Directory to install packages into
# @option --index                                Registry index to install from
# @option --registry                             Registry to use
# @option --message-format <FMT>                 Error format
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg crate*
install() {
    :;
}
# }} cargo install

# {{ cargo uninstall
# @cmd Uninstall a Rust binary
# @flag -q --quiet                             Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package to uninstall
# @option --bin[`_choice_bin`] <NAME>          Only uninstall the binary NAME
# @option --root <DIR>                         Directory to uninstall packages from
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg spec*
uninstall() {
    :;
}
# }} cargo uninstall

# {{ cargo clippy
# @cmd Checks a package to catch common mistakes and improve your Rust code.
# @flag --no-deps              Run Clippy only on the given crate, without linting the dependencies
# @flag --fix                  Automatically apply lint suggestions.
# @flag -h --help              Print this message
# @flag -V --version           Print version info and exit
# @option --explain <LINT>     Print the documentation for a given lint
# @option -W --warn <OPT>      Set lint warnings
# @option -A --allow <OPT>     Set lint allowed
# @option -D --deny <OPT>      Set lint denied
# @option -F --forbid <OPT>    Set lint forbidden
# @arg opts*
clippy() {
    :;
}
# }} cargo clippy

# {{ cargo config
# @cmd Inspect configuration values
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
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
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg key                                     The config key to display
config::get() {
    :;
}
# }}} cargo config get
# }} cargo config

# {{ cargo fetch
# @cmd Fetch dependencies of a package from the network
# @flag -q --quiet                               Do not print cargo log messages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --target[`_choice_target`] <TRIPLE>    Fetch dependencies for the target triple
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help
fetch() {
    :;
}
# }} cargo fetch

# {{ cargo fix
# @cmd Automatically fix lint warnings reported by rustc
# @flag -q --quiet                               Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to fix
# @flag --workspace                              Fix all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the fixes
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --all                                    Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --lib                                    Fix only this package's library
# @flag --locked                                 Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>            Fix only the specified binary
# @flag --offline                                Run without accessing the network
# @flag --bins                                   Fix all binaries
# @option --config <KEY=VALUE>                   Override a configuration value
# @option --example[`_choice_example`] <NAME>    Fix only the specified example
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                               Fix all examples
# @option --test[`_choice_test`] <NAME>          Fix only the specified test target
# @flag --tests                                  Fix all tests
# @option --bench[`_choice_bench`] <NAME>        Fix only the specified bench target
# @flag --benches                                Fix all benches
# @flag --all-targets                            Fix all targets (default)
# @flag -r --release                             Fix artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Fix for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format <FMT>                 Error format
# @flag --broken-code                            Fix code even if it already has compiler errors
# @flag --edition                                Fix in preparation for the next edition
# @flag --edition-idioms                         Fix warnings to migrate to the idioms of an edition
# @flag --allow-no-vcs                           Fix code even if a VCS was not detected
# @flag --allow-dirty                            Fix code even if the working directory is dirty
# @flag --allow-staged                           Fix code even if the working directory has staged changes
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
fix() {
    :;
}
# }} cargo fix

# {{ cargo fmt
# @cmd Formats all bin and lib files of the current crate using rustfmt.
# @flag --all                                  Format all packages, and also their local path-based dependencies
# @flag --check                                Run rustfmt in check mode
# @flag -h --help                              Print help information
# @option --manifest-path <manifest-path>      Specify path to Cargo.toml
# @option --message-format <message-format>    Specify message-format: short|json|human
# @option -p --package*[`_choice_package`] <package>  Specify package to format
# @flag -q --quiet                             No output printed to stdout
# @flag -v --verbose                           Use verbose output
# @flag --version                              Print rustfmt version and exit
# @arg rustfmt_options+                        Options passed to rustfmt
fmt() {
    :;
}
# }} cargo fmt

# {{ cargo generate-lockfile
# @cmd Generate the lockfile for a package
# @flag -q --quiet                             Do not print cargo log messages
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
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
# @flag -q --quiet                              Do not print cargo log messages
# @option --manifest-path <PATH>                Path to Cargo.toml
# @option --message-format[json|plain] <FMT>    Output representation
# @flag -v --verbose*                           Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                             Locate Cargo.toml of the workspace root
# @option --color[auto|always|never] <WHEN>     Coloring: auto, always, never
# @flag --frozen                                Require Cargo.lock and cache are up to date
# @flag --locked                                Require Cargo.lock is up to date
# @flag --offline                               Run without accessing the network
# @option --config <KEY=VALUE>                  Override a configuration value
# @option -Z <FLAG>                             Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                               Print help
locate-project() {
    :;
}
# }} cargo locate-project

# {{ cargo login
# @cmd Save an api token from the registry locally.
# @flag -q --quiet                             Do not print cargo log messages
# @option --registry                           Registry to use
# @flag --generate-keypair                     Generate a public/secret keypair (unstable)
# @flag --secret-key                           Prompt for secret key (unstable)
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --key-subject <SUBJECT>              Set the key subject for this registry (unstable)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg token
login() {
    :;
}
# }} cargo login

# {{ cargo logout
# @cmd Remove an API token from the registry locally
# @flag -q --quiet                             Do not print cargo log messages
# @option --registry                           Registry to use
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
logout() {
    :;
}
# }} cargo logout

# {{ cargo metadata
# @cmd Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
# @flag -q --quiet                             Do not print cargo log messages
# @option -F --features                        Space or comma separated list of features to activate
# @flag --all-features                         Activate all available features
# @flag --no-default-features                  Do not activate the `default` feature
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --filter-platform <TRIPLE>           Only include resolve dependencies matching the given target-triple
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --no-deps                              Output information only about the workspace members and don't fetch dependencies
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --format-version <VERSION>           Format version [possible values: 1]
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
metadata() {
    :;
}
# }} cargo metadata

# {{ cargo owner
# @cmd Manage the owners of a crate on the registry
# @flag -q --quiet                             Do not print cargo log messages
# @option -a --add <LOGIN>                     Name of a user or team to invite as an owner
# @option -r --remove <LOGIN>                  Name of a user or team to remove as an owner
# @flag -l --list                              List owners of a crate
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --index                              Registry index to modify owners for
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --token                              API token to use when authenticating
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @option --registry                           Registry to use
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg crate
owner() {
    :;
}
# }} cargo owner

# {{ cargo package
# @cmd Assemble the local package into a distributable tarball
# @flag -q --quiet                               Do not print cargo log messages
# @flag -l --list                                Print files included in a package without making one
# @flag --no-verify                              Don't verify the contents by building them
# @flag --no-metadata                            Ignore warnings about a lack of human-usable metadata
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --allow-dirty                            Allow dirty working directories to be packaged
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option -F --features                          Space or comma separated list of features to activate
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --all-features                           Activate all available features
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --no-default-features                    Do not activate the `default` feature
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to assemble
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --workspace                              Assemble all packages in the workspace
# @option --exclude <SPEC>                       Don't assemble specified packages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag -h --help                                Print help
package() {
    :;
}
# }} cargo package

# {{ cargo pkgid
# @cmd Print a fully qualified package specification
# @flag -q --quiet                             Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Argument to get the package ID specifier for
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg spec
pkgid() {
    :;
}
# }} cargo pkgid

# {{ cargo read-manifest
# @cmd Print a JSON representation of a Cargo.toml manifest.
# @flag -q --quiet                             Do not print cargo log messages
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
read-manifest() {
    :;
}
# }} cargo read-manifest

# {{ cargo report
# @cmd Generate and display various kinds of reports
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
report() {
    :;
}

# {{{ cargo report future-incompatibilities
# @cmd Reports any crates which will eventually stop compiling
# @option --id <id>                            identifier of the report generated by a Cargo command invocation
# @option -p --package[`_choice_package`] <SPEC>  Package to display a report for
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
report::future-incompatibilities() {
    :;
}
# }}} cargo report future-incompatibilities
# }} cargo report

# {{ cargo rustc
# @cmd Compile a package, and pass extra options to the compiler
# @flag -q --quiet                               Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>  Package to build
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                                    Build only this package's library
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --bins                                   Build all binaries
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --examples                               Build all examples
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @flag --tests                                  Build all tests
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --benches                                Build all benches
# @flag --all-targets                            Build all targets
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Target triple which compiles will be for
# @option --print <INFO>                         Output compiler information without compiling
# @option --crate-type                           Comma separated list of types of crates for the compiler to emit
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format <FMT>                 Error format
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @flag --future-incompat-report                 Outputs a future incompatibility report at the end of the build
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg args*                                     Rustc flags
rustc() {
    :;
}
# }} cargo rustc

# {{ cargo rustdoc
# @cmd Build a package's documentation, using specified custom flags.
# @flag -q --quiet                               Do not print cargo log messages
# @flag --open                                   Opens the docs in a browser after the operation
# @option -p --package[`_choice_package`] <SPEC>  Package to document
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --lib                                    Build only this package's library
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --bins                                   Build all binaries
# @flag --locked                                 Require Cargo.lock is up to date
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --examples                               Build all examples
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --tests                                  Build all tests
# @option --bench[`_choice_bench`] <NAME>        Build only the specified bench target
# @flag --benches                                Build all benches
# @flag --all-targets                            Build all targets
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features                          Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format <FMT>                 Error format
# @flag --unit-graph                             Output build graph in JSON (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --timings[html|json] <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                                Print help
# @arg args*
rustdoc() {
    :;
}
# }} cargo rustdoc

# {{ cargo tree
# @cmd Display a tree visualization of a dependency graph
# @flag -q --quiet                               Do not print cargo log messages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option -p --package[`_choice_package`] <SPEC>  Package to be used as the root of the tree
# @flag -v --verbose*                            Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                              Display the tree for all packages in the workspace
# @option --exclude <SPEC>                       Exclude specific workspace members
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @option -F --features                          Space or comma separated list of features to activate
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --all-features                           Activate all available features
# @flag --offline                                Run without accessing the network
# @option --config <KEY=VALUE>                   Override a configuration value
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Filter dependencies matching the given target-triple (default host platform).
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option -e --edges[features|normal|build|dev|all|no-normal|no-build|no-dev|no-proc-macro] <KINDS>  The kinds of dependencies to display
# @option -i --invert <SPEC>                     Invert the tree direction and focus on the given package
# @option --prune <SPEC>                         Prune the given package from the display of the dependency tree
# @option --depth                                Maximum display depth of the dependency tree
# @option --prefix[depth|indent|none]            Change the prefix (indentation) of how each entry is displayed [default: indent]
# @flag --no-dedupe                              Do not de-duplicate (repeats all shared dependencies)
# @flag -d --duplicates                          Show only dependencies which come in multiple versions (implies -i)
# @option --charset[utf8|ascii]                  Character set to use in output: utf8, ascii [default: utf8]
# @option -f --format                            Format string used for printing dependencies [default: {p}]
# @flag -h --help                                Print help
tree() {
    :;
}
# }} cargo tree

# {{ cargo vendor
# @cmd Vendor all dependencies for a project locally
# @flag -q --quiet                             Do not print cargo log messages
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --no-delete                            Don't delete older crates in the vendor directory
# @option -s --sync <TOML>                     Additional `Cargo.toml` to sync and vendor
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @flag --respect-source-config                Respect `[source]` config in `.cargo/config`
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --versioned-dirs                       Always include version in subdir name
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg path                                    Where to vendor crates (`vendor` by default)
vendor() {
    :;
}
# }} cargo vendor

# {{ cargo verify-project
# @cmd Check correctness of crate manifest
# @flag -q --quiet                             Do not print cargo log messages
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
verify-project() {
    :;
}
# }} cargo verify-project

# {{ cargo version
# @cmd Show version information
# @flag -q --quiet                             Do not print cargo log messages
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
version() {
    :;
}
# }} cargo version

# {{ cargo yank
# @cmd Remove a pushed crate from the index
# @flag -q --quiet                             Do not print cargo log messages
# @option --version                            The version to yank or un-yank
# @flag --undo                                 Undo a yank, putting a version back into the index
# @option --index                              Registry index to yank from
# @flag -v --verbose*                          Use verbose output (-vv very verbose/build.rs output)
# @option --token                              API token to use when authenticating
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --registry                           Registry to use
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @option --config <KEY=VALUE>                 Override a configuration value
# @option -Z <FLAG>                            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                              Print help
# @arg crate
yank() {
    :;
}
# }} cargo yank

_choice_cmd() {
	cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | awk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_depid() {
	_helper_package_json | yq '.dependencies[].name'
}

_choice_package() {
	_helper_metadata_json | yq '.packages[].name'
}

_choice_bench() {
	_helper_package_target bench
}

_choice_bin() {
	_helper_package_target bin
}

_choice_test() {
	_helper_package_target test
}

_choice_example() {
	_helper_package_target example
}

_choice_target() {
	local targets=$(rustup target list)
	while read -r line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}

_helper_package_target() {
	_helper_package_json | yq '.targets[] | select( .kind[] | contains("'$1'") ) | .name'
}

_helper_package_json() {
	metadata_json="$(_helper_metadata_json)"
	if [[ -n "$argc_package" ]]; then
		echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
	else
		workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
		manifest_path="$(_argc_util_path_resolve -u "$workspace_root" Cargo.toml)"
		echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
	fi
}

_helper_metadata_json() {
	cargo metadata --format-version 1 --no-deps
}

_argc_util_path_resolve() {
    local format args value
    if [[ "$1" == "-p" ]]; then format=1; shift; fi # platform path
    if [[ "$1" == "-u" ]]; then format=2; shift; fi # unix path
    if [[ $# -eq 0 ]]; then args=( "$(cat)" ); else args=( "$@" ); fi
    args="$(printf "%q\n" "${args[@]}")"
    value="$(awk -v RAW_ARGS="$args" 'BEGIN {
    split(RAW_ARGS, args, "\n"); split("", parts)
    partsLen = 0; isWin = 0; sep = "/";
    for (i in args) {
        arg = args[i]
        if (arg == "\x27\x27") continue
        if (i == 1) {
            if (match(arg, /^[A-Za-z]:/)) {
                value = substr(arg, 1, 2) "\\"; arg = substr(arg, 3); isWin = 1; sep = "\\"; 
            } else if (substr(arg, 1, 1) == "/") {
                value = "/"; arg = substr(arg, 2)
            }
        }
        if (isWin == 1) gsub("\\\\", "/", arg)
        split(arg, pathParts, "/")
        for (j in pathParts) {
            pathPart = pathParts[j]
            if (pathPart == "" || pathPart == ".") continue
            if (pathPart == "..") {
                if (partsLen == 0) exit 1
                parts[partsLen] = ""; partsLen = partsLen - 1
            } else {
                partsLen = partsLen + 1; parts[partsLen] = pathPart
            }
        }
    }
    for (i = 1; i <= partsLen; i++) {
        if (i == 1) {
            value = value parts[i]
        } else {
            value = value sep parts[i]
        }
    }
    print value
}'
)"
    if [[ $? -ne 0 ]]; then exit $?;  fi
    if [[ -z "$value" ]]; then return; fi
    if [[ "$value" =~ ^[A-Za-z]: ]]; then
        if [[ "$format" -eq 2 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -u "$value"; else echo "$value"; fi
    else
        if [[ "$format" -eq 1 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -w "$value"; else echo "$value"; fi
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"