#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag -V --version                     Print version
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs

# {{ deno run
# @cmd Run a JavaScript or TypeScript program
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --watch* <FILES>                  Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>          Exclude provided files/patterns from watch mode
# @option --unstable-hmr* <FILES>           Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag --no-code-cache                     Disable V8 code cache feature
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg script_arg*                          Script arg
run() {
    :;
}
# }} deno run

# {{ deno serve
# @cmd Run a server
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --port <port>                     The TCP port to serve on, defaulting to 8000.
# @option --host <host>                     The TCP address to serve on, defaulting to 0.0.0.0 (all interfaces).
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --watch* <FILES>                  Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>          Exclude provided files/patterns from watch mode
# @option --unstable-hmr* <FILES>           Watch for file changes and restart process automatically.
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag --no-code-cache                     Disable V8 code cache feature
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg script_arg*                          Script arg
serve() {
    :;
}
# }} deno serve

# {{ deno add
# @cmd Add dependencies
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg packages+                         List of packages to add
add() {
    :;
}
# }} deno add

# {{ deno bench
# @cmd Run benchmarks
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
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
# @option --watch-exclude* <FILES>          Exclude provided files/patterns from watch mode
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg files*                               List of file names to run
# @arg script_arg*                          Script arg
bench() {
    :;
}
# }} deno bench

# {{ deno bundle
# @cmd Bundle module and dependencies into single file
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @flag --watch                             Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>          Exclude provided files/patterns from watch mode
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg source_file!
# @arg out_file
bundle() {
    :;
}
# }} deno bundle

# {{ deno cache
# @cmd Cache the dependencies
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @option --allow-scripts* <PACKAGE>        Allow running npm lifecycle scripts for the given packages.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg file+
cache() {
    :;
}
# }} deno cache

# {{ deno check
# @cmd Type-check the dependencies
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag --all                               Type-check all code, including remote modules and npm packages
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg file+
check() {
    :;
}
# }} deno check

# {{ deno compile
# @cmd Compile the script into a self contained executable
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option --include <include>               Includes an additional module in the compiled executable's module graph.
# @option -o --output <output>              Output file (defaults to $PWD/<inferred-name>)
# @option --target[x86_64-unknown-linux-gnu|aarch64-unknown-linux-gnu|x86_64-pc-windows-msvc|x86_64-apple-darwin|aarch64-apple-darwin] <target>  Target OS architecture
# @flag --no-terminal                       Hide terminal on Windows
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg script_arg*                          Script arg
compile() {
    :;
}
# }} deno compile

# {{ deno completions
# @cmd Generate shell completions
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg shell![bash|fish|powershell|zsh|fig]
completions() {
    :;
}
# }} deno completions

# {{ deno coverage
# @cmd Print coverage reports
# @option --ignore* <ignore>             Ignore coverage files
# @option --include* <regex>             Include source files in the report
# @flag -q --quiet                       Suppress diagnostic output
# @option --exclude* <regex>             Exclude source files from the report
# @flag --lcov                           Output coverage report in lcov format
# @option --output <output>              Exports the coverage report in lcov format to the given file.
# @flag --html                           Output coverage report in HTML format in the given directory
# @flag --detailed                       Output coverage report in detailed format in the terminal.
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg files*
coverage() {
    :;
}
# }} deno coverage

# {{ deno doc
# @cmd Show documentation for a module
# @option --import-map <FILE>                Load import map file from local file or remote URL.
# @flag -q --quiet                           Suppress diagnostic output
# @option -r --reload* <CACHE_BLOCKLIST>     Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                      Check the specified lock file.
# @flag --no-lock                            Disable auto discovery of the lock file.
# @flag --no-npm                             Do not resolve npm modules
# @flag --no-remote                          Do not resolve remote modules
# @flag --json                               Output documentation in JSON format
# @flag --html                               Output documentation in HTML format
# @option --name <name>                      The name that will be displayed in the docs
# @option --category-docs <category-docs>    Path to a JSON file keyed by category and an optional value of a markdown doc
# @option --symbol-redirect-map <symbol-redirect-map>  Path to a JSON file keyed by file, with an inner map of symbol to an external link
# @flag --strip-trailing-html                Remove trailing .html from various links.
# @option --default-symbol-map <default-symbol-map>  Uses the provided mapping of default name to wanted name for usage blocks.
# @option --output <output>                  Directory for HTML documentation output
# @flag --private                            Output private documentation
# @option --filter <filter>                  Dot separated path to symbol
# @flag --lint                               Output documentation diagnostics.
# @flag -h --help                            Print help (see a summary with '-h')
# @flag --unstable                           Enable unstable features and APIs
# @flag --unstable-bare-node-builtins        Enable unstable bare node builtins feature
# @flag --unstable-byonm                     Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports            Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel         Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                      Enable unstable Deno.cron API
# @flag --unstable-ffi                       Enable unstable FFI APIs
# @flag --unstable-fs                        Enable unstable file system APIs
# @flag --unstable-http                      Enable unstable HTTP APIs
# @flag --unstable-kv                        Enable unstable Key-Value store APIs
# @flag --unstable-net                       Enable unstable net APIs
# @flag --unstable-process                   Enable unstable process APIs
# @flag --unstable-temporal                  Enable unstable Temporal API
# @flag --unstable-unsafe-proto              Enable unsafe __proto__ support.
# @flag --unstable-webgpu                    Enable unstable `WebGPU` API
# @flag --unstable-worker-options            Enable unstable Web Worker APIs
# @arg source_file*
doc() {
    :;
}
# }} deno doc

# {{ deno eval
# @cmd Eval script
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -p --print                          print result to stdout
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg code_arg+                            Code arg
eval_() {
    :;
}
# }} deno eval

# {{ deno fmt
# @cmd Format source files
# @option -c --config <FILE>                   The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                            Disable automatic loading of the configuration file.
# @flag -q --quiet                             Suppress diagnostic output
# @flag --check                                Check if the source files are formatted
# @option --ext[ts|tsx|js|jsx|md|json|jsonc|ipynb] <ext>  Set content type of the supplied file
# @option --ignore* <ignore>                   Ignore formatting particular source files
# @flag --watch                                Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>             Exclude provided files/patterns from watch mode
# @flag --no-clear-screen                      Do not clear terminal screen when under watch mode
# @option --use-tabs[true|false] <use-tabs>    Use tabs instead of spaces for indentation.
# @option --line-width <line-width>            Define maximum line width.
# @option --indent-width <indent-width>        Define indentation width.
# @option --single-quote[true|false] <single-quote>  Use single quotes.
# @option --prose-wrap[always|never|preserve] <prose-wrap>  Define how prose should be wrapped.
# @option --no-semicolons[true|false] <no-semicolons>  Don't use semicolons except where necessary.
# @flag -h --help                              Print help (see a summary with '-h')
# @flag --unstable                             Enable unstable features and APIs
# @flag --unstable-bare-node-builtins          Enable unstable bare node builtins feature
# @flag --unstable-byonm                       Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports              Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel           Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                        Enable unstable Deno.cron API
# @flag --unstable-ffi                         Enable unstable FFI APIs
# @flag --unstable-fs                          Enable unstable file system APIs
# @flag --unstable-http                        Enable unstable HTTP APIs
# @flag --unstable-kv                          Enable unstable Key-Value store APIs
# @flag --unstable-net                         Enable unstable net APIs
# @flag --unstable-process                     Enable unstable process APIs
# @flag --unstable-temporal                    Enable unstable Temporal API
# @flag --unstable-unsafe-proto                Enable unsafe __proto__ support.
# @flag --unstable-webgpu                      Enable unstable `WebGPU` API
# @flag --unstable-worker-options              Enable unstable Web Worker APIs
# @arg files*
fmt() {
    :;
}
# }} deno fmt

# {{ deno init
# @cmd Initialize a new project
# @flag --lib
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature [env: DENO_UNSTABLE_BARE_NODE_BUILTINS=]
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature [env: DENO_UNSTABLE_BYONM=]
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg dir
init() {
    :;
}
# }} deno init

# {{ deno info
# @cmd Show info about cache or info related to source file
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag -q --quiet                          Suppress diagnostic output
# @option --location <HREF>                 Show files used for origin bound APIs like the Web Storage API when running a script with '--location=<HREF>'
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @flag --json                              UNSTABLE: Outputs the information in JSON format
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg file
info() {
    :;
}
# }} deno info

# {{ deno install
# @cmd Install script as an executable
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option -n --name <name>                  Executable file name
# @option --root <root>                     Installation root
# @flag -f --force                          Forcefully overwrite existing installation
# @flag -g --global                         Install a package or script as a globally available executable
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg cmd+
install() {
    :;
}
# }} deno install

# {{ deno jupyter
# @cmd Deno kernel for Jupyter notebooks
# @flag --install                        Installs kernelspec, requires 'jupyter' command to be available.
# @flag --kernel                         Start the kernel
# @flag -q --quiet                       Suppress diagnostic output
# @option --conn <conn>                  Path to JSON file describing connection parameters, provided by Jupyter
# @flag -h --help                        Print help
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature [env: DENO_UNSTABLE_BARE_NODE_BUILTINS=]
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature [env: DENO_UNSTABLE_BYONM=]
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
jupyter() {
    :;
}
# }} deno jupyter

# {{ deno uninstall
# @cmd Uninstall a script previously installed with deno install
# @option --root <root>                  Installation root
# @flag -g --global                      Remove globally installed package or module
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg name![`_choice_install_bin`]
uninstall() {
    :;
}
# }} deno uninstall

# {{ deno lsp
# @cmd Start the language server
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
lsp() {
    :;
}
# }} deno lsp

# {{ deno lint
# @cmd Lint source files
# @flag --fix                            Fix any linting errors for rules that support it
# @flag -q --quiet                       Suppress diagnostic output
# @flag --rules                          List available rules
# @option --rules-tags* <rules-tags>     Use set of rules with a tag
# @option --rules-include*[`_choice_lint_rule`] <rules-include>  Include lint rules
# @option --rules-exclude*[`_choice_lint_rule`] <rules-exclude>  Exclude lint rules
# @flag --no-config                      Disable automatic loading of the configuration file.
# @option -c --config <FILE>             The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --ignore* <ignore>             Ignore linting particular source files
# @flag --json                           Output lint result in JSON format
# @flag --compact                        Output lint result in compact format
# @flag --watch                          Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>       Exclude provided files/patterns from watch mode
# @flag --no-clear-screen                Do not clear terminal screen when under watch mode
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg files*
lint() {
    :;
}
# }} deno lint

# {{ deno publish
# @cmd Publish the current working directory's package or workspace
# @option --token <token>                The API token to use when publishing.
# @option -c --config <FILE>             The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag -q --quiet                       Suppress diagnostic output
# @flag --no-config                      Disable automatic loading of the configuration file.
# @flag --dry-run                        Prepare the package for publishing performing all checks and validations without uploading
# @flag --allow-slow-types               Allow publishing with slow types
# @flag --allow-dirty                    Allow publishing if the repository has uncommitted changed
# @flag --no-provenance                  Disable provenance attestation.
# @option --check <CHECK_TYPE>           Set type-checking behavior.
# @option --no-check <NO_CHECK_TYPE>     Skip type-checking.
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
publish() {
    :;
}
# }} deno publish

# {{ deno repl
# @cmd Read Eval Print Loop
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag -q --quiet                          Suppress diagnostic output
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --eval-file* <eval-file>          Evaluates the provided file(s) as scripts when the REPL starts.
# @option --eval <code>                     Evaluates the provided code when the REPL starts.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
repl() {
    :;
}
# }} deno repl

# {{ deno task
# @cmd Run a task defined in the configuration file
# @option -c --config <FILE>             The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --cwd <DIR>                    Specify the directory to run the task in
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
# @arg task[`_choice_task`]
task() {
    :;
}
# }} deno task

# {{ deno test
# @cmd Run tests
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option --vendor[true|false] <vendor>     UNSTABLE: Enables or disables the use of a local vendor folder for remote modules and node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
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
# @option --frozen[true|false] <frozen>     Error out if lockfile is out of date
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option --ignore* <ignore>                Ignore files
# @flag --no-run                            Cache test modules, but don't run tests
# @flag --trace-leaks                       Enable tracing of leaks.
# @flag --doc                               Type-check code blocks in JSDoc and Markdown
# @option --fail-fast <N>                   Stop after N errors.
# @flag --allow-none                        Don't return error code if no test files are found
# @option --filter <filter>                 Run tests with this string or pattern in the test name
# @option --shuffle <NUMBER>                Shuffle the order in which the tests are run
# @option --coverage <DIR>                  Collect coverage profile data into DIR.
# @flag --clean                             Empty the temporary coverage profile data directory before running tests.
# @flag --parallel                          Run test modules in parallel.
# @flag --watch                             Watch for file changes and restart process automatically.
# @option --watch-exclude* <FILES>          Exclude provided files/patterns from watch mode
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --junit-path <PATH>               Write a JUnit XML test report to PATH.
# @option --reporter[pretty|dot|junit|tap] <reporter>  Select reporter to use.
# @option --env <FILE>                      UNSTABLE: Load environment variables from local file.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag --unstable                          Enable unstable features and APIs
# @flag --unstable-bare-node-builtins       Enable unstable bare node builtins feature
# @flag --unstable-byonm                    Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports           Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel        Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                     Enable unstable Deno.cron API
# @flag --unstable-ffi                      Enable unstable FFI APIs
# @flag --unstable-fs                       Enable unstable file system APIs
# @flag --unstable-http                     Enable unstable HTTP APIs
# @flag --unstable-kv                       Enable unstable Key-Value store APIs
# @flag --unstable-net                      Enable unstable net APIs
# @flag --unstable-process                  Enable unstable process APIs
# @flag --unstable-temporal                 Enable unstable Temporal API
# @flag --unstable-unsafe-proto             Enable unsafe __proto__ support.
# @flag --unstable-webgpu                   Enable unstable `WebGPU` API
# @flag --unstable-worker-options           Enable unstable Web Worker APIs
# @arg files*                               List of file names to run
# @arg script_arg*                          Script arg
test() {
    :;
}
# }} deno test

# {{ deno types
# @cmd Print runtime TypeScript declarations
# @flag -q --quiet                       Suppress diagnostic output
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
types() {
    :;
}
# }} deno types

# {{ deno upgrade
# @cmd Upgrade deno executable to given version
# @option --version <version>            The version to upgrade to
# @option --output <output>              The path to output the updated version to
# @flag -q --quiet                       Suppress diagnostic output
# @flag --dry-run                        Perform all checks without replacing old exe
# @flag -f --force                       Replace current exe even if not out-of-date
# @flag --canary                         Upgrade to canary builds
# @option --cert <FILE>                  Load certificate authority from PEM encoded file
# @flag -h --help                        Print help (see a summary with '-h')
# @flag --unstable                       Enable unstable features and APIs
# @flag --unstable-bare-node-builtins    Enable unstable bare node builtins feature
# @flag --unstable-byonm                 Enable unstable 'bring your own node_modules' feature
# @flag --unstable-sloppy-imports        Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing.
# @flag --unstable-broadcast-channel     Enable unstable `BroadcastChannel` API
# @flag --unstable-cron                  Enable unstable Deno.cron API
# @flag --unstable-ffi                   Enable unstable FFI APIs
# @flag --unstable-fs                    Enable unstable file system APIs
# @flag --unstable-http                  Enable unstable HTTP APIs
# @flag --unstable-kv                    Enable unstable Key-Value store APIs
# @flag --unstable-net                   Enable unstable net APIs
# @flag --unstable-process               Enable unstable process APIs
# @flag --unstable-temporal              Enable unstable Temporal API
# @flag --unstable-unsafe-proto          Enable unsafe __proto__ support.
# @flag --unstable-webgpu                Enable unstable `WebGPU` API
# @flag --unstable-worker-options        Enable unstable Web Worker APIs
upgrade() {
    :;
}
# }} deno upgrade

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