#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --print-rust-flags                        Print the RUSTFLAGS options that tarpaulin will compile your program with and exit
# @flag --print-rustdoc-flags                     Print the RUSTDOCFLAGS options that tarpaulin will compile any doctests with and exit
# @option --color[Auto|Always|Never] <WHEN>       Coloring: auto, always, never
# @flag --debug                                   Show debug output - this is used for diagnosing issues with tarpaulin
# @flag -v --verbose                              Show extra output
# @flag --dump-traces                             Log tracing events and save to a json file.
# @option --run-types[Tests|Doctests|Benchmarks|Examples|Lib|Bins|AllTargets] <TYPE>  Type of the coverage run
# @flag --benches                                 Test all benches
# @flag --doc                                     Test only this library's documentation
# @flag --all-targets                             Test all targets (excluding doctests)
# @flag --lib                                     Test only this package's library unit tests
# @flag --bins                                    Test all binaries
# @flag --examples                                Test all examples
# @flag --tests                                   Test all tests
# @option --config <FILE>                         Path to a toml file specifying a list of options this will override any other options set
# @flag --ignore-config                           Ignore any project config files
# @option --bin*[`_choice_bin`] <NAME>            Test only the specified binary
# @option --example*[`_choice_example`] <NAME>    Test only the specified example
# @option --test*[`_choice_test`] <NAME>          Test only the specified test target
# @option --bench*[`_choice_bench`] <NAME>        Test only the specified bench target
# @flag --no-fail-fast                            Run all tests regardless of failure
# @option --profile <NAME>                        Build artefacts with the specified profile
# @flag --ignore-tests                            Ignore lines of test functions when collecting coverage (default)
# @flag --no-dead-code                            Stops tarpaulin from building projects with -Clink-dead-code
# @flag --include-tests                           Include lines of test functions when collecting coverage
# @flag --ignore-panics                           Ignore panic macros in tests
# @flag --count                                   Counts the number of hits during coverage
# @flag -i --ignored                              Run ignored tests as well
# @flag -l --line                                 Line coverage
# @flag --skip-clean                              The opposite of --force-clean
# @flag --force-clean                             Adds a clean stage to work around cargo bugs that may affect coverage results
# @option --fail-under <PERCENTAGE>               Sets a percentage threshold for failure ranging from 0-100, if coverage is below exit with a non-zero code
# @flag -b --branch                               Branch coverage: NOT IMPLEMENTED
# @flag -f --forward                              Forwards unexpected signals to test.
# @option --coveralls[ci|pro] <KEY>               Coveralls key, either the repo token, or if you're using travis use $TRAVIS_JOB_ID and specify travis- in --ciserver
# @option --report-uri <URI>                      URI to send report to, only used if the option --coveralls is used
# @flag --no-default-features                     Do not include default features
# @option --features*,[`_choice_feature`]         Features to be included in the target project
# @flag --all-features                            Build all available features
# @flag --all                                     Alias for --workspace (deprecated)
# @flag --workspace                               Test all packages in the workspace
# @option -p --packages* <PACKAGE>                Package id specifications for which package should be build.
# @option -e --exclude* <PACKAGE>                 Package id specifications to exclude from coverage.
# @option --exclude-files* <FILE>                 Exclude given files from coverage results has * wildcard
# @option -t --timeout <SECONDS>                  Integer for the maximum time in seconds without response from test before timeout (default is 1 minute)
# @option --post-test-delay <SECONDS>             Delay after test to collect coverage profiles
# @flag --follow-exec                             Follow executed processes capturing coverage information if they're part of your project
# @flag --release                                 Build in release mode
# @flag --no-run                                  Compile tests but don't run coverage
# @flag --implicit-test-threads                   'Don't supply an explicit `--test-threads` argument to test executable.
# @flag --locked                                  Do not update Cargo.lock
# @flag --frozen                                  Do not update Cargo.lock or any caches
# @option --target[`_choice_target`] <TRIPLE>     Compilation target triple
# @option --target-dir <DIR>                      Directory for all generated artifacts
# @flag --offline                                 Run without accessing the network
# @flag --avoid-cfg-tarpaulin                     Remove --cfg=tarpaulin from the RUSTFLAG
# @option -j --jobs <N>                           Number of parallel jobs, defaults to ♯ of CPUs
# @option --rustflags <FLAGS>                     Rustflags to add when building project (can also be set via RUSTFLAGS env var)
# @option --objects* <objects>                    Other object files to load which contain information for llvm coverage - must have been compiled with llvm coverage instrumentation (ignored for ptrace)
# @option -Z* <FEATURES>                          List of unstable nightly only flags
# @option -o --out*[Json|Stdout|Xml|Html|Lcov] <FMT>  Output format of coverage report
# @option --engine[Auto|Ptrace|Llvm]              Coverage tracing backend to use
# @option --output-dir <PATH>                     Specify a custom directory to write report files
# @option --command[Test|Build] <CMD>             cargo subcommand to run.
# @option -r --root <DIR>                         Calculates relative paths to root directory.
# @option --manifest-path <PATH>                  Path to Cargo.toml
# @option --ciserver <SERVICE>                    CI server being used, if unspecified tarpaulin may automatically infer for coveralls uploads
# @flag --fail-immediately                        Option to fail immediately after a single test fails
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @arg args*                                      Arguments to be passed to the test executables can be used to filter or skip certain tests

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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