#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose    Enable verbose output
# @flag -q --quiet      Disable progress output
# @flag -h --help       Print help information
# @flag -V --version    Print version information

# {{ rustup show
# @cmd Show the active and installed toolchains or profiles
# @flag -v --verbose    Enable verbose output with rustc information for all installed toolchains
# @flag -h --help       Print help information
show() {
    :;
}

# {{{ rustup show active-toolchain
# @cmd Show the active toolchain
# @flag -v --verbose    Enable verbose output with rustc information
# @flag -h --help       Print help information
show::active-toolchain() {
    :;
}
# }}} rustup show active-toolchain

# {{{ rustup show home
# @cmd Display the computed value of RUSTUP_HOME
# @flag -h --help    Print help information
show::home() {
    :;
}
# }}} rustup show home

# {{{ rustup show profile
# @cmd Show the current profile
# @flag -h --help    Print help information
show::profile() {
    :;
}
# }}} rustup show profile
# }} rustup show

# {{ rustup update
# @cmd Update Rust toolchains and rustup
# @flag --no-self-update                Don't perform self update when running the `rustup update` command
# @flag --force                         Force an update, even if some components are missing
# @flag --force-non-host                Install toolchains that require an emulator.
# @flag -h --help                       Print help information
# @arg toolchain+[`_choice_channel`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
update() {
    :;
}
# }} rustup update

# {{ rustup check
# @cmd Check for updates to Rust toolchains and rustup
# @flag -h --help    Print help information
check() {
    :;
}
# }} rustup check

# {{ rustup default
# @cmd Set the default toolchain
# @flag -h --help                         Print help information
# @arg toolchain![`_choice_toolchain`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
default() {
    :;
}
# }} rustup default

# {{ rustup toolchain
# @cmd Modify or query the installed toolchains
# @flag -h --help    Print help information
toolchain() {
    :;
}

# {{{ rustup toolchain list
# @cmd List installed toolchains
# @flag -v --verbose    Enable verbose output with toolchain information
# @flag -h --help       Print help information
toolchain::list() {
    :;
}
# }}} rustup toolchain list

# {{{ rustup toolchain install
# @cmd Install or update a given toolchain
# @option --profile[minimal|default|complete] <profile>
# @option -c --component*,[`_choice_available_component`] <components>  Add specific components on installation
# @option -t --target*[`_choice_target`] <targets>  Add specific targets on installation
# @flag --no-self-update                Don't perform self update when running the`rustup toolchain install` command
# @flag --force                         Force an update, even if some components are missing
# @flag --allow-downgrade               Allow rustup to downgrade the toolchain to satisfy your component choice
# @flag --force-non-host                Install toolchains that require an emulator.
# @flag -h --help                       Print help information
# @arg toolchain+[`_choice_channel`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
toolchain::install() {
    :;
}
# }}} rustup toolchain install

# {{{ rustup toolchain uninstall
# @cmd Uninstall a toolchain
# @flag -h --help                         Print help information
# @arg toolchain+[`_choice_toolchain`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
toolchain::uninstall() {
    :;
}
# }}} rustup toolchain uninstall

# {{{ rustup toolchain link
# @cmd Create a custom toolchain by symlinking to a directory
# @flag -h --help                         Print help information
# @arg toolchain![`_choice_toolchain`]    Custom toolchain name
# @arg path!                              Path to the directory
toolchain::link() {
    :;
}
# }}} rustup toolchain link
# }} rustup toolchain

# {{ rustup target
# @cmd Modify a toolchain's supported targets
# @flag -h --help    Print help information
target() {
    :;
}

# {{{ rustup target list
# @cmd List installed and available targets
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag --installed    List only installed targets
# @flag -h --help      Print help information
target::list() {
    :;
}
# }}} rustup target list

# {{{ rustup target add
# @cmd Add a target to a Rust toolchain
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag -h --help                   Print help information
# @arg target+[`_choice_target`]    List of targets to install; "all" installs all available targets
target::add() {
    :;
}
# }}} rustup target add

# {{{ rustup target remove
# @cmd Remove a target from a Rust toolchain
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag -h --help                   Print help information
# @arg target+[`_choice_target`]    List of targets to uninstall
target::remove() {
    :;
}
# }}} rustup target remove
# }} rustup target

# {{ rustup component
# @cmd Modify a toolchain's installed components
# @flag -h --help    Print help information
component() {
    :;
}

# {{{ rustup component list
# @cmd List installed and available components
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag --installed    List only installed components
# @flag -h --help      Print help information
component::list() {
    :;
}
# }}} rustup component list

# {{{ rustup component add
# @cmd Add a component to a Rust toolchain
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @option --target[`_choice_target`] <target>
# @flag -h --help    Print help information
# @arg component+[`_choice_available_component`]
component::add() {
    :;
}
# }}} rustup component add

# {{{ rustup component remove
# @cmd Remove a component from a Rust toolchain
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @option --target[`_choice_target`] <target>
# @flag -h --help    Print help information
# @arg component+[`_choice_installed_component`]
component::remove() {
    :;
}
# }}} rustup component remove
# }} rustup component

# {{ rustup override
# @cmd Modify directory toolchain overrides
# @flag -h --help    Print help information
override() {
    :;
}

# {{{ rustup override list
# @cmd List directory toolchain overrides
# @flag -h --help    Print help information
override::list() {
    :;
}
# }}} rustup override list

# {{{ rustup override set
# @cmd Set the override toolchain for a directory
# @option --path <path>                   Path to the directory
# @flag -h --help                         Print help information
# @arg toolchain![`_choice_toolchain`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
override::set() {
    :;
}
# }}} rustup override set

# {{{ rustup override unset
# @cmd Remove the override toolchain for a directory
# @option --path[`_choice_override`] <path>    Path to the directory
# @flag --nonexistent                          Remove override toolchain for all nonexistent directories
# @flag -h --help                              Print help information
override::unset() {
    :;
}
# }}} rustup override unset
# }} rustup override

# {{ rustup run
# @cmd Run a command with an environment configured for a given toolchain
# @flag --install                         Install the requested toolchain if needed
# @flag -h --help                         Print help information
# @arg toolchain![`_choice_toolchain`]    Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @arg command+[`_choice_toolchain_command`]
run() {
    :;
}
# }} rustup run

# {{ rustup which
# @cmd Display which binary will be run for a given command
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag -h --help    Print help information
# @arg command![`_choice_toolchain_command`]
which() {
    :;
}
# }} rustup which

# {{ rustup doc
# @cmd Open the documentation for the current toolchain
# @flag --path               Only print the path to the documentation
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag --alloc              The Rust core allocation and collections library
# @flag --book               The Rust Programming Language book
# @flag --cargo              The Cargo Book
# @flag --core               The Rust Core Library
# @flag --edition-guide      The Rust Edition Guide
# @flag --nomicon            The Dark Arts of Advanced and Unsafe Rust Programming
# @flag --proc_macro         A support library for macro authors when defining new macros
# @flag --reference          The Rust Reference
# @flag --rust-by-example    A collection of runnable examples that illustrate various Rust concepts and standard libraries
# @flag --rustc              The compiler for the Rust programming language
# @flag --rustdoc            Documentation generator for Rust projects
# @flag --std                Standard library API documentation
# @flag --test               Support code for rustc's built in unit-test and micro-benchmarking framework
# @flag --unstable-book      The Unstable Book
# @flag --embedded-book      The Embedded Rust Book
# @flag -h --help            Print help information
# @arg topic!                Topic such as 'core', 'fn', 'usize', 'eprintln!', 'core::arch', 'alloc::format!', 'std::fs', 'std::fs::read_dir', 'std::io::Bytes', 'std::iter::Sum', 'std::io::error::Result' etc...
doc() {
    :;
}
# }} rustup doc

# {{ rustup man
# @cmd View the man page for a given command
# @option --toolchain[`_choice_toolchain`] <toolchain>  Toolchain name, such as 'stable', 'nightly', or '1.8.0'.
# @flag -h --help    Print help information
# @arg command![`_choice_toolchain_command`]
man() {
    :;
}
# }} rustup man

# {{ rustup self
# @cmd Modify the rustup installation
# @flag -h --help    Print help information
self() {
    :;
}

# {{{ rustup self update
# @cmd Download and install updates to rustup
# @flag -h --help    Print help information
self::update() {
    :;
}
# }}} rustup self update

# {{{ rustup self uninstall
# @cmd Uninstall rustup.
# @flag -y
# @flag -h --help    Print help information
self::uninstall() {
    :;
}
# }}} rustup self uninstall

# {{{ rustup self upgrade-data
# @cmd Upgrade the internal data format.
# @flag -h --help    Print help information
self::upgrade-data() {
    :;
}
# }}} rustup self upgrade-data
# }} rustup self

# {{ rustup set
# @cmd Alter rustup settings
# @flag -h --help    Print help information
set() {
    :;
}

# {{{ rustup set default-host
# @cmd The triple used to identify toolchains when not specified
# @flag -h --help    Print help information
# @arg host_triple!
set::default-host() {
    :;
}
# }}} rustup set default-host

# {{{ rustup set profile
# @cmd The default components installed
# @flag -h --help                                 Print help information
# @arg profile-name![minimal|default|complete]    [default: default]
set::profile() {
    :;
}
# }}} rustup set profile

# {{{ rustup set auto-self-update
# @cmd The rustup auto self update mode
# @flag -h --help    Print help information
# @arg auto-self-update-mode![enable|disable|check-only]  [default: enable]
set::auto-self-update() {
    :;
}
# }}} rustup set auto-self-update
# }} rustup set

# {{ rustup completions
# @cmd Generate tab-completion scripts for your shell
# @flag -h --help    Print help information
# @arg shell![bash|elvish|fish|powershell|zsh]
# @arg command![rustup|cargo]
completions() {
    :;
}
# }} rustup completions

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_channel() {
    echo stable
    echo beta
    echo nightly
}

_choice_toolchain() {
    _choice_channel
    rustup toolchain list | gawk '{print $1}'
}

_choice_available_component() {
    cat <<-'EOF'
rustc	The Rust compiler.
cargo	Cargo is a package manager and build tool.
rustfmt	Rustfmt is a tool for automatically formatting code.
rust-std	This is the Rust standard library.
rust-docs	This is a local copy of the Rust documentation.
rls	RLS is a language server
rust-analyzer-preview	Rust anaylzer is a new language server.
clippy	Clippy is a lint tool.
miri	Miri is an experimental Rust interpreter.
rust-src	This is a local copy of the source code of the Rust standard library.
rust-analysis	Metadata about the standard library, used by tools like RLS.
rust-mingw	This contains a linker and platform libraries.
llvm-tools-preview	This contains a collection of LLVM tools.
rustc-dev	This component contains the compiler as a library.
EOF
}

_choice_target() {
    rustup target list | gawk '{print $1}' | _argc_util_comp_parts -
}

_choice_installed_component() {
    rustup component list --installed
}

_choice_override() {
    rustup override list
}

_choice_toolchain_command() {
    printf "%s\n" cargo cargo-clippy cargo-fmt clippy-driver rustc rustdoc rustfmt rust-gdb rust-gdbgui rust-lldb
}

command eval "$(argc --argc-eval "$0" "$@")"