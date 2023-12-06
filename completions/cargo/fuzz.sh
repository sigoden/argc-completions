#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help information
# @flag -V --version    Print version information

# {{ cargo fuzz init
# @cmd Initialize the fuzz directory
# @option -t --target[`_choice_target`]    Name of the first fuzz target to create [default: fuzz_target_1]
# @option --fuzz-dir <FUZZ_DIR>            The path to the fuzz project directory
# @flag -h --help                          Print help information
# @flag -V --version                       Print version information
init() {
    :;
}
# }} cargo fuzz init

# {{ cargo fuzz add
# @cmd Add a new fuzz target
# @option --fuzz-dir <FUZZ_DIR>    The path to the fuzz project directory
# @flag -h --help                  Print help information
# @flag -V --version               Print version information
# @arg target!                     Name of the new fuzz target
add() {
    :;
}
# }} cargo fuzz add

# {{ cargo fuzz build
# @cmd Build fuzz targets
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target                                    Name of the fuzz target to build, or build all targets if not supplied
build() {
    :;
}
# }} cargo fuzz build

# {{ cargo fuzz check
# @cmd Type-check the fuzz targets
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target                                    Name of the fuzz target to check, or check all targets if not supplied
check() {
    :;
}
# }} cargo fuzz check

# {{ cargo fuzz fmt
# @cmd Print the `std::fmt::Debug` output for an input
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target!                                   Name of fuzz target
# @arg input!                                    Path to the input testcase to debug print
fmt() {
    :;
}
# }} cargo fuzz fmt

# {{ cargo fuzz list
# @cmd List all the existing fuzz targets
# @option --fuzz-dir <FUZZ_DIR>    The path to the fuzz project directory
# @flag -h --help                  Print help information
# @flag -V --version               Print version information
list() {
    :;
}
# }} cargo fuzz list

# {{ cargo fuzz run
# @cmd Run a fuzz target
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @option -j --jobs                              Number of concurrent jobs to run
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target!                                   Name of the fuzz target
# @arg corpus*                                   Custom corpus directories or artifact files
# @arg args*                                     Additional libFuzzer arguments passed through to the binary
run() {
    :;
}
# }} cargo fuzz run

# {{ cargo fuzz cmin
# @cmd Minify a corpus
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target!                                   Name of the fuzz target
# @arg corpus                                    The corpus directory to minify into
# @arg args*                                     Additional libFuzzer arguments passed through to the binary
cmin() {
    :;
}
# }} cargo fuzz cmin

# {{ cargo fuzz tmin
# @cmd Minify a test case
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @option -r --runs                              Number of minimization attempts to perform
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target!                                   Name of the fuzz target
# @arg test_case!                                Path to the failing test case to be minimized
# @arg args*                                     Additional libFuzzer arguments passed through to the binary
tmin() {
    :;
}
# }} cargo fuzz tmin

# {{ cargo fuzz coverage
# @cmd Run program on the generated corpus and generate coverage information
# @flag -D --dev                                 Build artifacts in development mode, without optimizations
# @flag -O --release                             Build artifacts in release mode, with optimizations
# @flag -a --debug-assertions                    Build artifacts with debug assertions and overflow checks enabled (default if not -O)
# @flag -v --verbose                             Build target with verbose output from `cargo build`
# @flag --no-default-features                    Build artifacts with default Cargo features disabled
# @flag --all-features                           Build artifacts with all Cargo features enabled
# @option --features*,[`_choice_feature`]        Build artifacts with given Cargo feature enabled
# @option -s --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @option --target[`_choice_target`] <TRIPLE>    Target triple of the fuzz target
# @option -Z <FLAG>                              Unstable (nightly-only) flags to Cargo
# @option --target-dir <TARGET_DIR>              Target dir option to pass to cargo build
# @flag --strip-dead-code                        Dead code is linked by default to prevent a potential error with some optimized targets.
# @flag --no-cfg-fuzzing                         By default the 'cfg(fuzzing)' compilation configuration is set.
# @flag --no-trace-compares                      Don't build with the `sanitizer-coverage-trace-compares` LLVM argument
# @option --fuzz-dir <FUZZ_DIR>                  The path to the fuzz project directory
# @flag -h --help                                Print help information (use `-h` for a summary)
# @flag -V --version                             Print version information
# @arg target!                                   Name of the fuzz target
# @arg corpus*                                   Custom corpus directories or artifact files
# @arg args*                                     Additional libFuzzer arguments passed through to the binary
coverage() {
    :;
}
# }} cargo fuzz coverage

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"