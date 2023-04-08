#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version              Print version info and exit
# @flag --list                    List installed commands
# @option --explain <CODE>        Run `rustc --explain CODE`
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @flag -q --quiet                Do not print cargo log messages
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg cmd![`_choice_cmd`]        

# {{ cargo build
# @cmd Compile the current package
# @alias b
# @flag -q --quiet                    Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>         Package to build (see `cargo help pkgid`)
# @flag --workspace                   Build all packages in the workspace
# @option --exclude <SPEC>            Exclude packages from the build
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --all                         Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>  Coloring
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --lib                         Build only this package's library
# @flag --locked                      Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>                Build only the specified binary
# @flag --offline                     Run without accessing the network
# @flag --bins                        Build all binaries
# @option --config <KEY=VALUE>        Override a configuration value
# @option --example[`_choice_example`] <NAME>            Build only the specified example
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                    Build all examples
# @option --test[`_choice_test`] <NAME>               Build only the specified test target
# @flag --tests                       Build all tests
# @option --bench[`_choice_bench`] <NAME>              Build only the specified bench target
# @flag --benches                     Build all benches
# @flag --all-targets                 Build all targets
# @flag -r --release                  Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --out-dir <PATH>            Copy final artifacts to this directory (unstable)
# @option --manifest-path <PATH>      Path to Cargo.toml
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --message-format <FMT>      Error format
# @flag --build-plan                  Output the build plan in JSON (unstable)
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @flag --future-incompat-report      Outputs a future incompatibility report at the end of the build
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
build() {
    :;
}

# }} cargo build

# {{ cargo check
# @cmd Analyze the current package and report errors, but don't build object files
# @alias c
# @flag -q --quiet                    Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>         Package(s) to check
# @flag --workspace                   Check all packages in the workspace
# @option --exclude <SPEC>            Exclude packages from the check
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --all                         Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>  Coloring
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --lib                         Check only this package's library
# @flag --locked                      Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>                Check only the specified binary
# @flag --offline                     Run without accessing the network
# @flag --bins                        Check all binaries
# @option --config <KEY=VALUE>        Override a configuration value
# @option --example[`_choice_example`] <NAME>            Check only the specified example
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                    Check all examples
# @option --test[`_choice_test`] <NAME>               Check only the specified test target
# @flag --tests                       Check all tests
# @option --bench[`_choice_bench`] <NAME>              Check only the specified bench target
# @flag --benches                     Check all benches
# @flag --all-targets                 Check all targets
# @flag -r --release                  Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Check artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Check for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --message-format <FMT>      Error format
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @flag --future-incompat-report      Outputs a future incompatibility report at the end of the build
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
check() {
    :;
}

# }} cargo check

# {{ cargo clean
# @cmd Remove the target directory
# @flag -q --quiet                    Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>         Package to clean artifacts for
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --target[`_choice_target`] <TRIPLE>           Target triple to clean output for
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -r --release                  Whether or not to clean release artifacts
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --profile <PROFILE-NAME>    Clean artifacts of the specified profile
# @flag --doc                         Whether or not to clean just the documentation directory
# @flag --locked                      Require Cargo.lock is up to date
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                     Print help
clean() {
    :;
}

# }} cargo clean

# {{ cargo doc
# @cmd Build this package's and its dependencies' documentation
# @alias d
# @flag -q --quiet                    Do not print cargo log messages
# @flag --open                        Opens the docs in a browser after the operation
# @option -p --package[`_choice_package`] <SPEC>         Package to document
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                   Document all packages in the workspace
# @option --exclude <SPEC>            Exclude packages from the build
# @flag --all                         Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --no-deps                     Don't build documentation for dependencies
# @flag --document-private-items      Document private items
# @flag --locked                      Require Cargo.lock is up to date
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --lib                         Document only this package's library
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --bin[`_choice_bin`] <NAME>                Document only the specified binary
# @flag --bins                        Document all binaries
# @option --example[`_choice_example`] <NAME>            Document only the specified example
# @flag --examples                    Document all examples
# @flag -r --release                  Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --message-format <FMT>      Error format
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
doc() {
    :;
}

# }} cargo doc

# {{ cargo new
# @cmd Create a new cargo package
# @flag -q --quiet                Do not print cargo log messages
# @option --registry              Registry to use
# @option --vcs                   Initialize a new repository for the given version control system (git, hg, pijul, or fossil) or do not initialize any version control at all (none), overriding a global configuration.
# @flag --bin                     Use a binary (application) template [default]
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                     Use a library template
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --edition <YEAR>        Edition to set for the crate generated [possible values: 2015, 2018, 2021]
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @option --name                  Set the resulting package name, defaults to the directory name
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg path!                      
new() {
    :;
}

# }} cargo new

# {{ cargo init
# @cmd Create a new cargo package in an existing directory
# @flag -q --quiet                Do not print cargo log messages
# @option --registry              Registry to use
# @option --vcs                   Initialize a new repository for the given version control system (git, hg, pijul, or fossil) or do not initialize any version control at all (none), overriding a global configuration.
# @flag --bin                     Use a binary (application) template [default]
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                     Use a library template
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --edition <YEAR>        Edition to set for the crate generated [possible values: 2015, 2018, 2021]
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @option --name                  Set the resulting package name, defaults to the directory name
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg path                       [default: .]
init() {
    :;
}

# }} cargo init

# {{ cargo add
# @cmd Add dependencies to a manifest file
# @option --no-default-features <Disable>  the default features
# @option --default-features <Re-enable> <the>  default features
# @option -F --features <FEATURES> <Space>  or comma separated list of features to activate
# @option --optional <Mark>              the dependency as optional The package name will be exposed as feature of your crate.
# @option -v --verbose* <Use>            verbose output (-vv very verbose/build.rs output)
# @option --no-optional <Mark>           the dependency as required The package will be removed from your features.
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --rename <NAME> <Rename>       the dependency Example uses: - Depending on multiple versions of a crate - Depend on crates with the same name from different registries
# @option --frozen <Require>             Cargo.lock and cache are up to date
# @option --manifest-path <PATH> <Path>  to Cargo.toml
# @option --locked <Require>             Cargo.lock is up to date
# @option -p --package[`_choice_package`] <SPEC> <Package>  to modify
# @option --offline <Run>                without accessing the network
# @option -q --quiet <Do>                not print cargo log messages
# @option --config <KEY=VALUE> <Override>  a configuration value
# @option --dry-run <Don't> <actually>   write the manifest
# @option -Z <FLAG> <Unstable>           (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option -h --help <Print>              help (see a summary with '-h')
# @option --path <PATH> <Filesystem>     path to local crate to add
# @option --git <URI> <Git>              repository location Without any other information, cargo will use latest commit on the main branch.
# @option --branch <BRANCH> <Git>        branch to download the crate from
# @option --tag <TAG> <Git>              tag to download the crate from
# @option --rev <REV> <Git>              reference to download the crate from This is the catch all, handling hashes to named references in remote repositories.
# @option --registry <NAME> <Package>    registry for this dependency
# @option --dev <Add>                    as development dependency Dev-dependencies are not used when compiling a package for building, but are used for compiling tests, examples, and benchmarks.
# @option --build <Add>                  as build dependency Build-dependencies are the only dependencies available for use by build scripts (`build.rs` files).
# @option --target[`_choice_target`] <TARGET> <Add>        as dependency to the given target platform
# @arg DEP_ID*                           Reference to a package to add as a dependency You can reference a package by: - `<name>`, like `cargo add serde` (latest version will be used) - `<name>@<version-req>`, like `cargo add serde@1` or `cargo add serde@=1.0.38`
add() {
    :;
}

# }} cargo add

# {{ cargo remove
# @cmd Remove dependencies from a manifest file
# @option -p --package[`_choice_package`] <SPEC>       Package to remove from
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag -q --quiet                  Do not print cargo log messages
# @flag --dry-run                   Don't actually write the manifest
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @flag --dev                       Remove as development dependency
# @flag --build                     Remove as build dependency
# @option --target[`_choice_target`]                  Remove as dependency from the given target platform
# @arg DEP_ID+[`_choice_depid`]     Dependencies to be removed
remove() {
    :;
}

# }} cargo remove

# {{ cargo run
# @cmd Run a binary or example of the local package
# @alias r
# @flag -q --quiet                    Do not print cargo log messages
# @option --bin[`_choice_bin`] <NAME>                Name of the bin target to run
# @option --example[`_choice_example`] <NAME>            Name of the example target to run
# @option -p --package[`_choice_package`] <SPEC>         Package with the target to run
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag -r --release                  Build artifacts in release mode, with optimizations
# @flag --locked                      Require Cargo.lock is up to date
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --offline                     Run without accessing the network
# @flag --all-features                Activate all available features
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --no-default-features         Do not activate the `default` feature
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --message-format <FMT>      Error format
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
# @arg args*                          
run() {
    :;
}

# }} cargo run

# {{ cargo test
# @cmd Run the tests
# @alias t
# @flag -q --quiet                     Display one character per test instead of one line
# @flag --lib                          Test only this package's library unit tests
# @option --bin[`_choice_bin`] <NAME>                 Test only the specified binary
# @flag --bins                         Test all binaries
# @flag -v --verbose*                  Use verbose output (-vv very verbose/build.rs output)
# @option --example[`_choice_example`] <NAME>             Test only the specified example
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --examples                     Test all examples
# @flag --frozen                       Require Cargo.lock and cache are up to date
# @option --test[`_choice_test`] <NAME>                Test only the specified test target
# @flag --locked                       Require Cargo.lock is up to date
# @flag --tests                        Test all tests
# @option --bench[`_choice_bench`] <NAME>               Test only the specified bench target
# @flag --offline                      Run without accessing the network
# @flag --benches                      Test all benches
# @option --config <KEY=VALUE>         Override a configuration value
# @flag --all-targets                  Test all targets
# @option -Z <FLAG>                    Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --doc                          Test only this library's documentation
# @flag --no-run                       Compile, but don't run tests
# @flag --no-fail-fast                 Run all tests regardless of failure
# @option -p --package[`_choice_package`] <SPEC>          Package to run tests for
# @flag --workspace                    Test all packages in the workspace
# @option --exclude <SPEC>             Exclude packages from the test
# @flag --all                          Alias for --workspace (deprecated)
# @option -j --jobsof CPUs <N>         Number of parallel jobs, defaults to
# @flag --keep-going                   Do not abort the build as soon as there is an error (unstable)
# @flag -r --release                   Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>     Build artifacts with the specified profile
# @option -F --features                Space or comma separated list of features to activate
# @flag --all-features                 Activate all available features
# @flag --no-default-features          Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>            Build for the target triple
# @option --target-dir <DIRECTORY>     Directory for all generated artifacts
# @option --manifest-path <PATH>       Path to Cargo.toml
# @flag --ignore-rust-version          Ignore `rust-version` specification in packages
# @option --message-format <FMT>       Error format
# @flag --unit-graph                   Output build graph in JSON (unstable)
# @flag --future-incompat-report       Outputs a future incompatibility report at the end of the build
# @option --timings <FMTS>             Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                      Print help
# @arg TESTNAME[`_choice_testname`]    If specified, only run tests containing this string in their names
# @arg args*                           Arguments for the test binary
test() {
    :;
}

# }} cargo test

# {{ cargo bench
# @cmd Run the benchmarks
# @flag -q --quiet                    Do not print cargo log messages
# @flag --lib                         Benchmark only this package's library
# @option --bin[`_choice_bin`] <NAME>                Benchmark only the specified binary
# @flag --bins                        Benchmark all binaries
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @option --example[`_choice_example`] <NAME>            Benchmark only the specified example
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --examples                    Benchmark all examples
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --test[`_choice_test`] <NAME>               Benchmark only the specified test target
# @flag --locked                      Require Cargo.lock is up to date
# @flag --tests                       Benchmark all tests
# @option --bench[`_choice_bench`] <NAME>              Benchmark only the specified bench target
# @flag --offline                     Run without accessing the network
# @flag --benches                     Benchmark all benches
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --all-targets                 Benchmark all targets
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-run                      Compile, but don't run benchmarks
# @option -p --package[`_choice_package`] <SPEC>         Package to run benchmarks for
# @flag --workspace                   Benchmark all packages in the workspace
# @option --exclude <SPEC>            Exclude packages from the benchmark
# @flag --all                         Alias for --workspace (deprecated)
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --message-format <FMT>      Error format
# @flag --no-fail-fast                Run all benchmarks regardless of failure
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
# @arg BENCHNAME                      If specified, only run benches containing this string in their names
# @arg args*                          Arguments for the bench binary
bench() {
    :;
}

# }} cargo bench

# {{ cargo update
# @cmd Update dependencies listed in Cargo.lock
# @flag -q --quiet                  Do not print cargo log messages
# @flag -w --workspace              Only update the workspace packages
# @option -p --package[`_choice_package`] <SPEC>       Package to update
# @flag --aggressive                Force updating all dependencies of SPEC as well when used with -p
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @flag --dry-run                   Don't actually write the lockfile
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --precise                 Update a single dependency to exactly PRECISE when used with -p
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
update() {
    :;
}

# }} cargo update

# {{ cargo search
# @cmd Search registry for crates
# @flag -q --quiet                Do not print cargo log messages
# @option --index                 Registry index URL to upload the package to
# @option --limit                 Limit the number of results (default: 10, max: 100)
# @option --registry              Registry to use
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg query*                     
search() {
    :;
}

# }} cargo search

# {{ cargo publish
# @cmd Package and upload this package to the registry
# @flag -q --quiet                    Do not print cargo log messages
# @option --index                     Registry index URL to upload the package to
# @option --token                     Token to use when uploading
# @flag --no-verify                   Don't verify the contents by building them
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --allow-dirty                 Allow dirty working directories to be packaged
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @flag --locked                      Require Cargo.lock is up to date
# @option -p --package[`_choice_package`] <SPEC>         Package to publish
# @option --manifest-path <PATH>      Path to Cargo.toml
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-default-features         Do not activate the `default` feature
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --dry-run                     Perform all checks without uploading
# @option --registry                  Registry to publish to
# @flag -h --help                     Print help
publish() {
    :;
}

# }} cargo publish

# {{ cargo install
# @cmd Install a Rust binary. Default location is $HOME/.cargo/bin
# @flag -q --quiet                    Do not print cargo log messages
# @option --version                   Specify a version to install
# @option --git <URL>                 Git URL to install the specified crate from
# @option --branch                    Branch to use when installing from git
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @option --tag                       Tag to use when installing from git
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --rev <SHA>                 Specific commit to use when installing from git
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --path                      Filesystem path to local crate to install
# @flag --list                        list all installed packages and their versions
# @flag --locked                      Require Cargo.lock is up to date
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag -f --force                    Force overwriting existing crates or binaries
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --no-track                    Do not save tracking information
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --profile <PROFILE-NAME>    Install artifacts with the specified profile
# @flag --debug                       Build in debug mode (with the 'dev' profile) instead of release mode
# @option --bin[`_choice_bin`] <NAME>                Install only the specified binary
# @flag --bins                        Install all binaries
# @option --example[`_choice_example`] <NAME>            Install only the specified example
# @flag --examples                    Install all examples
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --root <DIR>                Directory to install packages into
# @option --index                     Registry index to install from
# @option --registry                  Registry to use
# @option --message-format <FMT>      Error format
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
# @arg crate*                         
install() {
    :;
}

# }} cargo install

# {{ cargo uninstall
# @cmd Uninstall a Rust binary
# @flag -q --quiet                Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>     Package to uninstall
# @option --bin[`_choice_bin`] <NAME>            Only uninstall the binary NAME
# @option --root <DIR>            Directory to uninstall packages from
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg spec*                      
uninstall() {
    :;
}

# }} cargo uninstall

# {{ cargo audit
# @cmd Audit Cargo.lock files for vulnerable crates
# @option -c --color                     color configuration: always, never (default: auto)
# @option -d --db                        advisory database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny                      exit with an error on: warnings (any), unmaintained, unsound, yanked
# @option -f --file                      Cargo lockfile to inspect (or `-` for STDIN, default: Cargo.lock)
# @flag -h --help                        output help information and exit
# @option --ignore <ADVISORY_ID>         Advisory id to ignore (can be specified multiple times)
# @flag --ignore-source                  Ignore sources of packages in Cargo.toml, matching advisories regardless of source
# @flag --json                           Output report in JSON format
# @flag -n --no-fetch                    do not perform a git fetch on the advisory DB
# @flag -q --quiet                       Avoid printing unnecessary information
# @flag --stale                          allow stale database
# @option --target-arch <TARGET_ARCH>    filter vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS>        filter vulnerabilities by OS (default: no filter)
# @option -u --url                       URL for advisory database git repo
# @flag -V --version                     Print version information
audit() {
    :;
}

# {{{ cargo audit bin
# @cmd scan compiled binaries
# @option -c --color <COLOR> <color>    configuration: always, never (default: auto)
# @option -d --db <DB> <advisory>       database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny <DENY> <exit>       with an error on: warnings (any), unmaintained, unsound, yanked
# @option -h --help <output>            help information and exit
# @option --ignore <ADVISORY_ID> <Advisory>  id to ignore (can be specified multiple times)
# @option --ignore-source <Ignore>      sources of packages in the audit data, matching advisories regardless of source
# @option --json <Output>               report in JSON format
# @option -n --no-fetch <do>            not perform a git fetch on the advisory DB
# @option -q --quiet <Avoid>            printing unnecessary information
# @option --stale <allow>               stale database
# @option --target-arch <TARGET_ARCH> <filter>  vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS> <filter>  vulnerabilities by OS (default: no filter)
# @option -u --url <URL> <URL>          for advisory database git repo
# @arg BINARY_PATHS+                    Paths to the binaries to be scanned
audit::bin() {
    :;
}

# }}} cargo audit bin

# }} cargo audit

# {{ cargo bloat
# @cmd Find out what takes most of the space in your executable
# @flag -h --help                     Prints help information
# @flag -V --version                  Prints version information
# @flag --lib                         Build only this package's library
# @option --bin[`_choice_bin`] <NAME>                Build only the specified binary
# @option --example[`_choice_example`] <NAME>            Build only the specified example
# @option --test[`_choice_test`] <NAME>               Build only the specified test target
# @option -p --package[`_choice_package`] <SPEC>         Package to build
# @flag --release                     Build artifacts in release mode, with optimizations
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @option --features                  Space-separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --profile                   Build with the given profile.
# @option --target[`_choice_target`]                    Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --locked                      Require Cargo.lock is up to date
# @option -Z* <FLAG>                  Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --crates                      Per crate bloatedness
# @flag --time                        Per crate build time. Will run `cargo clean` first
# @option --filter <CRATE|REGEXP>     Filter functions by crate
# @flag --split-std                   Split the 'std' crate to original crates like core, alloc, etc.
# @option --symbols-section <NAME>    Use custom symbols section (ELF-only) [default: .text]
# @flag --no-relative-size            Hide 'File' and '.text' columns
# @flag --full-fn                     Print full function name with hash values
# @option -n <NUM>                    Number of lines to show, 0 to show all [default: 20]
# @flag -w --wide                     Do not trim long function names
# @option --message-format <FMT>      Output format [default: table] [possible values: table, json]
bloat() {
    :;
}

# }} cargo bloat

# {{ cargo clippy
# @cmd Checks a package to catch common mistakes and improve your Rust code.
# @flag --no-deps              Run Clippy only on the given crate, without linting the dependencies
# @flag --fix                  Automatically apply lint suggestions. This flag implies `--no-deps`
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
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
config() {
    :;
}

# {{{ cargo config get
# @cmd
# @option --format <format>       Display format [default: toml] [possible values: toml, json, json-value]
# @flag --show-origin             Display where the config value is defined
# @option --merged <merged>       Whether or not to merge config values [default: yes] [possible values: yes, no]
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg key                        The config key to display
config::get() {
    :;
}

# }}} cargo config get

# }} cargo config

# {{ cargo fetch
# @cmd Fetch dependencies of a package from the network
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @option --target[`_choice_target`] <TRIPLE>         Fetch dependencies for the target triple
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
fetch() {
    :;
}

# }} cargo fetch

# {{ cargo fix
# @cmd Automatically fix lint warnings reported by rustc
# @flag -q --quiet                    Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>         Package(s) to fix
# @flag --workspace                   Fix all packages in the workspace
# @option --exclude <SPEC>            Exclude packages from the fixes
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --all                         Alias for --workspace (deprecated)
# @option --color[auto|always|never] <WHEN>  Coloring
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag --lib                         Fix only this package's library
# @flag --locked                      Require Cargo.lock is up to date
# @option --bin[`_choice_bin`] <NAME>                Fix only the specified binary
# @flag --offline                     Run without accessing the network
# @flag --bins                        Fix all binaries
# @option --config <KEY=VALUE>        Override a configuration value
# @option --example[`_choice_example`] <NAME>            Fix only the specified example
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --examples                    Fix all examples
# @option --test[`_choice_test`] <NAME>               Fix only the specified test target
# @flag --tests                       Fix all tests
# @option --bench[`_choice_bench`] <NAME>              Fix only the specified bench target
# @flag --benches                     Fix all benches
# @flag --all-targets                 Fix all targets (default)
# @flag -r --release                  Fix artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Fix for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --message-format <FMT>      Error format
# @flag --broken-code                 Fix code even if it already has compiler errors
# @flag --edition                     Fix in preparation for the next edition
# @flag --edition-idioms              Fix warnings to migrate to the idioms of an edition
# @flag --allow-no-vcs                Fix code even if a VCS was not detected
# @flag --allow-dirty                 Fix code even if the working directory is dirty
# @flag --allow-staged                Fix code even if the working directory has staged changes
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
fix() {
    :;
}

# }} cargo fix

# {{ cargo fmt
# @cmd Formats all bin and lib files of the current crate using rustfmt.
# @option --all <Format>        all packages, and also their local path-based dependencies
# @option --check <Run>         rustfmt in check mode
# @option -h --help <Print>     help information
# @option --manifest-path <manifest-path> <Specify>  path to Cargo.toml
# @option --message-format <message-format> <Specify>  message-format: short|json|human
# @option -p --package* <package> <Specify>  package to format
# @option -q --quiet <No>       output printed to stdout
# @option -v --verbose <Use>    verbose output
# @option --version <Print>     rustfmt version and exit
# @arg rustfmt_options+         Options passed to rustfmt
fmt() {
    :;
}

# }} cargo fmt

# {{ cargo generate-lockfile
# @cmd Generate the lockfile for a package
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg generate-lockfile            
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

# {{ cargo insta
# @cmd A helper utility to work with insta snapshots
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help       Prints help information
# @flag -V --version    Prints version information
insta() {
    :;
}

# {{{ cargo insta review
# @cmd Interactively review snapshots
# @option --manifest-path <PATH>     Path to Cargo.toml
# @option --workspace-root <PATH>    Explicit path to the workspace root
# @option -e --extensions*           Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                  Work on all packages in the workspace
# @flag --all                        Alias for --workspace (deprecated)
# @flag --include-ignored            Also walk into ignored paths
# @flag --include-hidden             Also include hidden paths
# @option --snapshot* <snapshot-filter>  Limits the operation to one or more snapshots
# @flag -q --quiet                   Do not print to stdout
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                    Prints help information
# @flag -V --version                 Prints version information
insta::review() {
    :;
}

# }}} cargo insta review

# {{{ cargo insta reject
# @cmd Rejects all snapshots
# @option --manifest-path <PATH>     Path to Cargo.toml
# @option --workspace-root <PATH>    Explicit path to the workspace root
# @option -e --extensions*           Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                  Work on all packages in the workspace
# @flag --all                        Alias for --workspace (deprecated)
# @flag --include-ignored            Also walk into ignored paths
# @flag --include-hidden             Also include hidden paths
# @option --snapshot* <snapshot-filter>  Limits the operation to one or more snapshots
# @flag -q --quiet                   Do not print to stdout
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                    Prints help information
# @flag -V --version                 Prints version information
insta::reject() {
    :;
}

# }}} cargo insta reject

# {{{ cargo insta accept
# @cmd Accept all snapshots
# @option --manifest-path <PATH>     Path to Cargo.toml
# @option --workspace-root <PATH>    Explicit path to the workspace root
# @option -e --extensions*           Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                  Work on all packages in the workspace
# @flag --all                        Alias for --workspace (deprecated)
# @flag --include-ignored            Also walk into ignored paths
# @flag --include-hidden             Also include hidden paths
# @option --snapshot* <snapshot-filter>  Limits the operation to one or more snapshots
# @flag -q --quiet                   Do not print to stdout
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                    Prints help information
# @flag -V --version                 Prints version information
insta::accept() {
    :;
}

# }}} cargo insta accept

# {{{ cargo insta test
# @cmd Run tests and then reviews
# @option --manifest-path <PATH>         Path to Cargo.toml
# @option --workspace-root <PATH>        Explicit path to the workspace root
# @option -e --extensions*               Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                      Work on all packages in the workspace
# @flag --all                            Alias for --workspace (deprecated)
# @flag --include-ignored                Also walk into ignored paths
# @flag --include-hidden                 Also include hidden paths
# @flag --lib                            Test only this package's library unit tests
# @option --bin[`_choice_bin`] <bin>                    Test only the specified binary
# @flag --bins                           Test all binaries
# @option --example[`_choice_example`] <example>            Test only the specified example
# @flag --examples                       Test all examples
# @option --test[`_choice_test`] <test>                  Test only the specified test target
# @flag --tests                          Test all tests
# @option -p --package[`_choice_package`] <package>         Package to run tests for
# @flag --no-force-pass                  Disable force-passing of snapshot tests
# @flag --fail-fast                      Prevent running all tests regardless of failure
# @option --features                     Space-separated list of features to activate
# @option -j --jobsof CPUs <jobs>        Number of parallel jobs, defaults to
# @flag --release                        Build artifacts in release mode, with optimizations
# @flag --all-features                   Activate all available features
# @flag --no-default-features            Do not activate the `default` feature
# @option --target[`_choice_target`] <target>              Build for the target triple
# @flag --review                         Follow up with review
# @flag --accept                         Accept all snapshots after test
# @flag --accept-unseen                  Accept all new (previously unseen)
# @flag --check                          Instructs the test command to just assert
# @flag --keep-pending                   Do not reject pending snapshots before run
# @flag --force-update-snapshots         Update all snapshots even if they are still matching
# @option --unreferenced <unreferenced>  Controls what happens with unreferenced snapshots [default: ignore]  [possible values: ignore, warn, reject, delete, auto]
# @option --glob-filter* <glob-filter>   Filters to apply to the insta glob feature
# @flag -Q --no-quiet                    Do not pass the quiet flag (`-q`) to tests
# @option --test-runner <test-runner>    Picks the test runner [default: auto]  [possible values: auto, cargo-test, nextest]
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                        Prints help information
# @flag -V --version                     Prints version information
# @arg CARGO_TEST_ARGS+                  Options passed to cargo test
insta::test() {
    :;
}

# }}} cargo insta test

# {{{ cargo insta pending-snapshots
# @cmd Print a summary of all pending snapshots
# @option --manifest-path <PATH>     Path to Cargo.toml
# @option --workspace-root <PATH>    Explicit path to the workspace root
# @option -e --extensions*           Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                  Work on all packages in the workspace
# @flag --all                        Alias for --workspace (deprecated)
# @flag --include-ignored            Also walk into ignored paths
# @flag --include-hidden             Also include hidden paths
# @flag --as-json                    Changes the output from human readable to JSON
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                    Prints help information
# @flag -V --version                 Prints version information
# @arg pending-snapshots             
insta::pending-snapshots() {
    :;
}

# }}} cargo insta pending-snapshots

# {{{ cargo insta show
# @cmd Shows a specific snapshot
# @option --manifest-path <PATH>     Path to Cargo.toml
# @option --workspace-root <PATH>    Explicit path to the workspace root
# @option -e --extensions*           Sets the extensions to consider.  Defaults to `.snap`
# @flag --workspace                  Work on all packages in the workspace
# @flag --all                        Alias for --workspace (deprecated)
# @flag --include-ignored            Also walk into ignored paths
# @flag --include-hidden             Also include hidden paths
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag -h --help                    Prints help information
# @flag -V --version                 Prints version information
# @arg path!                         The path to the snapshot file
insta::show() {
    :;
}

# }}} cargo insta show

# }} cargo insta

# {{ cargo locate-project
# @cmd Print a JSON representation of a Cargo.toml file's location
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @option --message-format <FMT>    Output representation [possible values: json, plain]
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                 Locate Cargo.toml of the workspace root
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg locate-project               
locate-project() {
    :;
}

# }} cargo locate-project

# {{ cargo login
# @cmd Save an api token from the registry locally.
# @flag -q --quiet                   Do not print cargo log messages
# @option --registry                 Registry to use
# @flag --generate-keypair           Generate a public/secret keypair (unstable)
# @flag --secret-key                 Prompt for secret key (unstable)
# @flag -v --verbose*                Use verbose output (-vv very verbose/build.rs output)
# @option --key-subject <SUBJECT>    Set the key subject for this registry (unstable)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                     Require Cargo.lock and cache are up to date
# @flag --locked                     Require Cargo.lock is up to date
# @flag --offline                    Run without accessing the network
# @option --config <KEY=VALUE>       Override a configuration value
# @option -Z <FLAG>                  Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                    Print help
# @arg token                         
login() {
    :;
}

# }} cargo login

# {{ cargo logout
# @cmd Remove an API token from the registry locally
# @flag -q --quiet                Do not print cargo log messages
# @option --registry              Registry to use
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
logout() {
    :;
}

# }} cargo logout

# {{ cargo metadata
# @cmd Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
# @flag -q --quiet                      Do not print cargo log messages
# @option -F --features                 Space or comma separated list of features to activate
# @flag --all-features                  Activate all available features
# @flag --no-default-features           Do not activate the `default` feature
# @flag -v --verbose*                   Use verbose output (-vv very verbose/build.rs output)
# @option --filter-platform <TRIPLE>    Only include resolve dependencies matching the given target-triple
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --no-deps                       Output information only about the workspace members and don't fetch dependencies
# @flag --frozen                        Require Cargo.lock and cache are up to date
# @option --manifest-path <PATH>        Path to Cargo.toml
# @option --format-version <VERSION>    Format version [possible values: 1]
# @flag --locked                        Require Cargo.lock is up to date
# @flag --offline                       Run without accessing the network
# @option --config <KEY=VALUE>          Override a configuration value
# @option -Z <FLAG>                     Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                       Print help
metadata() {
    :;
}

# }} cargo metadata

# {{ cargo outdated
# @cmd Displays information about project dependency versions
# @flag -a --aggressive                  Ignores channels for latest updates
# @option --color                        Output coloring [default: auto]  [possible values: Auto, Never, Always]
# @option -d --depth <NUM>               How deep in the dependency chain to search (Defaults to all dependencies when omitted)
# @option -x --exclude* <DEPENDENCIES>   Dependencies to exclude from building (comma separated or one per '--exclude' argument)
# @option --exit-code <NUM>              The exit code to return on new versions found [default: 0]
# @option --features*                    Space-separated list of features
# @option --format                       Output formatting [default: list]  [possible values: List, Json]
# @flag -h --help                        Prints help information
# @option -i --ignore* <DEPENDENCIES>    Dependencies to not print in the output (comma separated or one per '--ignore' argument)
# @flag -e --ignore-external-rel         Ignore relative dependencies external to workspace and check root dependencies only.
# @option -m --manifest-path <PATH>      Path to the Cargo.toml file to use (Defaults to Cargo.toml in project root)
# @flag -o --offline                     Run without accessing the network (useful for testing w/ local registries)
# @option -p --packages* <PKGS>          Packages to inspect for updates (comma separated or one per '--packages' argument)
# @flag -q --quiet                       Suppresses warnings
# @option -r --root                      Package to treat as the root package
# @flag -R --root-deps-only              Only check root dependencies (Equivalent to --depth=1)
# @flag -V --version                     Prints version information
# @flag -v --verbose                     Use verbose output
# @flag -w --workspace                   Checks updates for all workspace members rather than only the root package
outdated() {
    :;
}

# }} cargo outdated

# {{ cargo owner
# @cmd Manage the owners of a crate on the registry
# @flag -q --quiet                Do not print cargo log messages
# @option -a --add <LOGIN>        Name of a user or team to invite as an owner
# @option -r --remove <LOGIN>     Name of a user or team to remove as an owner
# @flag -l --list                 List owners of a crate
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --index                 Registry index to modify owners for
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --token                 API token to use when authenticating
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @option --registry              Registry to use
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
# @arg crate                      
owner() {
    :;
}

# }} cargo owner

# {{ cargo package
# @cmd Assemble the local package into a distributable tarball
# @flag -q --quiet                    Do not print cargo log messages
# @flag -l --list                     Print files included in a package without making one
# @flag --no-verify                   Don't verify the contents by building them
# @flag --no-metadata                 Ignore warnings about a lack of human-usable metadata
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --allow-dirty                 Allow dirty working directories to be packaged
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option -F --features               Space or comma separated list of features to activate
# @flag --locked                      Require Cargo.lock is up to date
# @flag --all-features                Activate all available features
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --no-default-features         Do not activate the `default` feature
# @option -p --package[`_choice_package`] <SPEC>         Package(s) to assemble
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --workspace                   Assemble all packages in the workspace
# @option --exclude <SPEC>            Don't assemble specified packages
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag -h --help                     Print help
package() {
    :;
}

# }} cargo package

# {{ cargo pkgid
# @cmd Print a fully qualified package specification
# @flag -q --quiet                  Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>       Argument to get the package ID specifier for
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg spec                         
pkgid() {
    :;
}

# }} cargo pkgid

# {{ cargo read-manifest
# @cmd Print a JSON representation of a Cargo.toml manifest.
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg read-manifest                
read-manifest() {
    :;
}

# }} cargo read-manifest

# {{ cargo report
# @cmd Generate and display various kinds of reports
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
report() {
    :;
}

# {{{ cargo report future-incompatibilities
# @cmd Reports any crates which will eventually stop compiling
# @option --id <id>                identifier of the report generated by a Cargo command invocation
# @option -p --package[`_choice_package`] <SPEC>      Package to display a report for
# @flag -v --verbose*              Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                   Require Cargo.lock and cache are up to date
# @flag --locked                   Require Cargo.lock is up to date
# @flag --offline                  Run without accessing the network
# @option --config <KEY=VALUE>     Override a configuration value
# @option -Z <FLAG>                Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                  Print help
# @arg future-incompatibilities    
report::future-incompatibilities() {
    :;
}

# }}} cargo report future-incompatibilities

# }} cargo report

# {{ cargo rustc
# @cmd Compile a package, and pass extra options to the compiler
# @flag -q --quiet                    Do not print cargo log messages
# @option -p --package[`_choice_package`] <SPEC>         Package to build
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --lib                         Build only this package's library
# @option --bin[`_choice_bin`] <NAME>                Build only the specified binary
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --bins                        Build all binaries
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @option --example[`_choice_example`] <NAME>            Build only the specified example
# @flag --locked                      Require Cargo.lock is up to date
# @flag --examples                    Build all examples
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @option --test[`_choice_test`] <NAME>               Build only the specified test target
# @flag --tests                       Build all tests
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option --bench[`_choice_bench`] <NAME>              Build only the specified bench target
# @flag --benches                     Build all benches
# @flag --all-targets                 Build all targets
# @flag -r --release                  Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Target triple which compiles will be for
# @option --print <INFO>              Output compiler information without compiling
# @option --crate-type                Comma separated list of types of crates for the compiler to emit
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --message-format <FMT>      Error format
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @flag --future-incompat-report      Outputs a future incompatibility report at the end of the build
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
# @arg args*                          Rustc flags
rustc() {
    :;
}

# }} cargo rustc

# {{ cargo rustdoc
# @cmd Build a package's documentation, using specified custom flags.
# @flag -q --quiet                    Do not print cargo log messages
# @flag --open                        Opens the docs in a browser after the operation
# @option -p --package[`_choice_package`] <SPEC>         Package to document
# @option -j --jobsof CPUs <N>        Number of parallel jobs, defaults to
# @flag -v --verbose*                 Use verbose output (-vv very verbose/build.rs output)
# @flag --keep-going                  Do not abort the build as soon as there is an error (unstable)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --lib                         Build only this package's library
# @option --bin[`_choice_bin`] <NAME>                Build only the specified binary
# @flag --frozen                      Require Cargo.lock and cache are up to date
# @flag --bins                        Build all binaries
# @flag --locked                      Require Cargo.lock is up to date
# @option --example[`_choice_example`] <NAME>            Build only the specified example
# @flag --offline                     Run without accessing the network
# @option --config <KEY=VALUE>        Override a configuration value
# @flag --examples                    Build all examples
# @option --test[`_choice_test`] <NAME>               Build only the specified test target
# @option -Z <FLAG>                   Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --tests                       Build all tests
# @option --bench[`_choice_bench`] <NAME>              Build only the specified bench target
# @flag --benches                     Build all benches
# @flag --all-targets                 Build all targets
# @flag -r --release                  Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    Build artifacts with the specified profile
# @option -F --features               Space or comma separated list of features to activate
# @flag --all-features                Activate all available features
# @flag --no-default-features         Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           Build for the target triple
# @option --target-dir <DIRECTORY>    Directory for all generated artifacts
# @option --manifest-path <PATH>      Path to Cargo.toml
# @option --message-format <FMT>      Error format
# @flag --unit-graph                  Output build graph in JSON (unstable)
# @flag --ignore-rust-version         Ignore `rust-version` specification in packages
# @option --timings <FMTS>            Timing output formats (unstable) (comma separated): html, json
# @flag -h --help                     Print help
# @arg args*                          
rustdoc() {
    :;
}

# }} cargo rustdoc

# {{ cargo tree
# @cmd Display a tree visualization of a dependency graph
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @option -p --package[`_choice_package`] <SPEC>       Package to be used as the root of the tree
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @flag --workspace                 Display the tree for all packages in the workspace
# @option --exclude <SPEC>          Exclude specific workspace members
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @option -F --features             Space or comma separated list of features to activate
# @flag --locked                    Require Cargo.lock is up to date
# @flag --all-features              Activate all available features
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @flag --no-default-features       Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>         Filter dependencies matching the given target-triple (default host platform).
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @option -e --edges <KINDS>        The kinds of dependencies to display (features, normal, build, dev, all, no-normal, no-build, no-dev, no-proc-macro)
# @option -i --invert <SPEC>        Invert the tree direction and focus on the given package
# @option --prune <SPEC>            Prune the given package from the display of the dependency tree
# @option --depth                   Maximum display depth of the dependency tree
# @option --prefix                  Change the prefix (indentation) of how each entry is displayed [default: indent] [possible values: depth, indent, none]
# @flag --no-dedupe                 Do not de-duplicate (repeats all shared dependencies)
# @flag -d --duplicates             Show only dependencies which come in multiple versions (implies -i)
# @option --charset                 Character set to use in output: utf8, ascii [default: utf8] [possible values: utf8, ascii]
# @option -f --format               Format string used for printing dependencies [default: {p}]
# @flag -h --help                   Print help
tree() {
    :;
}

# }} cargo tree

# {{ cargo udeps
# @cmd Find unused dependencies in Cargo.toml
# @flag -q --quiet                    [cargo] No output printed to stdout
# @option -p --package[`_choice_package`] <SPEC>         [cargo] Package(s) to check
# @flag --all                         [cargo] Alias for --workspace (deprecated)
# @flag --workspace                   [cargo] Check all packages in the workspace
# @option --exclude <SPEC>            [cargo] Exclude packages from the check
# @option -j --jobsof CPUs <N>        [cargo] Number of parallel jobs, defaults to
# @flag --lib                         [cargo] Check only this package's library
# @option --bin[`_choice_bin`] <NAME>                [cargo] Check only the specified binary
# @flag --bins                        [cargo] Check all binaries
# @option --example[`_choice_example`] <NAME>            [cargo] Check only the specified example
# @flag --examples                    [cargo] Check all examples
# @option --test[`_choice_test`] <NAME>               [cargo] Check only the specified test target
# @flag --tests                       [cargo] Check all tests
# @option --bench[`_choice_bench`] <NAME>              [cargo] Check only the specified bench target
# @flag --benches                     [cargo] Check all benches
# @flag --all-targets                 [cargo] Check all targets
# @flag --release                     [cargo] Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>    [cargo] Check artifacts with the specified profile
# @option --features*                 [cargo] Space-separated list of features to activate
# @flag --all-features                [cargo] Activate all available features
# @flag --no-default-features         [cargo] Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>           [cargo] Check for the target triple
# @option --target-dir <DIRECTORY>    [cargo] Directory for all generated artifacts
# @option --manifest-path <PATH>      [cargo] Path to Cargo.toml
# @option --message-format <FMT>      [cargo] Error format [default: human] [possible values: human, json, short]
# @flag -v --verbose                  [cargo] Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                      [cargo] Require Cargo.lock and cache are up to date
# @flag --locked                      [cargo] Require Cargo.lock is up to date
# @flag --offline                     [cargo] Run without accessing the network
# @option --output                    Output format [default: human] [possible values: human, json]
# @option --backend                   Backend to use for determining unused deps [default: depinfo] [possible values: save-analysis, depinfo]
# @flag --keep-going                  Needed because the keep-going flag is asked about by cargo code
# @flag --show-unused-transitive      Show unused dependencies that get used transitively by main dependencies.
# @flag -h --help                     Print help information
# @flag -V --version                  Print version information
udeps() {
    :;
}

# }} cargo udeps

# {{ cargo vendor
# @cmd Vendor all dependencies for a project locally
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag --no-delete                 Don't delete older crates in the vendor directory
# @option -s --sync <TOML>          Additional `Cargo.toml` to sync and vendor
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @flag --respect-source-config     Respect `[source]` config in `.cargo/config`
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --versioned-dirs            Always include version in subdir name
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg path                         Where to vendor crates (`vendor` by default)
vendor() {
    :;
}

# }} cargo vendor

# {{ cargo verify-project
# @cmd Check correctness of crate manifest
# @flag -q --quiet                  Do not print cargo log messages
# @option --manifest-path <PATH>    Path to Cargo.toml
# @flag -v --verbose*               Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                    Require Cargo.lock and cache are up to date
# @flag --locked                    Require Cargo.lock is up to date
# @flag --offline                   Run without accessing the network
# @option --config <KEY=VALUE>      Override a configuration value
# @option -Z <FLAG>                 Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                   Print help
# @arg verify-project               
verify-project() {
    :;
}

# }} cargo verify-project

# {{ cargo version
# @cmd Show version information
# @flag -q --quiet                Do not print cargo log messages
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>  Coloring
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
version() {
    :;
}

# }} cargo version

# {{ cargo yank
# @cmd Remove a pushed crate from the index
# @flag -q --quiet                Do not print cargo log messages
# @option --version               The version to yank or un-yank
# @flag --undo                    Undo a yank, putting a version back into the index
# @option --index                 Registry index to yank from
# @flag -v --verbose*             Use verbose output (-vv very verbose/build.rs output)
# @option --token                 API token to use when authenticating
# @option --color[auto|always|never] <WHEN>  Coloring
# @option --registry              Registry to use
# @flag --frozen                  Require Cargo.lock and cache are up to date
# @flag --locked                  Require Cargo.lock is up to date
# @flag --offline                 Run without accessing the network
# @option --config <KEY=VALUE>    Override a configuration value
# @option -Z <FLAG>               Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                 Print help
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
	_helper_package_json "$(_helper_option_package)" | jq -r '.dependencies[].name'
}

_choice_package() {
	cargo metadata --format-version 1 --no-deps | jq -r '.packages[].name'
}

_choice_bench() {
	_helper_package_target bench "$(_helper_option_package)"
}

_choice_bin() {
	_helper_package_target bin "$(_helper_option_package)"
}

_choice_test() {
	_helper_package_target test "$(_helper_option_package)"
}

_choice_example() {
	_helper_package_target example "$(_helper_option_package)"
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

_helper_option_package() {
	echo "${argc_package:-"$argc_p"}"
}

_helper_package_target() {
	target_kind="$1"
	package_name="$2"
	_helper_package_json "$package_name" | jq -r '.targets[] | select( .kind[] | contains("'$target_kind'") ) | .name'
}

_helper_package_json() {
	package_name="$1"
	metadata_json="$(_helper_metadata_json)"
	if [[ -n "$package_name" ]]; then
		echo "$metadata_json" | jq '.packages[] | select(.name == "'"$package_name"'")'
	else
		workspace_root="$(echo "$metadata_json" | jq -r '.workspace_root')"
		manifest_path="$(echo "${workspace_root}$(_argc_util_path_sep)Cargo.toml" |  jq -R .)"
		echo "$metadata_json" | jq '.packages[] | select(.manifest_path == '"$manifest_path"')'
	fi
}

_helper_metadata_json() {
	cargo metadata --format-version 1 --no-deps
}

_argc_util_path_sep() {
	if [[ "$OS" == "Windows_NT" ]]; then
		echo '\'
	else
		echo '/'
	fi
}


eval "$(argc --argc-eval "$0" "$@")"