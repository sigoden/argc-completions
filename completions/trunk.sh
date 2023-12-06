#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config <FILE>    Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @flag -v --verbose         Enable verbose logging
# @flag -q --quiet           Be more quiet, conflicts with --verbose
# @flag -h --help            Print help
# @flag -V --version         Print version

# {{ trunk build
# @cmd Build the Rust WASM app and all of its assets
# @flag --release                      Build in release mode [default: false]
# @option -d --dist <DIR>              The output dir for all final assets [default: dist]
# @option --public-url <PUBLIC_URL>    The public URL from which assets are to be served [default: /]
# @flag --no-default-features          Build without default features [default: false]
# @flag --all-features                 Build with all features [default: false]
# @option --config <FILE>              Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @option --features                   A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]       Whether to include hash values in the output file names [default: true]
# @flag -v --verbose                   Enable verbose logging
# @flag -q --quiet                     Be more quiet, conflicts with --verbose
# @flag -h --help                      Print help
# @arg target                          The index HTML file to drive the bundling process [default: index.html]
build() {
    :;
}
# }} trunk build

# {{ trunk watch
# @cmd Build & watch the Rust WASM app and all of its assets
# @flag --release                      Build in release mode [default: false]
# @option -d --dist <DIR>              The output dir for all final assets [default: dist]
# @option --public-url <PUBLIC_URL>    The public URL from which assets are to be served [default: /]
# @flag --no-default-features          Build without default features [default: false]
# @flag --all-features                 Build with all features [default: false]
# @option --config <FILE>              Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @option --features                   A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]       Whether to include hash values in the output file names [default: true]
# @flag -v --verbose                   Enable verbose logging
# @flag -q --quiet                     Be more quiet, conflicts with --verbose
# @option -w --watch <path>            Watch specific file(s) or folder(s) [default: build target parent folder]
# @option -i --ignore <path>           Paths to ignore [default: []]
# @flag -h --help                      Print help
# @arg target                          The index HTML file to drive the bundling process [default: index.html]
watch() {
    :;
}
# }} trunk watch

# {{ trunk serve
# @cmd Build, watch & serve the Rust WASM app and all of its assets
# @flag --release                            Build in release mode [default: false]
# @option -d --dist <DIR>                    The output dir for all final assets [default: dist]
# @option --public-url <PUBLIC_URL>          The public URL from which assets are to be served [default: /]
# @flag --no-default-features                Build without default features [default: false]
# @flag --all-features                       Build with all features [default: false]
# @option --config <FILE>                    Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @option --features                         A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]             Whether to include hash values in the output file names [default: true]
# @flag -v --verbose                         Enable verbose logging
# @flag -q --quiet                           Be more quiet, conflicts with --verbose
# @option -w --watch <path>                  Watch specific file(s) or folder(s) [default: build target parent folder]
# @option -i --ignore <path>                 Paths to ignore [default: []]
# @option --address                          The address to serve on [default: 127.0.0.1]
# @option --port                             The port to serve on [default: 8080]
# @flag --open                               Open a browser tab once the initial build is complete [default: false]
# @option --proxy-backend <PROXY_BACKEND>    A URL to which requests will be proxied [default: None]
# @option --proxy-rewrite <PROXY_REWRITE>    The URI on which to accept requests which are to be rewritten and proxied to backend [default: None]
# @flag --proxy-ws                           Configure the proxy for handling WebSockets [default: false]
# @flag --proxy-insecure                     Configure the proxy to accept insecure requests [default: false]
# @flag --no-autoreload                      Disable auto-reload of the web app [default: false]
# @flag -h --help                            Print help
# @arg target                                The index HTML file to drive the bundling process [default: index.html]
serve() {
    :;
}
# }} trunk serve

# {{ trunk clean
# @cmd Clean output artifacts
# @option -d --dist <DIR>    The output dir for all final assets [default: dist]
# @flag --cargo              Optionally perform a cargo clean [default: false]
# @flag -t --tools           Optionally clean any cached tools used by Trunk
# @option --config <FILE>    Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose         Enable verbose logging
# @flag -q --quiet           Be more quiet, conflicts with --verbose
# @flag -h --help            Print help (see a summary with '-h')
clean() {
    :;
}
# }} trunk clean

# {{ trunk config
# @cmd Trunk config controls
# @option --config <FILE>    Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @flag -v --verbose         Enable verbose logging
# @flag -q --quiet           Be more quiet, conflicts with --verbose
# @flag -h --help            Print help
config() {
    :;
}

# {{{ trunk config show
# @cmd Show Trunk's current config pre-CLI
# @option --config <FILE>    Path to the Trunk config file [default: Trunk.toml] [env: TRUNK_CONFIG=]
# @flag -v --verbose         Enable verbose logging
# @flag -q --quiet           Be more quiet, conflicts with --verbose
# @flag -h --help            Print help
config::show() {
    :;
}
# }}} trunk config show
# }} trunk config

command eval "$(argc --argc-eval "$0" "$@")"