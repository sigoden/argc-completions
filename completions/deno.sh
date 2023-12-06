#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag -V --version                     Print version

# {{ deno run
# @cmd Run a JavaScript or TypeScript program
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @flag -q --quiet                          Suppress diagnostic output
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --watch* <FILES>                  Watch for file changes and restart process automatically.
# @option --unstable-hmr* <FILES>           Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @arg script_arg*                          Script arg
run() {
    :;
}
# }} deno run

# {{ deno bench
# @cmd Run benchmarks
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @flag -q --quiet                          Suppress diagnostic output
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @flag --json                              UNSTABLE: Output benchmark result in JSON format
# @option --ignore* <ignore>                Ignore files
# @option --filter <filter>                 Run benchmarks with this string or pattern in the bench name
# @flag --no-run                            Cache bench modules, but don't run benchmarks
# @flag --watch                             Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @arg files*                               List of file names to run
# @arg script_arg*                          Script arg
bench() {
    :;
}
# }} deno bench

# {{ deno bundle
# @cmd Bundle module and dependencies into single file
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --watch                             Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -h --help                           Print help (see a summary with '-h')
# @arg source_file!
# @arg out_file
bundle() {
    :;
}
# }} deno bundle

# {{ deno cache
# @cmd Cache the dependencies
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --check <CHECK_TYPE>              Enable type-checking.
# @flag -q --quiet                          Suppress diagnostic output
# @flag -h --help                           Print help (see a summary with '-h')
# @arg file+
cache() {
    :;
}
# }} deno cache

# {{ deno check
# @cmd Type-check the dependencies
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable                          Enable unstable features and APIs
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-fs                       Enable unstable file system APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-net                      Enable unstable net APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --all                               Type-check all code, including remote modules and npm packages
# @flag -q --quiet                          Suppress diagnostic output
# @flag -h --help                           Print help (see a summary with '-h')
# @arg file+
check() {
    :;
}
# }} deno check

# {{ deno compile
# @cmd Compile the script into a self contained executable
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @flag -q --quiet                          Suppress diagnostic output
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option --include <include>               Includes an additional module in the compiled executable's module graph.
# @option -o --output <output>              Output file (defaults to $PWD/<inferred-name>)
# @option --target[x86_64-unknown-linux-gnu|x86_64-pc-windows-msvc|x86_64-apple-darwin|aarch64-apple-darwin] <target>  Target OS architecture
# @flag --no-terminal                       Hide terminal on Windows
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @arg script_arg*                          Script arg
compile() {
    :;
}
# }} deno compile

# {{ deno completions
# @cmd Generate shell completions
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg shell![bash|fish|powershell|zsh|fig]
completions() {
    :;
}
# }} deno completions

# {{ deno coverage
# @cmd Print coverage reports
# @option --ignore* <ignore>             Ignore coverage files
# @flag --unstable                       Enable unstable features and APIs
# @option --include* <regex>             Include source files in the report
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @option --exclude* <regex>             Exclude source files from the report
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --lcov                           Output coverage report in lcov format
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @option --output <output>              Exports the coverage report in lcov format to the given file.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg files+
coverage() {
    :;
}
# }} deno coverage

# {{ deno doc
# @cmd Show documentation for a module
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable                          Enable unstable features and APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --json                              Output documentation in JSON format
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --html                              Output documentation in HTML format
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option --name <name>                     The name that will be displayed in the docs
# @flag --unstable-net                      Enable unstable net APIs
# @option --output <output>                 Directory for HTML documentation output
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --private                           Output private documentation
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @option --filter <filter>                 Dot separated path to symbol
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --lint                              Output documentation diagnostics.
# @flag -q --quiet                          Suppress diagnostic output
# @flag -h --help                           Print help (see a summary with '-h')
# @arg source_file*
doc() {
    :;
}
# }} deno doc

# {{ deno eval
# @cmd Eval script
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @flag -q --quiet                          Suppress diagnostic output
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -p --print                          print result to stdout
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @arg code_arg+                            Code arg
eval_() {
    :;
}
# }} deno eval

# {{ deno fmt
# @cmd Format source files
# @option -c --config <FILE>                   The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable                             Enable unstable features and APIs
# @flag --no-config                            Disable automatic loading of the configuration file.
# @flag --unstable-bare-node-builtins          Enable unstable bare node builtins feature
# @flag --check                                Check if the source files are formatted
# @flag --unstable-byonm                       Enable unstable 'bring your own node_modules' feature
# @option --ext[ts|tsx|js|jsx|md|json|jsonc] <ext>  Set content type of the supplied file
# @flag --unstable-workspaces                  Enable unstable 'workspaces' feature
# @option --ignore* <ignore>                   Ignore formatting particular source files
# @flag --unstable-broadcast-channel           Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                         Enable unstable FFI APIs
# @flag --watch                                Watch for file changes and restart process automatically.
# @flag --no-clear-screen                      Do not clear terminal screen when under watch mode
# @flag --unstable-fs                          Enable unstable file system APIs
# @flag --unstable-kv                          Enable unstable Key-Value store APIs
# @option --use-tabs[true|false] <use-tabs>    Use tabs instead of spaces for indentation.
# @option --line-width <line-width>            Define maximum line width.
# @flag --unstable-net                         Enable unstable net APIs
# @option --indent-width <indent-width>        Define indentation width.
# @flag --unstable-http                        Enable unstable HTTP APIs
# @option --single-quote[true|false] <single-quote>  Use single quotes.
# @flag --unstable-worker-options              Enable unstable Web Worker APIs
# @option --prose-wrap[always|never|preserve] <prose-wrap>  Define how prose should be wrapped.
# @flag --unstable-cron                        Enable unstable Deno.cron API
# @option --no-semicolons[true|false] <no-semicolons>  Don't use semicolons except where necessary.
# @flag -q --quiet                             Suppress diagnostic output
# @flag -h --help                              Print help (see a summary with '-h')
# @arg files*
fmt() {
    :;
}
# }} deno fmt

# {{ deno init
# @cmd Initialize a new project
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature [env: DENO_UNSTABLE_BARE_NODE_BUILTINS=]
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature [env: DENO_UNSTABLE_BYONM=]
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature [env: DENO_UNSTABLE_WORKSPACES=]
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help
# @arg dir
init() {
    :;
}
# }} deno init

# {{ deno info
# @cmd Show info about cache or info related to source file
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable                          Enable unstable features and APIs
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @option --location <HREF>                 Show files used for origin bound APIs like the Web Storage API when running a script with '--location=<HREF>'
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-net                      Enable unstable net APIs
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @flag --json                              UNSTABLE: Outputs the information in JSON format
# @flag -q --quiet                          Suppress diagnostic output
# @flag -h --help                           Print help (see a summary with '-h')
# @arg file
info() {
    :;
}
# }} deno info

# {{ deno install
# @cmd Install script as an executable
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag --unstable                          Enable unstable features and APIs
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-net                      Enable unstable net APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-http                     Enable unstable HTTP APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag -q --quiet                          Suppress diagnostic output
# @option --allow-read* <PATH>              Allow file system read access.
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option -n --name <name>                  Executable file name
# @option --root <root>                     Installation root
# @flag -f --force                          Forcefully overwrite existing installation
# @flag -h --help                           Print help (see a summary with '-h')
# @arg cmd+
install() {
    :;
}
# }} deno install

# {{ deno jupyter
# @cmd Deno kernel for Jupyter notebooks
# @flag --install                        Installs kernelspec, requires 'jupyter' command to be available.
# @flag --unstable                       Enable unstable features and APIs
# @flag --kernel                         Start the kernel
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature [env: DENO_UNSTABLE_BARE_NODE_BUILTINS=]
# @option --conn <conn>                  Path to JSON file describing connection parameters, provided by Jupyter
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature [env: DENO_UNSTABLE_BYONM=]
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature [env: DENO_UNSTABLE_WORKSPACES=]
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help
jupyter() {
    :;
}
# }} deno jupyter

# {{ deno uninstall
# @cmd Uninstall a script previously installed with deno install
# @option --root <root>                  Installation root
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg name![`_choice_install_bin`]
uninstall() {
    :;
}
# }} deno uninstall

# {{ deno lsp
# @cmd Start the language server
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
lsp() {
    :;
}
# }} deno lsp

# {{ deno lint
# @cmd Lint source files
# @flag --rules                          List available rules
# @flag --unstable                       Enable unstable features and APIs
# @option --rules-tags* <rules-tags>     Use set of rules with a tag
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @option --rules-include*[`_choice_lint_rule`] <rules-include>  Include lint rules
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @option --rules-exclude*[`_choice_lint_rule`] <rules-exclude>  Exclude lint rules
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --no-config                      Disable automatic loading of the configuration file.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @option -c --config <FILE>             The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @option --ignore* <ignore>             Ignore linting particular source files
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --json                           Output lint result in JSON format
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --compact                        Output lint result in compact format
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --watch                          Watch for file changes and restart process automatically.
# @flag --no-clear-screen                Do not clear terminal screen when under watch mode
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg files*
lint() {
    :;
}
# }} deno lint

# {{ deno repl
# @cmd Read Eval Print Loop
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag --unstable                          Enable unstable features and APIs
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-net                      Enable unstable net APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-http                     Enable unstable HTTP APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag -q --quiet                          Suppress diagnostic output
# @option --allow-read* <PATH>              Allow file system read access.
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --eval-file* <eval-file>          Evaluates the provided file(s) as scripts when the REPL starts.
# @option --eval <code>                     Evaluates the provided code when the REPL starts.
# @flag -h --help                           Print help (see a summary with '-h')
repl() {
    :;
}
# }} deno repl

# {{ deno task
# @cmd Run a task defined in the configuration file
# @option -c --config <FILE>             The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable                       Enable unstable features and APIs
# @option --cwd <DIR>                    Specify the directory to run the task in
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg task[`_choice_task`]
task() {
    :;
}
# }} deno task

# {{ deno test
# @cmd Run tests
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-remote                         Do not resolve remote modules
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --no-npm                            Do not resolve npm modules
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --lock-write                        Force overwriting the lock file.
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @flag -q --quiet                          Suppress diagnostic output
# @option --deny-read* <PATH>               Deny file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --deny-write* <PATH>              Deny file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --deny-net* <IP_OR_HOSTNAME>      Deny network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --deny-env* <VARIABLE_NAME>       Deny access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --deny-sys* <API_NAME>            Deny access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --deny-run* <PROGRAM_NAME>        Deny running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @option --deny-ffi* <PATH>                (Unstable) Deny loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag --deny-hrtime                       Deny high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option --ignore* <ignore>                Ignore files
# @flag --no-run                            Cache test modules, but don't run tests
# @flag --trace-ops                         Enable tracing of async ops.
# @flag --doc                               Type-check code blocks in JSDoc and Markdown
# @option --fail-fast <N>                   Stop after N errors.
# @flag --allow-none                        Don't return error code if no test files are found
# @option --filter <filter>                 Run tests with this string or pattern in the test name
# @option --shuffle <NUMBER>                Shuffle the order in which the tests are run
# @option --coverage <DIR>                  Collect coverage profile data into DIR
# @flag --parallel                          Run test modules in parallel.
# @flag --watch                             Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --junit-path <PATH>               Write a JUnit XML test report to PATH.
# @option --reporter[pretty|dot|junit|tap] <reporter>  Select reporter to use.
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @arg files*                               List of file names to run
# @arg script_arg*                          Script arg
test() {
    :;
}
# }} deno test

# {{ deno types
# @cmd Print runtime TypeScript declarations
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
types() {
    :;
}
# }} deno types

# {{ deno upgrade
# @cmd Upgrade deno executable to given version
# @flag --unstable                       Enable unstable features and APIs
# @option --version <version>            The version to upgrade to
# @option --output <output>              The path to output the updated version to
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --dry-run                        Perform all checks without replacing old exe
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag -f --force                       Replace current exe even if not out-of-date
# @flag --unstable-workspaces            Enable unstable 'workspaces' feature
# @flag --canary                         Upgrade to canary builds
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @option --cert <FILE>                  Load certificate authority from PEM encoded file
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
upgrade() {
    :;
}
# }} deno upgrade

# {{ deno vendor
# @cmd Vendor remote modules into a local directory
# @option --output <output>                 The directory to output the vendored modules to
# @flag --unstable                          Enable unstable features and APIs
# @flag -f --force                          Forcefully overwrite conflicting files in existing output directory
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable-workspaces               Enable unstable 'workspaces' feature
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @option --lock <FILE>                     Check the specified lock file.
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @flag --unstable-net                      Enable unstable net APIs
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag -q --quiet                          Suppress diagnostic output
# @flag -h --help                           Print help (see a summary with '-h')
# @arg specifiers+
vendor() {
    :;
}
# }} deno vendor

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_install_bin() {
    find ~/.deno/bin -maxdepth 1 -type f | xargs -I% basename % | grep -v '.cmd$\|^deno$'
}

_choice_lint_rule() {
    deno lint --rules --json | yq '.[] | (.docs | split("\n") | .0) as $desc | .code + "	" + $desc'
}

_choice_task() {
    _helper_find_deno_json_path
    if [[ -n "$deno_json_path" ]]; then
        cat "$deno_json_path" | yq '.tasks | keys | .[]' 
    fi
}

_helper_find_deno_json_path() {
    deno_json_path="$(_argc_util_path_search_parent deno.json deno.jsonc)"
}

command eval "$(argc --argc-eval "$0" "$@")"