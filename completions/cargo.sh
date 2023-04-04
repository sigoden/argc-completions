#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg cmd[`_choice_cmd`]
# @flag -V --version
# @flag --list
# @option --explain <CODE>
# @flag -v --verbose
# @flag -q --quiet
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help

# {{ cargo add
# @cmd
# @arg DEP_ID*
# @flag --no-default-features
# @flag --default-features
# @option -F --features
# @flag --optional
# @flag -v --verbose
# @flag --no-optional
# @option --color[auto|always|never] <WHEN>
# @option --rename <NAME>
# @flag --frozen
# @option --manifest-path <PATH>
# @flag --locked
# @option -p --package[`_choice_package`] <SPEC>
# @flag --offline
# @flag -q --quiet
# @option --config <KEY=VALUE>
# @flag --dry-run
# @option -Z <FLAG>
# @flag -h --help
# @option --path
# @option --git <URI>
# @option --branch
# @option --tag
# @option --rev
# @option --registry <NAME>
# @flag --dev
# @flag --build
# @option --target
add() {
    :;
}
# }} cargo add


# {{ cargo audit
# @cmd
# @option -c --color[always|never (default: auto)]
# @option -d --db
# @option -D --deny[exit with an error on: warnings (any)|unmaintained|unsound|yanked]
# @option -f --file[Cargo lockfile to inspect (or `-` for STDIN|default: Cargo.lock)]
# @option --ignore <ADVISORY_ID>
# @flag --ignore-source
# @flag --json
# @flag -n --no-fetch
# @flag -q --quiet
# @flag --stale
# @option --target-arch <TARGET_ARCH>
# @option --target-os <TARGET_OS>
# @option -u --url
audit() {
    :;
}

# {{{ cargo audit bin
# @cmd
# @option -c --color[always|never|auto]
# @option -d --db
# @option -D --deny[warnings|unmaintained|unsound|yanked]
# @option --ignore <ADVISORY_ID>
# @flag --ignore-source
# @flag --json
# @flag -n --no-fetch
# @flag -q --quiet
# @flag --stale
# @option --target-arch <TARGET_ARCH>
# @option --target-os <TARGET_OS>
# @option -u --url
# @arg BINARY_PATHS*
audit::bin() {
    :;
}
# }}} cargo audit bin

# }} cargo audit


# {{ cargo bench
# @cmd
# @arg BENCHNAME
# @arg args*
# @flag -q --quiet
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @flag -v --verbose*
# @option --example[`_choice_example`] <NAME>
# @option --color[auto|always|never] <WHEN>
# @flag --examples
# @flag --frozen
# @option --test[`_choice_test`] <NAME>
# @flag --locked
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --offline
# @flag --benches
# @option --config <KEY=VALUE>
# @flag --all-targets
# @option -Z <FLAG>
# @flag --no-run
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option -j --jobs <N>
# @flag --keep-going
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --no-fail-fast
# @flag --unit-graph
# @option --timings[html|json] <FMTS>
# @flag -h --help
bench() {
    :;
}
# }} cargo bench


# {{ cargo bloat
# @cmd
# @flag -h --help
# @flag -V --version
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @option --example[`_choice_example`] <NAME>
# @option --test[`_choice_test`] <NAME>
# @option -p --package[`_choice_package`] <SPEC>
# @flag --release
# @option -j --jobs <N>
# @option --features
# @flag --all-features
# @flag --no-default-features
# @option --profile
# @option --target
# @option --target-dir <DIRECTORY>
# @flag --frozen
# @flag --locked
# @option -Z* <FLAG>
# @flag --crates
# @flag --time
# @option --filter <CRATE|REGEXP>
# @flag --split-std
# @option --symbols-section <NAME>
# @flag --no-relative-size
# @flag --full-fn
# @option -n <NUM>
# @flag -w --wide
# @option --message-format <FMT>
bloat() {
    :;
}
# }} cargo bloat


# {{ cargo build
# @cmd
# @alias b
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose*
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --out-dir <PATH>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --build-plan
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @flag -h --help
build() {
    :;
}
# }} cargo build


# {{ cargo check
# @cmd
# @alias c
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @flag -h --help
check() {
    :;
}
# }} cargo check


# {{ cargo clean
# @cmd
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @option --manifest-path <PATH>
# @option --target[`_choice_target`] <TRIPLE>
# @flag -v --verbose*
# @option --target-dir <DIRECTORY>
# @option --color[auto|always|never] <WHEN>
# @flag -r --release
# @flag --frozen
# @option --profile <PROFILE-NAME>
# @flag --doc
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
clean() {
    :;
}
# }} cargo clean


# {{ cargo clippy
# @cmd
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @flag --no-deps
# @flag --fix
# @flag -h --help
# @flag -V --version
# @option --explain <LINT>
# @arg opts*
clippy() {
    :;
}
# }} cargo clippy


# {{ cargo config
# @cmd
# @flag -v --verbose
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
config() {
    :;
}
# }} cargo config


# {{ cargo doc
# @cmd
# @alias d
# @flag -q --quiet
# @flag --open
# @option -p --package[`_choice_package`] <SPEC>
# @flag -v --verbose*
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --no-deps
# @flag --document-private-items
# @flag --locked
# @option -j --jobs <N>
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --keep-going
# @flag --lib
# @option -Z <FLAG>
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @option --example[`_choice_example`] <NAME>
# @flag --examples
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --ignore-rust-version
# @flag --unit-graph
# @option --timings[html|json] <FMTS>
# @flag -h --help
doc() {
    :;
}
# }} cargo doc


# {{ cargo fetch
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @option --target[`_choice_target`] <TRIPLE>
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
fetch() {
    :;
}
# }} cargo fetch


# {{ cargo fix
# @cmd
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose*
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --broken-code
# @flag --edition
# @flag --edition-idioms
# @flag --allow-no-vcs
# @flag --allow-dirty
# @flag --allow-staged
# @flag --ignore-rust-version
# @option --timings[html|json] <FMTS>
# @flag -h --help
fix() {
    :;
}
# }} cargo fix


# {{ cargo fmt
# @cmd
# @arg rustfmt_options*
# @flag --all
# @flag --check
# @flag -h --help
# @option --manifest-path <manifest-path>
# @option --message-format[short|json|human] <message-format>
# @option -p --package* <package>
# @flag -q --quiet
# @flag -v --verbose
# @flag --version
fmt() {
    :;
}
# }} cargo fmt


# {{ cargo fuzz
# @cmd
# @flag -h --help
# @flag -V --version
fuzz() {
    :;
}
# }} cargo fuzz


# {{ cargo generate-lockfile
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @flag -v --verbose
# @option --color <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
# @arg generate-lockfile
generate-lockfile() {
    :;
}
# }} cargo generate-lockfile


# {{ cargo git-checkout
# @cmd
git-checkout() {
    :;
}
# }} cargo git-checkout


# {{ cargo init
# @cmd
# @arg path
# @flag -q --quiet
# @option --registry
# @option --vcs[git|hg|pijul|fossil|none]
# @flag --bin
# @flag -v --verbose*
# @flag --lib
# @option --color[auto|always|never] <WHEN>
# @option --edition[2015|2018|2021] <YEAR>
# @flag --frozen
# @option --name
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
init() {
    :;
}
# }} cargo init


# {{ cargo install
# @cmd
# @arg crate*
# @flag -q --quiet
# @option --version
# @option --git <URL>
# @option --branch
# @flag -v --verbose*
# @option --tag
# @option --color[auto|always|never] <WHEN>
# @option --rev <SHA>
# @flag --frozen
# @option --path
# @flag --list
# @flag --locked
# @option -j --jobs <N>
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --keep-going
# @flag -f --force
# @option -Z <FLAG>
# @flag --no-track
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --profile <PROFILE-NAME>
# @flag --debug
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @option --example[`_choice_example`] <NAME>
# @flag --examples
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --root <DIR>
# @option --index
# @option --registry
# @option --message-format <FMT>
# @option --timings[html|json] <FMTS>
# @flag -h --help
install() {
    :;
}
# }} cargo install


# {{ cargo insta
# @cmd
# @option --color[auto|always|never] <WHEN>
insta() {
    :;
}

# {{{ cargo insta review
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @option -e --extensions
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @option --snapshot <snapshot-filter>
# @flag -q --quiet
# @option --color[auto|always|never] <WHEN>
insta::review() {
    :;
}
# }}} cargo insta review


# {{{ cargo insta reject
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @option -e --extensions
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @option --snapshot <snapshot-filter>
# @flag -q --quiet
# @option --color[auto|always|never] <WHEN>
insta::reject() {
    :;
}
# }}} cargo insta reject


# {{{ cargo insta accept
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @option -e --extensions*
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @option --snapshot* <snapshot-filter>
# @flag -q --quiet
# @option --color[auto|always|never] <WHEN>
insta::accept() {
    :;
}
# }}} cargo insta accept


# {{{ cargo insta test
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @option -e --extensions
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @flag --lib
# @option --bin[`_choice_bin`] <bin>
# @flag --bins
# @option --example[`_choice_example`] <example>
# @flag --examples
# @option --test[`_choice_test`] <test>
# @flag --tests
# @option -p --package[`_choice_package`] <package>
# @flag --no-force-pass
# @flag --fail-fast
# @option --features
# @option -j --jobs <jobs>
# @flag --release
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <target>
# @flag --review
# @flag --accept
# @flag --accept-unseen
# @flag --check
# @flag --keep-pending
# @flag --force-update-snapshots
# @option --unreferenced[ignore|warn|reject|delete|auto] <unreferenced>
# @option --glob-filter <glob-filter>
# @flag -Q --no-quiet
# @option --test-runner[auto|cargo-test|nextest] <test-runner>
# @option --color[auto|always|never] <WHEN>
# @arg CARGO_TEST_ARGS*
insta::test() {
    :;
}
# }}} cargo insta test


# {{{ cargo insta pending-snapshots
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @flag -e --extensions
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @flag --as-json
# @option --color[auto|<br>always|<br>never] <WHEN>
insta::pending-snapshots() {
    :;
}
# }}} cargo insta pending-snapshots


# {{{ cargo insta show
# @cmd
# @option --manifest-path <PATH>
# @option --workspace-root <PATH>
# @option -e --extensions
# @flag --workspace
# @flag --all
# @flag --include-ignored
# @flag --include-hidden
# @option --color[auto|always|never] <WHEN>
# @arg path
insta::show() {
    :;
}
# }}} cargo insta show

# }} cargo insta


# {{ cargo locate-project
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @option --message-format[json|plain] <FMT>
# @flag -v --verbose*
# @flag --workspace
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
locate-project() {
    :;
}
# }} cargo locate-project


# {{ cargo login
# @cmd
# @arg token
# @flag -q --quiet
# @option --registry
# @flag --generate-keypair
# @flag --secret-key
# @flag -v --verbose*
# @option --key-subject <SUBJECT>
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
login() {
    :;
}
# }} cargo login


# {{ cargo logout
# @cmd
# @flag -q --quiet
# @option --registry
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
logout() {
    :;
}
# }} cargo logout


# {{ cargo metadata
# @cmd
# @flag -q --quiet
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @flag -v --verbose
# @option --filter-platform <TRIPLE>
# @option --color[auto|always|never] <WHEN>
# @flag --no-deps
# @flag --frozen
# @option --manifest-path <PATH>
# @option --format-version <VERSION>
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
metadata() {
    :;
}
# }} cargo metadata


# {{ cargo new
# @cmd
# @arg path!
# @flag -q --quiet
# @option --registry
# @option --vcs[git|hg|pijul|fossil|none]
# @flag --bin
# @flag -v --verbose*
# @flag --lib
# @option --color[auto|always|never] <WHEN>
# @option --edition[2015|2018|2021] <YEAR>
# @flag --frozen
# @option --name
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
new() {
    :;
}
# }} cargo new


# {{ cargo outdated
# @cmd
# @flag -a --aggressive
# @option --color[Auto|Never|Always]
# @option -d --depth <NUM>
# @option -x --exclude* <DEPENDENCIES>
# @option --exit-code <NUM>
# @option --features*
# @option --format[List|Json]
# @flag -h --help
# @option -i --ignore* <DEPENDENCIES>
# @flag -e --ignore-external-rel
# @option -m --manifest-path <PATH>
# @flag -o --offline
# @option -p --packages* <PKGS>
# @flag -q --quiet
# @option -r --root
# @flag -R --root-deps-only
# @flag -V --version
# @flag -v --verbose
# @flag -w --workspace
outdated() {
    :;
}
# }} cargo outdated


# {{ cargo owner
# @cmd
# @arg crate
# @flag -q --quiet
# @option -a --add <LOGIN>
# @option -r --remove <LOGIN>
# @flag -l --list
# @flag -v --verbose*
# @option --index
# @option --color[auto|always|never] <WHEN>
# @option --token
# @flag --frozen
# @option --registry
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
owner() {
    :;
}
# }} cargo owner


# {{ cargo package
# @cmd
# @flag -q --quiet
# @flag -l --list
# @flag --no-verify
# @flag --no-metadata
# @flag -v --verbose*
# @flag --allow-dirty
# @option --color[auto|always|never] <WHEN>
# @option --target[`_choice_target`] <TRIPLE>
# @flag --frozen
# @option --target-dir <DIRECTORY>
# @option -F --features
# @flag --locked
# @flag --all-features
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --no-default-features
# @option -p --package[`_choice_package`] <SPEC>
# @option -Z <FLAG>
# @flag --workspace
# @option --exclude <SPEC>
# @option --manifest-path <PATH>
# @option -j --jobs <N>
# @flag --keep-going
# @flag -h --help
package() {
    :;
}
# }} cargo package


# {{ cargo pkgid
# @cmd
# @arg spec
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @option --manifest-path <PATH>
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
pkgid() {
    :;
}
# }} cargo pkgid


# {{ cargo publish
# @cmd
# @flag -q --quiet
# @option --index
# @option --token
# @flag --no-verify
# @flag -v --verbose
# @flag --allow-dirty
# @option --color[auto|always|never] <WHEN>
# @option --target[`_choice_target`] <TRIPLE>
# @flag --frozen
# @option --target-dir <DIRECTORY>
# @flag --locked
# @option -p --package[`_choice_package`] <SPEC>
# @option --manifest-path <PATH>
# @flag --offline
# @option --config <KEY=VALUE>
# @option -F --features
# @flag --all-features
# @option -Z <FLAG>
# @flag --no-default-features
# @option -j --jobs <N>
# @flag --keep-going
# @flag --dry-run
# @option --registry
# @flag -h --help
publish() {
    :;
}
# }} cargo publish


# {{ cargo run
# @cmd
# @alias r
# @arg args*
# @flag -q --quiet
# @option --bin[`_choice_bin`] <NAME>
# @option --example[`_choice_example`] <NAME>
# @option -p --package[`_choice_package`] <SPEC>
# @flag -v --verbose*
# @option -j --jobs <N>
# @option --color[auto|always|never] <WHEN>
# @flag --keep-going
# @flag --frozen
# @flag -r --release
# @flag --locked
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --offline
# @flag --all-features
# @option --config <KEY=VALUE>
# @flag --no-default-features
# @option -Z <FLAG>
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --ignore-rust-version
# @option --timings[html|json] <FMTS>
# @flag -h --help
run() {
    :;
}
# }} cargo run


# {{ cargo read-manifest
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @flag -v --verbose*
# @option --color <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <EKY=VALUE>
# @option -Z <FALG>
# @flag -h --help
read-manifest() {
    :;
}
# }} cargo read-manifest


# {{ cargo remove
# @cmd
# @alias rm
# @arg DEP_ID+[`_choice_depid`]
# @option -p --package[`_choice_package`] <SPEC>
# @option --manifest-path <PATH>
# @flag -q --quiet
# @flag --dry-run
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
# @flag --dev
# @flag --build
# @option --target
remove() {
    :;
}
# }} cargo remove


# {{ cargo report
# @cmd
# @flag -v --verbose
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
report() {
    :;
}
# }} cargo report


# {{ cargo rustc
# @cmd
# @arg args*
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @option -j --jobs <N>
# @flag --keep-going
# @flag -v --verbose*
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @option --color[auto|always|never] <WHEN>
# @flag --bins
# @flag --frozen
# @option --example[`_choice_example`] <NAME>
# @flag --locked
# @flag --examples
# @flag --offline
# @option --config <KEY=VALUE>
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option -Z <FLAG>
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --print <INFO>
# @option --crate-type
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --ignore-rust-version
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @flag -h --help
rustc() {
    :;
}
# }} cargo rustc


# {{ cargo rustdoc
# @cmd
# @flag -q --quiet
# @flag --open
# @option -p --package[`_choice_package`] <SPEC>
# @option -j --jobs <N>
# @flag -v --verbose*
# @flag --keep-going
# @option --color[auto|always|never] <WHEN>
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --frozen
# @flag --bins
# @flag --locked
# @option --example[`_choice_example`] <NAME>
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @option -Z <FLAG>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --ignore-rust-version
# @option --timings[html|json] <FMTS>
# @flag -h --help
# @arg args*
rustdoc() {
    :;
}
# }} cargo rustdoc


# {{ cargo search
# @cmd
# @arg query*
# @flag -q --quiet
# @option --index
# @option --limit
# @option --registry
# @flag -v --verbose
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
search() {
    :;
}
# }} cargo search


# {{ cargo test
# @cmd
# @alias t
# @arg TESTNAME[`_choice_testname`]
# @arg args*
# @flag -q --quiet
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @flag -v --verbose*
# @option --example[`_choice_example`] <NAME>
# @option --color[auto|always|never] <WHEN>
# @flag --examples
# @flag --frozen
# @option --test[`_choice_test`] <NAME>
# @flag --locked
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --offline
# @flag --benches
# @option --config <KEY=VALUE>
# @flag --all-targets
# @option -Z <FLAG>
# @flag --doc
# @flag --no-run
# @flag --no-fail-fast
# @option -p --package[`_choice_package`] <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option -j --jobs <N>
# @flag --keep-going
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @flag -h --help
test() {
    :;
}
# }} cargo test


# {{ cargo tree
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @option -p --package[`_choice_package`] <SPEC>
# @flag -v --verbose*
# @flag --workspace
# @option --exclude <SPEC>
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @option -F --features
# @flag --locked
# @flag --all-features
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option -Z <FLAG>
# @option -e --edges[features|normal|build|dev|all|no-normal|no-build|no-dev|no-proc-macro] <KINDS>
# @option -i --invert <SPEC>
# @option --prune <SPEC>
# @option --depth
# @option --prefix[depth|indent|none]
# @flag --no-dedupe
# @flag -d --duplicates
# @option --charset[utf8|ascii]
# @option -f --format
# @flag -h --help
tree() {
    :;
}
# }} cargo tree


# {{ cargo uninstall
# @cmd
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @option --bin[`_choice_bin`] <NAME>
# @option --root <DIR>
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
# @arg spec*
uninstall() {
    :;
}
# }} cargo uninstall


# {{ cargo udeps
# @cmd
# @flag -q --quiet
# @option -p --package[`_choice_package`] <SPEC>
# @flag --all
# @flag --workspace
# @option --exclude <SPEC>
# @option -j --jobs <N>
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @option --example[`_choice_example`] <NAME>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag --release
# @option --profile <PROFILE-NAME>
# @option --features*
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format[human|json|short] <FMT>
# @flag -v --verbose
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --output[human|json]
# @option --backend[depinfo|save-analysis]
# @flag --keep-going
# @flag --show-unused-transitive
# @flag -h --help
# @flag -V --version
# @arg SPEC
udeps() {
    :;
}
# }} cargo udeps


# {{ cargo update
# @cmd
# @flag -q --quiet
# @flag -w --workspace
# @option -p --package[`_choice_package`] <SPEC>
# @flag --aggressive
# @flag -v --verbose*
# @flag --dry-run
# @option --color[auto|always|never] <WHEN>
# @option --precise
# @flag --frozen
# @option --manifest-path <PATH>
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
update() {
    :;
}
# }} cargo update


# {{ cargo vendor
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @flag --no-delete
# @option -s --sync <TOML>
# @flag -v --verbose
# @flag --respect-source-config
# @option --color[auto|always|never] <WHEN>
# @flag --versioned-dirs
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
# @arg path
vendor() {
    :;
}
# }} cargo vendor


# {{ cargo verify-project
# @cmd
# @flag -q --quiet
# @option --manifest-path <PATH>
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
verify-project() {
    :;
}
# }} cargo verify-project


# {{ cargo version
# @cmd
# @flag -q --quiet
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
version() {
    :;
}
# }} cargo version


# {{ cargo yank
# @cmd
# @arg crate
# @flag -q --quiet
# @option --version
# @flag --undo
# @option --index
# @flag -v --verbose
# @option --token
# @option --color[auto|always|never] <WHEN>
# @option --registry
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag -h --help
yank() {
    :;
}
# }} cargo yank


_choice_cmd() {
	cargo --list | awk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | awk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_depid() {
	_get_package_json "$(_get_option_package)" | jq -r '.dependencies[].name'
}

_choice_package() {
	cargo metadata --format-version 1 --no-deps | jq -r '.packages[].name'
}

_choice_bench() {
	_get_package_target bench "$(_get_option_package)"
}

_choice_bin() {
	_get_package_target bin "$(_get_option_package)"
}

_choice_test() {
	_get_package_target test "$(_get_option_package)"
}

_choice_example() {
	_get_package_target example "$(_get_option_package)"
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

_get_option_package() {
	echo "${argc_package:-"$argc_p"}"
}

_get_package_target() {
	target_kind="$1"
	package_name="$2"
	_get_package_json "$package_name" | jq -r '.targets[] | select( .kind[] | contains("'$target_kind'") ) | .name'
}

_get_package_json() {
	package_name="$1"
	metadata_json="$(_get_metadata_json)"
	if [[ -n "$package_name" ]]; then
		echo "$metadata_json" | jq '.packages[] | select(.name == "'"$package_name"'")'
	else
		workspace_root="$(echo "$metadata_json" | jq -r '.workspace_root')"
		manifest_path="$(echo "${workspace_root}$(_argc_util_path_sep)Cargo.toml" |  jq -R .)"
		echo "$metadata_json" | jq '.packages[] | select(.manifest_path == '"$manifest_path"')'
	fi
}

_get_metadata_json() {
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