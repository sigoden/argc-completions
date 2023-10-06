#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --bugreport
# @option --explain
# @flag --list
# @flag -h --help                            Print help (see a summary with '-h')
# @flag -V --version                         Print version
# @option --manifest-path <PATH>             Path to Cargo.toml
# @option -p --package[`_choice_package`] <SPEC>  Package to process (see `cargo help pkgid`)
# @flag --workspace                          Process all packages in the workspace
# @option --exclude <SPEC>                   Exclude packages from being processed
# @option --current-rustdoc <JSON_PATH>      The current rustdoc json output to test for semver violations
# @flag -v --verbose*                        More output per occurrence
# @flag -q --quiet*                          Less output per occurrence
# @option --baseline-version <X.Y.Z>         Version from registry to lookup for a baseline
# @option --baseline-rev <REV>               Git revision to lookup for a baseline
# @option --baseline-root <MANIFEST_ROOT>    Directory containing baseline crate source
# @option --baseline-rustdoc <JSON_PATH>     The rustdoc json file to use as a semver baseline
# @option --release-type[major|minor|patch] <TYPE>  Sets the release type instead of deriving it from the version number
# @flag --default-features                   Use only the crate-defined default features, as well as any features added explicitly via other flags.
# @flag --only-explicit-features             Use no features except ones explicitly added by other flags.
# @option --features <NAME>                  Add a feature to the set of features being checked.
# @option --baseline-features <NAME>         Add a feature to the set of features being checked.
# @option --current-features <NAME>          Add a feature to the set of features being checked.
# @flag --all-features                       Use all the features, including features named `unstable`, `nightly`, `bench`, `no_std` or starting with prefixes `_`, `unstable_`, `unstable-` that are otherwise disabled by default

# {{ cargo semver-checks check-release
# @cmd
# @flag --bugreport
# @option --explain
# @flag --list
# @flag -h --help                            Print help (see a summary with '-h')
# @flag -V --version                         Print version
# @option --manifest-path <PATH>             Path to Cargo.toml
# @option -p --package[`_choice_package`] <SPEC>  Package to process (see `cargo help pkgid`)
# @flag --workspace                          Process all packages in the workspace
# @option --exclude <SPEC>                   Exclude packages from being processed
# @option --current-rustdoc <JSON_PATH>      The current rustdoc json output to test for semver violations
# @flag -v --verbose*                        More output per occurrence
# @flag -q --quiet*                          Less output per occurrence
# @option --baseline-version <X.Y.Z>         Version from registry to lookup for a baseline
# @option --baseline-rev <REV>               Git revision to lookup for a baseline
# @option --baseline-root <MANIFEST_ROOT>    Directory containing baseline crate source
# @option --baseline-rustdoc <JSON_PATH>     The rustdoc json file to use as a semver baseline
# @option --release-type[major|minor|patch] <TYPE>  Sets the release type instead of deriving it from the version number
# @flag --default-features                   Use only the crate-defined default features, as well as any features added explicitly via other flags.
# @flag --only-explicit-features             Use no features except ones explicitly added by other flags.
# @option --features <NAME>                  Add a feature to the set of features being checked.
# @option --baseline-features <NAME>         Add a feature to the set of features being checked.
# @option --current-features <NAME>          Add a feature to the set of features being checked.
# @flag --all-features                       Use all the features, including features named `unstable`, `nightly`, `bench`, `no_std` or starting with prefixes `_`, `unstable_`, `unstable-` that are otherwise disabled by default
check-release() {
    :;
}
# }} cargo semver-checks check-release

_choice_package() {
    _helper_metadata_json | yq '.packages[].name'
}

_helper_metadata_json() {
    cargo metadata --format-version 1 --no-deps
}

command eval "$(argc --argc-eval "$0" "$@")"