#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
# @version 1.34.1

# @flag --unstable      Enable unstable features and APIs
# @flag -q --quiet      Suppress diagnostic output
# @flag -h --help       Print help (see a summary with '-h')
# @flag -V --version    Print version


# {{ deno bench
# @cmd Run benchmarks
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
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
# @flag -h --help                           Print help (see a summary with '-h')
# @arg files*                               List of file names to run
# @arg SCRIPT_ARG*                          Script arg
bench() {
    :;
}
# }} deno bench

# {{ deno cache
# @cmd Cache the dependencies
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --check <CHECK_TYPE>              Enable type-checking.
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
# @flag --no-npm                            Do not resolve npm modules
# @flag -q --quiet                          Suppress diagnostic output
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag --all                               Type-check all code, including remote modules and npm packages
# @flag -h --help                           Print help (see a summary with '-h')
# @arg file+
check() {
    :;
}
# }} deno check

# {{ deno compile
# @cmd UNSTABLE: Compile the script into a self contained executable
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
# @flag -A --allow-all                      Allow all permissions.
# @flag --no-prompt                         Always throw if required permission wasn't passed
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Set type-checking behavior.
# @option --include <include>               Includes an additional module in the compiled executable's module
# @option -o --output <output>              Output file (defaults to $PWD/<inferred-name>)
# @option --target[x86_64-unknown-linux-gnu|x86_64-pc-windows-msvc|x86_64-apple-darwin|aarch64-apple-darwin] <target>  Target OS architecture
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -h --help                           Print help (see a summary with '-h')
# @arg SCRIPT_ARG*                          Script arg
compile() {
    :;
}
# }} deno compile

# {{ deno completions
# @cmd Generate shell completions
# @flag --unstable    Enable unstable features and APIs
# @flag -q --quiet    Suppress diagnostic output
# @flag -h --help     Print help (see a summary with '-h')
# @arg shell![bash|fish|powershell|zsh|fig]
completions() {
    :;
}
# }} deno completions

# {{ deno coverage
# @cmd Print coverage reports
# @option --ignore* <ignore>    Ignore coverage files
# @flag --unstable              Enable unstable features and APIs
# @option --include* <regex>    Include source files in the report
# @option --exclude* <regex>    Exclude source files from the report
# @flag -q --quiet              Suppress diagnostic output
# @flag --lcov                  Output coverage report in lcov format
# @option --output <output>     Exports the coverage report in lcov format to the given file.
# @flag -h --help               Print help (see a summary with '-h')
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
# @option --lock <FILE>                     Check the specified lock file.
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-lock                           Disable auto discovery of the lock file.
# @flag --no-npm                            Do not resolve npm modules
# @flag --no-remote                         Do not resolve remote modules
# @flag --json                              Output documentation in JSON format
# @flag --private                           Output private documentation
# @flag -h --help                           Print help (see a summary with '-h')
# @arg source_file
# @arg filter                               Dot separated path to symbol
doc() {
    :;
}
# }} deno doc

# {{ deno eval
# @cmd Eval script
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --inspect <HOST_AND_PORT>         Activate inspector on host:port (default: 127.0.0.1:9229)
# @option --inspect-brk <HOST_AND_PORT>     Activate inspector on host:port, wait for debugger to connect and break at the start of user script
# @option --inspect-wait <HOST_AND_PORT>    Activate inspector on host:port and wait for debugger to connect before running user code
# @flag --cached-only                       Require that remote dependencies are already cached
# @option --location <HREF>                 Value of 'globalThis.location' used by some web APIs
# @option --v8-flags* <v8-flags>            To see a list of all available flags use --v8-flags=--help.
# @option --seed <NUMBER>                   Set the random number generator seed
# @option --check <CHECK_TYPE>              Enable type-checking.
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -p --print                          print result to stdout
# @flag -h --help                           Print help (see a summary with '-h')
# @arg CODE_ARG+                            Code arg
eval() {
    :;
}
# }} deno eval

# {{ deno fmt
# @cmd Format source files
# @option -c --config <FILE>                   The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable                             Enable unstable features and APIs
# @flag --no-config                            Disable automatic loading of the configuration file.
# @flag --check                                Check if the source files are formatted
# @flag -q --quiet                             Suppress diagnostic output
# @option --ext[ts|tsx|js|jsx|md|json|jsonc] <ext>  Set content type of the supplied file
# @option --ignore* <ignore>                   Ignore formatting particular source files
# @flag --watch                                Watch for file changes and restart process automatically.
# @flag --no-clear-screen                      Do not clear terminal screen when under watch mode
# @option --use-tabs[true|false] <use-tabs>    Use tabs instead of spaces for indentation.
# @option --line-width <line-width>            Define maximum line width.
# @option --indent-width <indent-width>        Define indentation width.
# @option --single-quote[true|false] <single-quote>  Use single quotes.
# @option --prose-wrap[always|never|preserve] <prose-wrap>  Define how prose should be wrapped.
# @option --no-semicolons[true|false] <no-semicolons>  Don't use semicolons except where necessary.
# @flag -h --help                              Print help (see a summary with '-h')
# @arg files*
fmt() {
    :;
}
# }} deno fmt

# {{ deno init
# @cmd Initialize a new project
# @flag --unstable    Enable unstable features and APIs
# @flag -q --quiet    Suppress diagnostic output
# @flag -h --help     Print help
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
# @option --location <HREF>                 Show files used for origin bound APIs like the Web Storage API when running a script with '--location=<HREF>'
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag --no-remote                         Do not resolve remote modules
# @flag --no-npm                            Do not resolve npm modules
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --lock <FILE>                     Check the specified lock file.
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @flag --json                              UNSTABLE: Outputs the information in JSON format
# @flag -h --help                           Print help (see a summary with '-h')
# @arg file
info() {
    :;
}
# }} deno info

# {{ deno install
# @cmd Install script as an executable
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
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

# {{ deno uninstall
# @cmd Uninstall a script previously installed with deno install
# @option --root <root>    Installation root
# @flag --unstable         Enable unstable features and APIs
# @flag -q --quiet         Suppress diagnostic output
# @flag -h --help          Print help (see a summary with '-h')
# @arg name![`_choice_install_bin`]
uninstall() {
    :;
}
# }} deno uninstall

# {{ deno lsp
# @cmd Start the language server
# @flag --unstable    Enable unstable features and APIs
# @flag -q --quiet    Suppress diagnostic output
# @flag -h --help     Print help (see a summary with '-h')
lsp() {
    :;
}
# }} deno lsp

# {{ deno lint
# @cmd Lint source files
# @flag --rules                         List available rules
# @flag --unstable                      Enable unstable features and APIs
# @option --rules-tags* <rules-tags>    Use set of rules with a tag
# @flag -q --quiet                      Suppress diagnostic output
# @option --rules-include*[`_choice_lint_rule`] <rules-include>  Include lint rules
# @option --rules-exclude*[`_choice_lint_rule`] <rules-exclude>  Exclude lint rules
# @flag --no-config                     Disable automatic loading of the configuration file.
# @option -c --config <FILE>            The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --ignore* <ignore>            Ignore linting particular source files
# @flag --json                          Output lint result in JSON format
# @flag --compact                       Output lint result in compact format
# @flag --watch                         Watch for file changes and restart process automatically.
# @flag --no-clear-screen               Do not clear terminal screen when under watch mode
# @flag -h --help                       Print help (see a summary with '-h')
# @arg files*
lint() {
    :;
}
# }} deno lint

# {{ deno repl
# @cmd Read Eval Print Loop
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
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

# {{ deno run
# @cmd Run a JavaScript or TypeScript program
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
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
# @flag --no-clear-screen                   Do not clear terminal screen when under watch mode
# @option --ext[ts|tsx|js|jsx] <ext>        Set content type of the supplied file
# @flag -h --help                           Print help (see a summary with '-h')
# @arg SCRIPT_ARG*                          Script arg
run() {
    :;
}
# }} deno run

# {{ deno task
# @cmd Run a task defined in the configuration file
# @option -c --config <FILE>    The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --unstable              Enable unstable features and APIs
# @option --cwd <DIR>           Specify the directory to run the task in
# @flag -q --quiet              Suppress diagnostic output
# @flag -h --help               Print help (see a summary with '-h')
# @arg TASK[`_choice_task`]
task() {
    :;
}
# }} deno task

# {{ deno test
# @cmd Run tests
# @option --no-check <NO_CHECK_TYPE>        Skip type-checking.
# @flag --unstable                          Enable unstable features and APIs
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @flag --no-remote                         Do not resolve remote modules
# @flag -q --quiet                          Suppress diagnostic output
# @flag --no-npm                            Do not resolve npm modules
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @flag --no-config                         Disable automatic loading of the configuration file.
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --lock <FILE>                     Check the specified lock file.
# @flag --lock-write                        Force overwriting the lock file.
# @flag --no-lock                           Disable auto discovery of the lock file.
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @option --allow-read* <PATH>              Allow file system read access.
# @option --allow-write* <PATH>             Allow file system write access.
# @option --allow-net* <IP_OR_HOSTNAME>     Allow network access.
# @option --unsafely-ignore-certificate-errors* <HOSTNAMES>  DANGER: Disables verification of TLS certificates
# @option --allow-env* <VARIABLE_NAME>      Allow access to system environment information.
# @option --allow-sys* <API_NAME>           Allow access to OS information.
# @option --allow-run* <PROGRAM_NAME>       Allow running subprocesses.
# @option --allow-ffi* <PATH>               (Unstable) Allow loading dynamic libraries.
# @flag --allow-hrtime                      Allow high-resolution time measurement.
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
# @flag -h --help                           Print help (see a summary with '-h')
# @arg files*                               List of file names to run
# @arg SCRIPT_ARG*                          Script arg
test() {
    :;
}
# }} deno test

# {{ deno types
# @cmd Print runtime TypeScript declarations
# @flag --unstable    Enable unstable features and APIs
# @flag -q --quiet    Suppress diagnostic output
# @flag -h --help     Print help (see a summary with '-h')
types() {
    :;
}
# }} deno types

# {{ deno upgrade
# @cmd Upgrade deno executable to given version
# @flag --unstable               Enable unstable features and APIs
# @option --version <version>    The version to upgrade to
# @option --output <output>      The path to output the updated version to
# @flag --dry-run                Perform all checks without replacing old exe
# @flag -q --quiet               Suppress diagnostic output
# @flag -f --force               Replace current exe even if not out-of-date
# @flag --canary                 Upgrade to canary builds
# @option --cert <FILE>          Load certificate authority from PEM encoded file
# @flag -h --help                Print help (see a summary with '-h')
upgrade() {
    :;
}
# }} deno upgrade

# {{ deno vendor
# @cmd Vendor remote modules into a local directory
# @option --output <output>                 The directory to output the vendored modules to
# @flag --unstable                          Enable unstable features and APIs
# @flag -f --force                          Forcefully overwrite conflicting files in existing output directory
# @flag --no-config                         Disable automatic loading of the configuration file.
# @flag -q --quiet                          Suppress diagnostic output
# @option -c --config <FILE>                The configuration file can be used to configure different aspects of deno including TypeScript, linting, and code formatting.
# @option --import-map <FILE>               Load import map file from local file or remote URL.
# @option --lock <FILE>                     Check the specified lock file.
# @option --node-modules-dir[true|false] <node-modules-dir>  Enables or disables the use of a local node_modules folder for npm packages
# @option -r --reload* <CACHE_BLOCKLIST>    Reload source code cache (recompile TypeScript)
# @option --cert <FILE>                     Load certificate authority from PEM encoded file
# @flag -h --help                           Print help (see a summary with '-h')
# @arg specifiers+
vendor() {
    :;
}
# }} deno vendor

_choice_lint_rule() {
    deno lint --rules --json | yq '.[] | (.docs | split("\n") | .0) as $desc | .code + ":" + $desc' | sed 's/:/\t/' 
}

_choice_task() {
    local config_file=$(_helper_config_file)
    if [[ -f "$config_file" ]]; then
        cat "$config_file" | yq '.tasks | keys | .[]' 
    fi
}

_choice_install_bin() {
    find ~/.deno/bin -maxdepth 1 -type f | xargs -I% basename % | grep -v '.cmd$\|^deno$'
}

_helper_config_file() {
    if [[ -n "$argc_config" ]]; then
        echo "$argc_config"
    else
        _argc_util_path_search_parent deno.json deno.jsonc
    fi
}

_argc_util_path_search_parent() {
    local cache_pwd="$PWD"
    _check() {
        local item
        for item in $@; do
            if [[ -f "$item" ]]; then
                realpath "$item"
                return 0
            fi
        done
        if [[ $PWD == "/"  ]]; then
            return 0
        fi
        return 1
    }
    until _check $@; do
        cd ..
    done
    cd "$cache_pwd"
}

command eval "$(argc --argc-eval "$0" "$@")"