#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                      Show this screen.
# @option --out-dir <DIR>              Output directory
# @option --out-name <VAR>             Set a custom output filename (Without extension.
# @option --target[web|bundler|nodejs|no-modules|deno]  What type of output to generate, valid values are, and the default is [bundler]
# @option --no-modules-global <VAR>    Name of the global variable to initialize
# @flag --browser                      Hint that JS should only be compatible with a browser
# @flag --typescript                   Output a TypeScript definition file (on by default)
# @flag --no-typescript                Don't emit a *.d.ts file
# @flag --omit-imports                 Don't emit imports in generated JavaScript
# @flag --debug                        Include otherwise-extraneous debug checks in output
# @flag --no-demangle                  Don't demangle Rust symbol names
# @flag --keep-lld-exports             Keep exports synthesized by LLD
# @flag --keep-debug                   Keep debug sections in wasm files
# @flag --remove-name-section          Remove the debugging `name` section of the file
# @flag --remove-producers-section     Remove the telemetry `producers` section
# @flag --omit-default-module-path     Don't add WebAssembly fallback imports in generated JavaScript
# @flag --split-linked-modules         Split linked modules out into their own files.
# @option --encode-into[test|always|never] <MODE>  Whether or not to use TextEncoder#encodeInto, valid values are
# @flag --nodejs                       Deprecated, use `--target nodejs`
# @flag --web                          Deprecated, use `--target web`
# @flag --no-modules                   Deprecated, use `--target no-modules`
# @flag --weak-refs                    Enable usage of the JS weak references proposal
# @flag --reference-types              Enable usage of WebAssembly reference types
# @flag -V --version                   Print the version number of wasm-bindgen
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"