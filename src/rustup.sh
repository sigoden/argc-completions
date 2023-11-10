_patch_table() {
    table="$( \
        _patch_table_edit_options  \
            '--target;[`_choice_target`]' \
            '--toolchain;[`_choice_toolchain`]' \
        | \
        _patch_table_edit_arguments \
            'component;[`_choice_available_component`]' \
            'target;[`_choice_target`]' \
            'toolchain;[`_choice_toolchain`]' \
    )"

    if [[ "$*" == "rustup" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "rustup update" ]]; then
        echo "$table" | _patch_table_edit_arguments 'toolchain;[`_choice_channel`]'

    elif [[ "$*" == "rustup toolchain install" ]]; then
        echo "$table" | \
            _patch_table_edit_options '--component;*,[`_choice_available_component`]' | \
            _patch_table_edit_arguments 'toolchain;[`_choice_channel`]'

    elif [[ "$*" == "rustup component remove" ]]; then
        echo "$table" | _patch_table_edit_arguments 'component;[`_choice_installed_component`]'

    elif [[ "$*" == "rustup override unset" ]]; then
        echo "$table" | _patch_table_edit_options '--path;[`_choice_override`]'

    elif [[ "$*" == "rustup run" ]]; then
        echo "$table" | _patch_table_edit_arguments 'command;[`_choice_toolchain_command`]'

    elif [[ "$*" == "rustup which" ]] \
      || [[ "$*" == "rustup man" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments 'command;[`_choice_toolchain_command`]'

    else
        echo "$table"
    fi
}

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
