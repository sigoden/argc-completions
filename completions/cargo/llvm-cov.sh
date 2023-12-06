#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --json                                   Export coverage data in "json" format
# @flag --lcov                                   Export coverage data in "lcov" format
# @flag --cobertura                              Export coverage data in "cobertura" XML format
# @flag --codecov                                Export coverage data in "Codecov Custom Coverage" format
# @flag --text                                   Generate coverage report in “text” format
# @flag --html                                   Generate coverage report in "html" format
# @flag --open                                   Generate coverage reports in "html" format and open them in a browser after the operation.
# @flag --summary-only                           Export only summary information for each file in the coverage data
# @option --output-path <PATH>                   Specify a file to write coverage data into.
# @option --output-dir <DIRECTORY>               Specify a directory to write coverage report into (default to `target/llvm-cov`).
# @option --failure-mode <any|all>               Fail if `any` or `all` profiles cannot be merged (default to `any`)
# @option --ignore-filename-regex <PATTERN>      Skip source code files with file paths that match the given regular expression
# @flag --hide-instantiations                    Hide instantiations from report
# @flag --no-cfg-coverage                        Unset cfg(coverage), which is enabled when code is built using cargo-llvm-cov
# @flag --no-cfg-coverage-nightly                Unset cfg(coverage_nightly), which is enabled when code is built using cargo-llvm-cov and nightly compiler
# @flag --no-report                              Run tests, but don't generate coverage report
# @flag --no-clean                               Build without cleaning any old build artifacts
# @option --fail-under-functions <MIN>           Exit with a status of 1 if the total function coverage is less than MIN percent
# @option --fail-under-lines <MIN>               Exit with a status of 1 if the total line coverage is less than MIN percent
# @option --fail-under-regions <MIN>             Exit with a status of 1 if the total region coverage is less than MIN percent
# @option --fail-uncovered-lines <MAX>           Exit with a status of 1 if the uncovered lines are greater than MAX
# @option --fail-uncovered-regions <MAX>         Exit with a status of 1 if the uncovered regions are greater than MAX
# @option --fail-uncovered-functions <MAX>       Exit with a status of 1 if the uncovered functions are greater than MAX
# @flag --show-missing-lines                     Show lines with no coverage
# @flag --include-build-script                   Include build script in coverage report
# @flag --doctests                               Including doc tests (unstable)
# @flag --no-run                                 Generate coverage report without running tests
# @flag --no-fail-fast                           Run all tests regardless of failure
# @flag --ignore-run-fail                        Run all tests regardless of failure and generate report
# @flag -q --quiet                               Display one character per test instead of one line
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`] <NAME>            Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`] <NAME>    Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`] <NAME>          Test only the specified test target
# @flag --tests                                  Test all tests
# @option --bench[`_choice_bench`] <NAME>        Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @flag --doc                                    Test only this library's documentation (unstable)
# @option -p --package[`_choice_package`] <SPEC>  Package to run tests for
# @flag --workspace                              Test all packages in the workspace
# @flag --all                                    Alias for --workspace (deprecated)
# @option --exclude <SPEC>                       Exclude packages from both the test and report
# @option --exclude-from-test <SPEC>             Exclude packages from the test (but not from the report)
# @option --exclude-from-report <SPEC>           Exclude packages from the report (but not from the test)
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --coverage-target-only                   Activate coverage reporting only for the target triple
# @flag -v --verbose                             Use verbose output
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --remap-path-prefix                      Use --remap-path-prefix for workspace root
# @flag --include-ffi                            Include coverage of C/C++ code linked to Rust library/binary
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help information
# @flag -V --version                             Print version information
# @arg args+                                     Arguments for the test binary

# {{ cargo llvm-cov test
# @cmd Run tests and generate coverage report This is equivalent to `cargo llvm-cov` without subcommand, except that test name filtering is supported.
# @flag --json                                   Export coverage data in "json" format
# @flag --lcov                                   Export coverage data in "lcov" format
# @flag --cobertura                              Export coverage data in "cobertura" XML format
# @flag --codecov                                Export coverage data in "Codecov Custom Coverage" format
# @flag --text                                   Generate coverage report in “text” format
# @flag --html                                   Generate coverage report in "html" format
# @flag --open                                   Generate coverage reports in "html" format and open them in a browser after the operation.
# @flag --summary-only                           Export only summary information for each file in the coverage data
# @option --output-path <PATH>                   Specify a file to write coverage data into.
# @option --output-dir <DIRECTORY>               Specify a directory to write coverage report into (default to `target/llvm-cov`).
# @option --failure-mode <any|all>               Fail if `any` or `all` profiles cannot be merged (default to `any`)
# @option --ignore-filename-regex <PATTERN>      Skip source code files with file paths that match the given regular expression
# @flag --hide-instantiations                    Hide instantiations from report
# @flag --no-cfg-coverage                        Unset cfg(coverage), which is enabled when code is built using cargo-llvm-cov
# @flag --no-cfg-coverage-nightly                Unset cfg(coverage_nightly), which is enabled when code is built using cargo-llvm-cov and nightly compiler
# @flag --no-report                              Run tests, but don't generate coverage report
# @flag --no-clean                               Build without cleaning any old build artifacts
# @option --fail-under-functions <MIN>           Exit with a status of 1 if the total function coverage is less than MIN percent
# @option --fail-under-lines <MIN>               Exit with a status of 1 if the total line coverage is less than MIN percent
# @option --fail-under-regions <MIN>             Exit with a status of 1 if the total region coverage is less than MIN percent
# @option --fail-uncovered-lines <MAX>           Exit with a status of 1 if the uncovered lines are greater than MAX
# @option --fail-uncovered-regions <MAX>         Exit with a status of 1 if the uncovered regions are greater than MAX
# @option --fail-uncovered-functions <MAX>       Exit with a status of 1 if the uncovered functions are greater than MAX
# @flag --show-missing-lines                     Show lines with no coverage
# @flag --include-build-script                   Include build script in coverage report
# @flag --doctests                               Including doc tests (unstable)
# @flag --no-fail-fast                           Run all tests regardless of failure
# @flag --ignore-run-fail                        Run all tests regardless of failure and generate report
# @flag -q --quiet                               Display one character per test instead of one line
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`] <NAME>            Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`] <NAME>    Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`] <NAME>          Test only the specified test target
# @flag --tests                                  Test all tests
# @option --bench[`_choice_bench`] <NAME>        Test only the specified bench target
# @flag --benches                                Test all benches
# @flag --all-targets                            Test all targets
# @flag --doc                                    Test only this library's documentation (unstable)
# @option -p --package[`_choice_package`] <SPEC>  Package to run tests for
# @flag --workspace                              Test all packages in the workspace
# @flag --all                                    Alias for --workspace (deprecated)
# @option --exclude <SPEC>                       Exclude packages from both the test and report
# @option --exclude-from-test <SPEC>             Exclude packages from the test (but not from the report)
# @option --exclude-from-report <SPEC>           Exclude packages from the report (but not from the test)
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --coverage-target-only                   Activate coverage reporting only for the target triple
# @flag -v --verbose                             Use verbose output
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --remap-path-prefix                      Use --remap-path-prefix for workspace root
# @flag --include-ffi                            Include coverage of C/C++ code linked to Rust library/binary
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help information
# @arg testname!                                 If specified, only run tests containing this string in their names
# @arg args+                                     Arguments for the test binary
test() {
    :;
}
# }} cargo llvm-cov test

# {{ cargo llvm-cov run
# @cmd Run a binary or example and generate coverage report
# @flag --json                                   Export coverage data in "json" format
# @flag --lcov                                   Export coverage data in "lcov" format
# @flag --cobertura                              Export coverage data in "cobertura" XML format
# @flag --codecov                                Export coverage data in "Codecov Custom Coverage" format
# @flag --text                                   Generate coverage report in “text” format
# @flag --html                                   Generate coverage report in "html" format
# @flag --open                                   Generate coverage reports in "html" format and open them in a browser after the operation.
# @flag --summary-only                           Export only summary information for each file in the coverage data
# @option --output-path <PATH>                   Specify a file to write coverage data into.
# @option --output-dir <DIRECTORY>               Specify a directory to write coverage report into (default to `target/llvm-cov`).
# @option --failure-mode <any|all>               Fail if `any` or `all` profiles cannot be merged (default to `any`)
# @option --ignore-filename-regex <PATTERN>      Skip source code files with file paths that match the given regular expression
# @flag --hide-instantiations                    Hide instantiations from report
# @flag --no-cfg-coverage                        Unset cfg(coverage), which is enabled when code is built using cargo-llvm-cov
# @flag --no-cfg-coverage-nightly                Unset cfg(coverage_nightly), which is enabled when code is built using cargo-llvm-cov and nightly compiler
# @flag --no-report                              Run tests, but don't generate coverage report
# @flag --no-clean                               Build without cleaning any old build artifacts
# @option --fail-under-functions <MIN>           Exit with a status of 1 if the total function coverage is less than MIN percent
# @option --fail-under-lines <MIN>               Exit with a status of 1 if the total line coverage is less than MIN percent
# @option --fail-under-regions <MIN>             Exit with a status of 1 if the total region coverage is less than MIN percent
# @option --fail-uncovered-lines <MAX>           Exit with a status of 1 if the uncovered lines are greater than MAX
# @option --fail-uncovered-regions <MAX>         Exit with a status of 1 if the uncovered regions are greater than MAX
# @option --fail-uncovered-functions <MAX>       Exit with a status of 1 if the uncovered functions are greater than MAX
# @flag --show-missing-lines                     Show lines with no coverage
# @flag --include-build-script                   Include build script in coverage report
# @flag --ignore-run-fail                        Run all tests regardless of failure and generate report
# @flag -q --quiet                               No output printed to stdout
# @option --bin[`_choice_bin`] <NAME>            Name of the bin target to run
# @option --example[`_choice_example`] <NAME>    Name of the example target to run
# @option --exclude-from-report <SPEC>           Exclude packages from the report
# @option -p --package[`_choice_package`] <SPEC>  Package with the target to run
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --coverage-target-only                   Activate coverage reporting only for the target triple
# @flag -v --verbose                             Use verbose output
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --remap-path-prefix                      Use --remap-path-prefix for workspace root
# @flag --include-ffi                            Include coverage of C/C++ code linked to Rust library/binary
# @flag --keep-going                             Do not abort the build as soon as there is an error (unstable)
# @flag --ignore-rust-version                    Ignore `rust-version` specification in packages
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help information
# @arg args+                                     Arguments for the binary
run() {
    :;
}
# }} cargo llvm-cov run

# {{ cargo llvm-cov report
# @cmd Generate coverage report
# @flag --json                                   Export coverage data in "json" format
# @flag --lcov                                   Export coverage data in "lcov" format
# @flag --cobertura                              Export coverage data in "cobertura" XML format
# @flag --codecov                                Export coverage data in "Codecov Custom Coverage" format
# @flag --text                                   Generate coverage report in “text” format
# @flag --html                                   Generate coverage report in "html" format
# @flag --open                                   Generate coverage reports in "html" format and open them in a browser after the operation.
# @flag --summary-only                           Export only summary information for each file in the coverage data
# @option --output-path <PATH>                   Specify a file to write coverage data into.
# @option --output-dir <DIRECTORY>               Specify a directory to write coverage report into (default to `target/llvm-cov`).
# @option --failure-mode <any|all>               Fail if `any` or `all` profiles cannot be merged (default to `any`)
# @option --ignore-filename-regex <PATTERN>      Skip source code files with file paths that match the given regular expression
# @flag --hide-instantiations                    Hide instantiations from report
# @option --fail-under-functions <MIN>           Exit with a status of 1 if the total function coverage is less than MIN percent
# @option --fail-under-lines <MIN>               Exit with a status of 1 if the total line coverage is less than MIN percent
# @option --fail-under-regions <MIN>             Exit with a status of 1 if the total region coverage is less than MIN percent
# @option --fail-uncovered-lines <MAX>           Exit with a status of 1 if the uncovered lines are greater than MAX
# @option --fail-uncovered-regions <MAX>         Exit with a status of 1 if the uncovered regions are greater than MAX
# @option --fail-uncovered-functions <MAX>       Exit with a status of 1 if the uncovered functions are greater than MAX
# @flag --show-missing-lines                     Show lines with no coverage
# @flag --include-build-script                   Include build script in coverage report
# @flag --doctests                               Including doc tests (unstable)
# @flag -q --quiet                               Display one character per test instead of one line
# @option -p --package[`_choice_package`] <SPEC>  Package to run tests for
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag -r --release                             Build artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Build artifacts with the specified profile
# @option -F --features*,[`_choice_feature`]     Space or comma separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --coverage-target-only                   Activate coverage reporting only for the target triple
# @flag -v --verbose                             Use verbose output
# @option --color[auto|always|never] <WHEN>      Coloring: auto, always, never
# @flag --remap-path-prefix                      Use --remap-path-prefix for workspace root
# @flag --include-ffi                            Include coverage of C/C++ code linked to Rust library/binary
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag -h --help                                Print help information
report() {
    :;
}
# }} cargo llvm-cov report

# {{ cargo llvm-cov show-env
# @cmd Output the environment set by cargo-llvm-cov to build Rust projects
# @flag --export-prefix                          Prepend "export " to each line, so that the output is suitable to be sourced by bash
# @flag --doctests                               Including doc tests (unstable)
# @option --target[`_choice_target`] <TRIPLE>    Build for the target triple
# @flag --coverage-target-only                   Activate coverage reporting only for the target triple
# @flag --remap-path-prefix                      Use --remap-path-prefix for workspace root
# @flag --include-ffi                            Include coverage of C/C++ code linked to Rust library/binary
# @flag --no-cfg-coverage                        Unset cfg(coverage), which is enabled when code is built using cargo-llvm-cov
# @flag --no-cfg-coverage-nightly                Unset cfg(coverage_nightly), which is enabled when code is built using cargo-llvm-cov and nightly compiler
# @flag -h --help                                Print help information
show-env() {
    :;
}
# }} cargo llvm-cov show-env

# {{ cargo llvm-cov clean
# @cmd Remove artifacts that cargo-llvm-cov has generated in the past
# @flag --workspace                            Remove artifacts that may affect the coverage results of packages in the workspace
# @flag -v --verbose                           Use verbose output
# @option --color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option --manifest-path <PATH>               Path to Cargo.toml
# @flag --frozen                               Require Cargo.lock and cache are up to date
# @flag --locked                               Require Cargo.lock is up to date
# @flag --offline                              Run without accessing the network
# @flag -h --help                              Print help information
clean() {
    :;
}
# }} cargo llvm-cov clean

# {{ cargo llvm-cov nextest
# @cmd Run tests with cargo nextest This internally calls `cargo nextest run`.
# @arg args~[`_choice_nextest_cmd`]
nextest() {
    :;
}
# }} cargo llvm-cov nextest

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

_choice_nextest_cmd() {
    _argc_util_comp_subcommand 0 cargo nextest
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