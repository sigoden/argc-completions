#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose*    Enables verbose logging
# @flag -h --help        Print help
# @flag -V --version     Print version

# {{ cargo tauri build
# @cmd Tauri build
# @option -r --runner                           Binary to use to build the application, defaults to `cargo`
# @flag -v --verbose*                           Enables verbose logging
# @flag -d --debug                              Builds with the debug flag
# @option -t --target[`_choice_target`]         Target triple to build against.
# @option -f --features*,[`_choice_feature`]    Space or comma separated list of features to activate
# @option -b --bundles*                         Space or comma separated list of bundles to package.
# @option -c --config                           JSON string or path to JSON file to merge with tauri.conf.json
# @flag --ci                                    Skip prompting for values
# @flag -h --help                               Print help (see a summary with '-h')
# @flag -V --version                            Print version
# @arg args*                                    Command line arguments passed to the runner
build() {
    :;
}
# }} cargo tauri build

# {{ cargo tauri dev
# @cmd Tauri dev
# @option -r --runner                           Binary to use to run the application
# @flag -v --verbose*                           Enables verbose logging
# @option -t --target[`_choice_target`]         Target triple to build against
# @option -f --features*,[`_choice_feature`]    List of cargo features to activate
# @flag -e --exit-on-panic                      Exit on panic
# @option -c --config                           JSON string or path to JSON file to merge with tauri.conf.json
# @flag --release                               Run the code in release mode
# @flag --no-watch                              Disable the file watcher
# @flag --no-dev-server                         Disable the dev server for static files
# @option --port                                Specify port for the dev server for static files.
# @flag -h --help                               Print help
# @flag -V --version                            Print version
# @arg args*                                    Command line arguments passed to the runner.
dev() {
    :;
}
# }} cargo tauri dev

# {{ cargo tauri icon
# @cmd Generates various icons for all major platforms
# @option -o --output    Output directory.
# @flag -v --verbose*    Enables verbose logging
# @option -p --png       Custom PNG icon sizes to generate.
# @flag -h --help        Print help
# @flag -V --version     Print version
# @arg input             Path to the source icon (png, 1024x1024px with transparency) [default: ./app-icon.png]
icon() {
    :;
}
# }} cargo tauri icon

# {{ cargo tauri info
# @cmd Shows information about Tauri dependencies and project configuration
# @flag --interactive    Interactive mode to apply automatic fixes
# @flag -v --verbose*    Enables verbose logging
# @flag -h --help        Print help
# @flag -V --version     Print version
info() {
    :;
}
# }} cargo tauri info

# {{ cargo tauri init
# @cmd Initializes a Tauri project
# @flag --ci                                  Skip prompting for values
# @flag -v --verbose*                         Enables verbose logging
# @flag -f --force                            Force init to overwrite the src-tauri folder
# @flag -l --log                              Enables logging
# @option -d --directory                      Set target directory for init [default: /home/sigo/w/argc-completions]
# @option -t --tauri-path <TAURI_PATH>        Path of the Tauri project to use (relative to the cwd)
# @option -A --app-name <APP_NAME>            Name of your Tauri application
# @option -W --window-title <WINDOW_TITLE>    Window title of your Tauri application
# @option -D --dist-dir <DIST_DIR>            Web assets location, relative to <project-dir>/src-tauri
# @option -P --dev-path <DEV_PATH>            Url of your dev server
# @option --before-dev-command <BEFORE_DEV_COMMAND>  A shell command to run before `tauri dev` kicks in
# @option --before-build-command <BEFORE_BUILD_COMMAND>  A shell command to run before `tauri build` kicks in
# @flag -h --help                             Print help
# @flag -V --version                          Print version
init() {
    :;
}
# }} cargo tauri init

# {{ cargo tauri plugin
# @cmd Manage Tauri plugins
# @flag -v --verbose*    Enables verbose logging
# @flag -h --help        Print help
# @flag -V --version     Print version
plugin() {
    :;
}

# {{{ cargo tauri plugin init
# @cmd Initializes a Tauri plugin project
# @option -n --name <PLUGIN_NAME>         Name of your Tauri plugin
# @flag -v --verbose*                     Enables verbose logging
# @flag --api                             Initializes a Tauri plugin with TypeScript API
# @option -d --directory                  Set target directory for init [default: /home/sigo/w/argc-completions]
# @option -t --tauri-path <TAURI_PATH>    Path of the Tauri project to use (relative to the cwd)
# @option -a --author                     Author name
# @flag -h --help                         Print help
# @flag -V --version                      Print version
# @arg plugin_name!
plugin::init() {
    :;
}
# }}} cargo tauri plugin init
# }} cargo tauri plugin

# {{ cargo tauri signer
# @cmd Tauri updater signer
# @flag -v --verbose*    Enables verbose logging
# @flag -h --help        Print help
# @flag -V --version     Print version
signer() {
    :;
}

# {{{ cargo tauri signer sign
# @cmd Sign a file
# @option -k --private-key <PRIVATE_KEY>    Load the private key from a string
# @flag -v --verbose*                       Enables verbose logging
# @option -f --private-key-path <PRIVATE_KEY_PATH>  Load the private key from a file
# @option -p --password                     Set private key password when signing
# @flag -h --help                           Print help
# @flag -V --version                        Print version
# @arg file!                                Sign the specified file
signer::sign() {
    :;
}
# }}} cargo tauri signer sign

# {{{ cargo tauri signer generate
# @cmd Generate keypair to sign files
# @option -p --password                   Set private key password when signing
# @flag -v --verbose*                     Enables verbose logging
# @option -w --write-keys <WRITE_KEYS>    Write private key to a file
# @flag -f --force                        Overwrite private key even if it exists on the specified path
# @flag --ci                              Skip prompting for values
# @flag -h --help                         Print help
# @flag -V --version                      Print version
signer::generate() {
    :;
}
# }}} cargo tauri signer generate
# }} cargo tauri signer

# {{ cargo tauri completions
# @cmd Shell completions
# @option -s --shell[bash|elvish|fish|powershell|zsh]  Shell to generate a completion script for.
# @flag -v --verbose*    Enables verbose logging
# @option -o --output    Output file for the shell completions.
# @flag -h --help        Print help
# @flag -V --version     Print version
# @arg shell!
completions() {
    :;
}
# }} cargo tauri completions

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