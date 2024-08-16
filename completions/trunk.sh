#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
# @flag -V --version            Print version

# {{ trunk build
# @cmd Build the Rust WASM app and all of its assets
# @option --config <FILE>                          Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*                              Enable verbose logging
# @flag -q --quiet                                 Be more quiet, conflicts with --verbose
# @option --log                                    Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check                       Skip the version check
# @option --color                                  Color mode
# @flag --no-color                                 Support for `NO_COLOR` environment variable
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag --release                                  Build in release mode [default: false]
# @option -d --dist <DIR>                          The output dir for all final assets [default: dist]
# @flag --offline                                  Run without accessing the network
# @flag --frozen                                   Require Cargo.lock and cache are up to date
# @flag --locked                                   Require Cargo.lock is up to date
# @option --public-url <PUBLIC_URL>                The public URL from which assets are to be served
# @flag --public-url-no-trailing-slash-fix         Don't add a trailing slash to the public URL if it is missing [default: false]
# @flag --no-default-features                      Build without default features [default: false]
# @flag --all-features                             Build with all features [default: false]
# @option --features                               A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]                   Whether to include hash values in the output file names [default: true]
# @option --root-certificate <ROOT_CERTIFICATE>    When desired, set a custom root certificate chain (same format as Cargo's config.toml http.cainfo)
# @option --accept-invalid-certs[true|false] <ACCEPT_INVALID_CERTS>  Allows request to ignore certificate validation errors.
# @flag -M --minify                                Enable minification.
# @flag --no-sri                                   Allows disabling sub-resource integrity (SRI)
# @flag --allow-self-closing-script                Ignore error's related to self-closing script elements, and instead issue a warning.
# @arg target
build() {
    :;
}
# }} trunk build

# {{ trunk watch
# @cmd Build & watch the Rust WASM app and all of its assets
# @option --config <FILE>                          Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*                              Enable verbose logging
# @flag -q --quiet                                 Be more quiet, conflicts with --verbose
# @option --log                                    Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check                       Skip the version check
# @option --color                                  Color mode
# @flag --no-color                                 Support for `NO_COLOR` environment variable
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag --release                                  Build in release mode [default: false]
# @option -d --dist <DIR>                          The output dir for all final assets [default: dist]
# @flag --offline                                  Run without accessing the network
# @flag --frozen                                   Require Cargo.lock and cache are up to date
# @flag --locked                                   Require Cargo.lock is up to date
# @option --public-url <PUBLIC_URL>                The public URL from which assets are to be served
# @flag --public-url-no-trailing-slash-fix         Don't add a trailing slash to the public URL if it is missing [default: false]
# @flag --no-default-features                      Build without default features [default: false]
# @flag --all-features                             Build with all features [default: false]
# @option --features                               A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]                   Whether to include hash values in the output file names [default: true]
# @option --root-certificate <ROOT_CERTIFICATE>    When desired, set a custom root certificate chain (same format as Cargo's config.toml http.cainfo)
# @option --accept-invalid-certs[true|false] <ACCEPT_INVALID_CERTS>  Allows request to ignore certificate validation errors.
# @flag -M --minify                                Enable minification.
# @flag --no-sri                                   Allows disabling sub-resource integrity (SRI)
# @flag --allow-self-closing-script                Ignore error's related to self-closing script elements, and instead issue a warning.
# @option -w --watch <path>                        Watch specific file(s) or folder(s) [default: build target parent folder]
# @option -i --ignore <path>                       Paths to ignore [default: []]
# @flag --poll                                     Using polling mode for detecting changes
# @option --poll-interval <POLL_INTERVAL>          The polling interval, when polling is enabled
# @flag --enable-cooldown                          Allow enabling a cooldown, discarding all change events during the build [default: false]
# @arg target
watch() {
    :;
}
# }} trunk watch

# {{ trunk serve
# @cmd Build, watch & serve the Rust WASM app and all of its assets
# @option --config <FILE>                          Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*                              Enable verbose logging
# @flag -q --quiet                                 Be more quiet, conflicts with --verbose
# @option --log                                    Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check                       Skip the version check
# @option --color                                  Color mode
# @flag --no-color                                 Support for `NO_COLOR` environment variable
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag --release                                  Build in release mode [default: false]
# @option -d --dist <DIR>                          The output dir for all final assets [default: dist]
# @flag --offline                                  Run without accessing the network
# @flag --frozen                                   Require Cargo.lock and cache are up to date
# @flag --locked                                   Require Cargo.lock is up to date
# @option --public-url <PUBLIC_URL>                The public URL from which assets are to be served
# @flag --public-url-no-trailing-slash-fix         Don't add a trailing slash to the public URL if it is missing [default: false]
# @flag --no-default-features                      Build without default features [default: false]
# @flag --all-features                             Build with all features [default: false]
# @option --features                               A comma-separated list of features to activate, must not be used with all-features [default: ""]
# @option --filehash[true|false]                   Whether to include hash values in the output file names [default: true]
# @option --root-certificate <ROOT_CERTIFICATE>    When desired, set a custom root certificate chain (same format as Cargo's config.toml http.cainfo)
# @option --accept-invalid-certs[true|false] <ACCEPT_INVALID_CERTS>  Allows request to ignore certificate validation errors.
# @flag -M --minify                                Enable minification.
# @flag --no-sri                                   Allows disabling sub-resource integrity (SRI)
# @flag --allow-self-closing-script                Ignore error's related to self-closing script elements, and instead issue a warning.
# @option -w --watch <path>                        Watch specific file(s) or folder(s) [default: build target parent folder]
# @option -i --ignore <path>                       Paths to ignore [default: []]
# @flag --poll                                     Using polling mode for detecting changes
# @option --poll-interval <POLL_INTERVAL>          The polling interval, when polling is enabled
# @flag --enable-cooldown                          Allow enabling a cooldown, discarding all change events during the build [default: false]
# @option --address <address>                      The addresses to serve on [default: <local>]
# @option -A --prefer-address-family[ipv4|ipv6] <PREFER_ADDRESS_FAMILY>  [env: PREFER_ADDRESS_FAMILY=]
# @option --port                                   The port to serve on [default: 8080]
# @flag --open                                     Open a browser tab once the initial build is complete [default: false]
# @option --proxy-backend <PROXY_BACKEND>          A URL to which requests will be proxied [default: None]
# @option --proxy-rewrite <PROXY_REWRITE>          The URI on which to accept requests which are to be rewritten and proxied to backend [default: None]
# @flag --proxy-ws                                 Configure the proxy for handling WebSockets [default: false]
# @flag --proxy-insecure                           Configure the proxy to accept insecure requests [default: false]
# @flag --proxy-no-system-proxy                    Configure the proxy to bypass system proxy [default: false]
# @flag --no-autoreload                            Disable auto-reload of the web app [default: false]
# @flag --no-error-reporting                       Disable error reporting in the browser [default: false]
# @flag --no-spa                                   Disable fallback to index.html for missing files [default: false]
# @option --ws-protocol[wss|ws] <WS_PROTOCOL>      Protocol used for the auto-reload WebSockets connection [enum: ws, wss]
# @option --ws-base <WS_BASE>                      The path to the trunk web-socket [default: <serve-base>]
# @option --tls-key-path <TLS_KEY_PATH>            The TLS key file to enable TLS encryption [default: None]
# @option --tls-cert-path <TLS_CERT_PATH>          The TLS cert file to enable TLS encryption [default: None]
# @option --serve-base <SERVE_BASE>                A base path to serve the application from [default: <public-url>]
# @arg target
serve() {
    :;
}
# }} trunk serve

# {{ trunk clean
# @cmd Clean output artifacts
# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
# @option -d --dist <DIR>       The output dir for all final assets [default: dist]
# @flag --cargo                 Optionally perform a cargo clean [default: false]
# @flag -t --tools              Optionally clean any cached tools used by Trunk
clean() {
    :;
}
# }} trunk clean

# {{ trunk config
# @cmd Trunk config controls
# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
config() {
    :;
}

# {{{ trunk config show
# @cmd Show Trunk's current config pre-CLI
# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
config::show() {
    :;
}
# }}} trunk config show
# }} trunk config

# {{ trunk tools
# @cmd Working with tools
# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
tools() {
    :;
}

# {{{ trunk tools show
# @cmd Show Trunk's tool versions
# @option --config <FILE>       Path to the Trunk config file [default: Trunk.toml]
# @flag -v --verbose*           Enable verbose logging
# @flag -q --quiet              Be more quiet, conflicts with --verbose
# @option --log                 Provide a RUST_LOG filter, conflicts with --verbose and --quiet
# @flag --skip-version-check    Skip the version check
# @option --color               Color mode
# @flag --no-color              Support for `NO_COLOR` environment variable
# @flag -h --help               Print help (see a summary with '-h')
tools::show() {
    :;
}
# }}} trunk tools show
# }} trunk tools

command eval "$(argc --argc-eval "$0" "$@")"