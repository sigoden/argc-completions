#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose*    Log verbosity is based off the number of v used
# @flag -q --quiet       No output printed to stdout
# @option --log-level[info|warn|error] <LOG_LEVEL>  The maximum level of messages that should be logged by wasm-pack.
# @flag -h --help        Print help
# @flag -V --version     Print version

# {{ wasm-pack build
# @cmd 🏗️  build your npm package!
# @option -s --scope                            The npm scope to use in package.json, if any
# @option -m --mode[no-install|normal|force]    Sets steps to be run.
# @flag --no-typescript                         By default a *.d.ts file is generated for the generated JS file, but this flag will disable generating this TypeScript file
# @flag --weak-refs                             Enable usage of the JS weak references proposal
# @flag --reference-types                       Enable usage of WebAssembly reference types
# @option -t --target[bundler|nodejs|web|no-modules]  Sets the target environment.
# @flag --debug                                 Deprecated.
# @flag --dev                                   Create a development build.
# @flag --release                               Create a release build.
# @flag --profiling                             Create a profiling build.
# @option -d --out-dir <OUT_DIR>                Sets the output directory with a relative path [default: pkg]
# @option --out-name <OUT_NAME>                 Sets the output file names.
# @flag --no-pack                               Option to not generate a package.json
# @flag -h --help                               Print help
# @arg path                                     The path to the Rust crate.
# @arg extra_options*                           List of extra options to pass to `cargo build`
build() {
    :;
}
# }} wasm-pack build

# {{ wasm-pack pack
# @cmd 🍱  create a tar of your npm package but don't publish!
# @flag -h --help    Print help
# @arg path          The path to the Rust crate.
pack() {
    :;
}
# }} wasm-pack pack

# {{ wasm-pack new
# @cmd 🐑 create a new project with a template
# @option --template                            The URL to the template [default: https://github.com/rustwasm/wasm-pack-template]
# @option -m --mode[no-install|normal|force]    Should we install or check the presence of binary tools.
# @flag -h --help                               Print help
# @arg name!                                    The name of the project
new() {
    :;
}
# }} wasm-pack new

# {{ wasm-pack publish
# @cmd 🎆  pack up your npm package and publish!
# @option -t --target[bundler|nodejs|web|no-modules]  Sets the target environment.
# @option -a --access    The access level for the package to be published
# @option --tag          The distribution tag being used for publishing.
# @flag -h --help        Print help
# @arg path              The path to the Rust crate.
publish() {
    :;
}
# }} wasm-pack publish

# {{ wasm-pack login
# @cmd 👤  Add an npm registry user account! (aliases: adduser, add-user)
# @option -r --registry                 Default: 'https://registry.npmjs.org/'.
# @option -s --scope                    Default: none.
# @option -t --auth-type <AUTH_TYPE>    Default: 'legacy'.
# @flag -h --help                       Print help
login() {
    :;
}
# }} wasm-pack login

# {{ wasm-pack test
# @cmd 👩‍🔬  test your wasm!
# @flag --node                            Run the tests in Node.js
# @flag --firefox                         Run the tests in Firefox.
# @option --geckodriver                   The path to the `geckodriver` WebDriver client for testing in Firefox.
# @flag --chrome                          Run the tests in Chrome.
# @option --chromedriver                  The path to the `chromedriver` WebDriver client for testing in Chrome.
# @flag --safari                          Run the tests in Safari.
# @option --safaridriver                  The path to the `safaridriver` WebDriver client for testing in Safari.
# @flag --headless                        When running browser tests, run the browser in headless mode without any UI or windows
# @option -m --mode[no-install|normal]    Sets steps to be run.
# @flag -r --release                      Build with the release profile
# @flag -h --help                         Print help (see a summary with '-h')
# @arg path_and_extra_options*            Path to the Rust crate, and extra options to pass to `cargo test`.
test() {
    :;
}
# }} wasm-pack test

command eval "$(argc --argc-eval "$0" "$@")"