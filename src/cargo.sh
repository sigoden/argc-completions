_patch_help() {
    if [[ "$*" == "cargo" ]]; then
        cargo --help
        cat <<-'EOF'
Miss commands:
    clippy               Checks a package to catch common mistakes and improve your Rust code.
    config               Inspect configuration values
    fetch                Fetch dependencies of a package from the network
    fix                  Automatically fix lint warnings reported by rustc
    fmt                  Formats all bin and lib files of the current crate using rustfmt.
    generate-lockfile    Generate the lockfile for a package
    git-checkout         This command has been removed
    locate-project       Print a JSON representation of a Cargo.toml file's location
    login                Save an api token from the registry locally. If token is not specified, it will be read from stdin.
    logout               Remove an API token from the registry locally
    metadata             Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
    owner                Manage the owners of a crate on the registry
    package              Assemble the local package into a distributable tarball
    pkgid                Print a fully qualified package specification
    read-manifest        Print a JSON representation of a Cargo.toml manifest.
    report               Generate and display various kinds of reports
    rustc                Compile a package, and pass extra options to the compiler
    rustdoc              Build a package's documentation, using specified custom flags.
    tree                 Display a tree visualization of a dependency graph
    vendor               Vendor all dependencies for a project locally
    verify-project       Check correctness of crate manifest
    version              Show version information
    yank                 Remove a pushed crate from the index
Args:
    <cmd>
EOF
    elif [[ "$*" == "cargo clippy" ]]; then
        $@ --help | sed '/^\s*-W --/,/^$/ d'
    elif [[ "$*" == "cargo hack "* ]]; then
        :;
    elif [[ "$*" == "cargo udeps" ]]; then
        $@ --help | sed 's/\[cargo\]//g'
    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--bench;[`_choice_bench`]' \
            '--bin;[`_choice_bin`]' \
            '--example;[`_choice_example`]' \
            '--features;*,[`_choice_feature`]' \
            '--package;[`_choice_package`]' \
            '--target;[`_choice_target`]' \
            '--test;[`_choice_test`]' \
    )"
    if [[ "$*" == "cargo" ]]; then
        echo "$table" | \
        _patch_table_add_metadata 'symbol +toolchain[`_choice_toolchain`]' | \
        _patch_table_edit_arguments 'cmd;[`_choice_cmd`]'

    elif [[ "$*" == "cargo add" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--features;*,[`_choice_add_feature`]' \
        | \
        _patch_table_edit_arguments 'dep_id;[`_choice_remote_crate`]'

    elif [[ "$*" == "cargo remove" ]]; then
        echo "$table" | _patch_table_edit_arguments 'dep_id;[`_choice_depid`]'

    elif [[ "$*" == "cargo test" ]]; then
        echo "$table" | _patch_table_edit_arguments 'testname;[`_choice_testname`]'

    elif [[ "$*" == "cargo search" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'query;[`_choice_remote_crate`]'
    
    elif [[ "$*" == "cargo install" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'crate;[`_choice_remote_crate`]'

    elif [[ "$*" == "cargo clippy" ]]; then
        echo "$table" | \
        _patch_table_copy_options cargo fix | \
        _patch_table_dedup_options \
            '--help' \
        | \
         _patch_table_edit_arguments 'opts;~[`_choice_clippy`]'

    elif [[ "$*" == "cargo fmt" ]]; then
        echo "$table" | _patch_table_edit_arguments 'rustfmt_options;~[`_choice_fmt`]'

    elif [[ "$*" == "cargo hack build" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'args;~[`_choice_proxy_build`]'

    elif [[ "$*" == "cargo hack check" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'args;~[`_choice_proxy_check`]'

    elif [[ "$*" == "cargo hack run" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'args;~[`_choice_proxy_run`]'

    elif [[ "$*" == "cargo hack test" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'args;~[`_choice_proxy_test`]'

    elif [[ "$*" == "cargo llvm-cov nextest" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'args;~[`_choice_nextest_cmd`]' \


    elif [[ "$*" == "cargo make" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' 'task;[`_choice_make_task`]' 'args...' \

    elif [[ "$*" == "cargo ndk" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--target;*[`_choice_ndk_target`]' \
        | \
        _patch_table_edit_arguments \
            'cargo_args;~[`_choice_ndk_cmd`]' \

    elif [[ "$*" == "cargo sort" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--order;[package|dependencies|feature]' \
        | \
        _patch_table_edit_arguments \
            ';;' 'paths...' \

    elif [[ "$*" == "cargo watch" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--exec;[`_choice_watch_exec`]' \
            '--shell;[`_module_os_command`]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'command;[`_module_os_command`]' \
            'args;~[`_module_os_command_args`]' \

    else
        echo "$table"
    fi
}

_choice_cmd() {
    cargo --list | sed -n 's/^    \(\S\+\)$/\1/p'
}

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

_choice_add_feature() {
    if [[ "${#argc_dep_id[@]}" -eq 1 ]]; then
        curl -fsSL https://crates.io/api/v1/crates/$argc_dep_id | yq '.versions[0].features | keys | .[]'
    fi
}

_choice_remote_crate() {
    if [[ "${#ARGC_CWORD}" -gt 2 ]]; then
        curl -fsSL "https://crates.io/api/v1/crates?q=${ARGC_CWORD}&per_page=50" | \
        yq '.crates[] | .name + "	" + .description'
    fi
}

_choice_depid() {
    _helper_package_json | yq '.dependencies[].name'
}

_choice_testname() {
    cargo t -- --list | gawk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_clippy() {
    if [[ "$ARGC_CWORD" == '-'* ]]; then
        cat <<-'EOF'
--warn	Set lint warnings
-W	Set lint warnings
--allow	Set lint allowed
-A	Set lint allowed
--deny	Set lint denied
-D	Set lint denied
--forbid	Set lint forbidden
-F	Set lint forbidden
EOF
    else
        _argc_util_comp_subcommand 0 rustc
    fi
}

_choice_fmt() {
    _argc_util_comp_subcommand 0 rustfmt
}

_choice_make_task() {
    cargo make  --loglevel error --list-all-steps | \
    sed -n 's/No Description.//;s/^\(\S\+\) - \(.*\)/\1\t\2/p' 
}

_choice_ndk_cmd() {
    _argc_util_comp_subcommand 0 cargo
}

_choice_ndk_target() {
    printf "%s\n" rmeabi-v7a arm64-v8a x86 x86_64
}

_choice_nextest_cmd() {
    _argc_util_comp_subcommand 0 cargo nextest
}

_choice_proxy_build() {
    _argc_util_comp_subcommand 0 cargo build
}

_choice_proxy_check() {
    _argc_util_comp_subcommand 0 cargo check
}

_choice_proxy_run() {
    _argc_util_comp_subcommand 0 cargo run
}

_choice_proxy_test() {
    _argc_util_comp_subcommand 0 cargo test
}

_choice_toolchain() {
    rustup toolchain list | gawk '{
        split($1, parts, "-")
        print parts[1]
        print $1
    }'
}

_choice_watch_exec() {
    cargo --list | sed -n 's/^    \(\S\S\+\).*/\1/p'
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
