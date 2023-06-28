_patch_table() {
    table="$(
        _patch_util_edit_table_option  \
            '--toolchain;[`_choice_toolchain`]' \
            '--target;[`_choice_target`]' \ | 
         _patch_util_edit_table_argument \
            'toolchain;[`_choice_toolchain`]' \
            'target;[`_choice_target`]' \
            'component;[`_choice_available_component`]' \
    )"
    if [[ "$*" == "rustup" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;'
    elif [[ "$*" == "rustup update" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'toolchain;[`_choice_channel`]'
    elif [[ "$*" == "rustup toolchain install" ]]; then
        echo "$table" \ |
            _patch_util_edit_table_option '--component;*,[`_choice_available_component`]'  \ |
            _patch_util_edit_table_argument 'toolchain;[`_choice_channel`]'
    elif [[ "$*" == "rustup component remove" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'component;[`_choice_installed_component`]'
    else
        echo "$table"
    fi
    
}

_choice_toolchain() {
    rustup toolchain list | awk '{print $1}'
    _choice_channel
}

_choice_target() {
    rustup target list | awk '{print $1}' | _argc_util_comp_parts -
}

_choice_installed_component() {
    rustup component list --installed
}

_choice_available_component() {
    cat <<-'EOF' | sed 's/: \+/\t/'
rustc: The Rust compiler.
cargo: Cargo is a package manager and build tool.
rustfmt: Rustfmt is a tool for automatically formatting code.
rust-std: This is the Rust standard library.
rust-docs: This is a local copy of the Rust documentation.
rls: RLS is a language server
rust-analyzer-preview: Rust anaylzer is a new language server.
clippy: Clippy is a lint tool.
miri: Miri is an experimental Rust interpreter.
rust-src: This is a local copy of the source code of the Rust standard library.
rust-analysis: Metadata about the standard library, used by tools like RLS.
rust-mingw: This contains a linker and platform libraries.
llvm-tools-preview: This contains a collection of LLVM tools.
rustc-dev: This component contains the compiler as a library.
EOF
}

_choice_override() {
    rustup override list
}

_choice_channel() {
    echo beta
    echo stable
    echo nightly
}