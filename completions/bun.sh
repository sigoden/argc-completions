#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --watch                    Automatically restart the process on file change
# @flag --hot                      Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --smol                     Use less memory, but run garbage collection more often
# @option -r --preload <module>    Import a module before other modules are loaded
# @flag --inspect                  Activate Bun's debugger
# @flag --inspect-wait             Activate Bun's debugger, wait for a connection before executing
# @flag --inspect-brk              Activate Bun's debugger, set breakpoint on first line of code and wait
# @flag --if-present               Exit without an error if the entrypoint does not exist
# @flag --no-install               Disable auto install in the Bun runtime
# @flag --install                  Configure auto-install behavior.
# @flag -i                         Auto-install dependencies during execution.
# @flag -e --eval                  Evaluate argument as a script
# @flag --prefer-offline           Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest            Use the latest matching versions of packages in the Bun runtime, always checking npm
# @option -p --port <port>         Set the default port for Bun.serve
# @flag -b --bun                   Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @flag --silent                   Don't print the script command
# @flag -v --version               Print version and exit
# @flag --revision                 Print version with revision and exit
# @option --env-file <file>        Load environment variables from the specified file(s)
# @option --cwd <dir>              Absolute path to resolve files & entry points from.
# @option -c --config <file>       Specify path to Bun config file.
# @flag -h --help                  Display this menu and exit
# @arg args*[`_choice_script_or_bin`]

# {{ bun run
# @cmd Execute a file with Bun lint  Run a package.json script
# @flag --silent                              Don't print the script command
# @flag -b --bun                              Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @flag --watch                               Automatically restart the process on file change
# @flag --hot                                 Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --smol                                Use less memory, but run garbage collection more often
# @option -r --preload <module>               Import a module before other modules are loaded
# @flag --inspect                             Activate Bun's debugger
# @flag --inspect-wait                        Activate Bun's debugger, wait for a connection before executing
# @flag --inspect-brk                         Activate Bun's debugger, set breakpoint on first line of code and wait
# @flag --if-present                          Exit without an error if the entrypoint does not exist
# @flag --no-install                          Disable auto install in the Bun runtime
# @flag --install                             Configure auto-install behavior.
# @flag -i                                    Auto-install dependencies during execution.
# @flag -e --eval                             Evaluate argument as a script
# @flag --prefer-offline                      Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in the Bun runtime, always checking npm
# @option -p --port <port>                    Set the default port for Bun.serve
# @flag --main-fields                         Main fields to lookup in package.json.
# @option --extension-order <exts>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --tsconfig-override <file>          Specify custom tsconfig.json.
# @option -d --define* <k:v>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <.ext:loader>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @flag --jsx-factory                         Changes the function called when compiling JSX elements using the classic JSX runtime
# @flag --jsx-fragment                        Changes the function called when compiling JSX fragments
# @flag --jsx-import-source                   Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime[automatic|classic]    "automatic" (default) or "classic"
# @option --env-file <file>                   Load environment variables from the specified file(s)
# @option --cwd <dir>                         Absolute path to resolve files & entry points from.
# @option -c --config <file>                  Specify path to Bun config file.
# @flag -h --help                             Display this menu and exit
# @arg script_or_bin[`_choice_script_or_bin`]
# @arg args*
run() {
    :;
}
# }} bun run

# {{ bun test
# @cmd Run unit tests with Bun
# @option --timeout <value>       Set the per-test timeout in milliseconds, default is 5000.
# @flag --update-snapshots        Update snapshot files
# @flag --rerun-each              Re-run each test file <NUMBER> times, helps catch certain bugs
# @flag --only                    Only run tests that are marked with "test.only()"
# @flag --todo                    Include tests that are marked with "test.todo()"
# @flag --coverage                Generate a coverage profile
# @flag --bail                    Exit the test suite after <NUMBER> failures.
# @flag -t --test-name-pattern    Run only tests with a name that matches the given regex.
# @arg pattern*
test() {
    :;
}
# }} bun test

# {{ bun x
# @cmd Execute a package binary (CLI), installing if needed (bunx)
x() {
    :;
}
# }} bun x

# {{ bun repl
# @cmd Start a REPL session with Bun
# @flag -h --help               Display this message.
# @option -p --print <value>    Evaluates given code, prints result and exits.
# @option -e --eval <value>     Evaluates given code and silently exits.
# @flag --sloppy                Runs the REPL in sloppy mode.
repl() {
    :;
}
# }} bun repl

# {{ bun install
# @cmd Install dependencies for a package.json
# @alias i
# @option -c --config <file>                      Specify path to config file (bunfig.toml)
# @flag -y --yarn                                 Write a yarn.lock file (yarn v1)
# @flag -p --production                           Don't install devDependencies
# @flag --no-save                                 Don't update package.json or save a lockfile
# @flag --save                                    Save to package.json (true by default)
# @flag --dry-run                                 Don't install anything
# @flag --frozen-lockfile                         Disallow changes to lockfile
# @flag -f --force                                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <dir>                       Store & load cached data from a specific directory path
# @flag --no-cache                                Ignore manifest cache entirely
# @flag --silent                                  Don't log anything
# @flag --verbose                                 Excessively verbose logging
# @flag --no-progress                             Disable the progress bar
# @flag --no-summary                              Don't print a summary
# @flag --no-verify                               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts                          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global                               Install globally
# @option --cwd <dir>                             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile]    Platform-specific optimizations for installing dependencies.
# @option --link-native-bins[esbuild|turbo] <value>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                                    Print this help menu
# @flag -d --dev                                  Add dependency to "devDependencies"
# @flag --optional                                Add dependency to "optionalDependencies"
# @flag -E --exact                                Add the exact version instead of the ^range
# @arg pkg*
install() {
    :;
}
# }} bun install

# {{ bun add
# @cmd Add a dependency to package.json
# @alias a
# @option -c --config <file>                      Specify path to config file (bunfig.toml)
# @flag -y --yarn                                 Write a yarn.lock file (yarn v1)
# @flag -p --production                           Don't install devDependencies
# @flag --no-save                                 Don't update package.json or save a lockfile
# @flag --save                                    Save to package.json (true by default)
# @flag --dry-run                                 Don't install anything
# @flag --frozen-lockfile                         Disallow changes to lockfile
# @flag -f --force                                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <dir>                       Store & load cached data from a specific directory path
# @flag --no-cache                                Ignore manifest cache entirely
# @flag --silent                                  Don't log anything
# @flag --verbose                                 Excessively verbose logging
# @flag --no-progress                             Disable the progress bar
# @flag --no-summary                              Don't print a summary
# @flag --no-verify                               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts                          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global                               Install globally
# @option --cwd <dir>                             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile]    Platform-specific optimizations for installing dependencies.
# @option --link-native-bins[esbuild|turbo] <value>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                                    Print this help menu
# @flag -d --dev                                  Add dependency to "devDependencies"
# @flag --optional                                Add dependency to "optionalDependencies"
# @flag -E --exact                                Add the exact version instead of the ^range
# @arg pkg*
add() {
    :;
}
# }} bun add

# {{ bun remove
# @cmd Remove a dependency from package.json
# @alias rm
# @option -c --config <file>                      Specify path to config file (bunfig.toml)
# @flag -y --yarn                                 Write a yarn.lock file (yarn v1)
# @flag -p --production                           Don't install devDependencies
# @flag --no-save                                 Don't update package.json or save a lockfile
# @flag --save                                    Save to package.json (true by default)
# @flag --dry-run                                 Don't install anything
# @flag --frozen-lockfile                         Disallow changes to lockfile
# @flag -f --force                                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <dir>                       Store & load cached data from a specific directory path
# @flag --no-cache                                Ignore manifest cache entirely
# @flag --silent                                  Don't log anything
# @flag --verbose                                 Excessively verbose logging
# @flag --no-progress                             Disable the progress bar
# @flag --no-summary                              Don't print a summary
# @flag --no-verify                               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts                          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global                               Install globally
# @option --cwd <dir>                             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile]    Platform-specific optimizations for installing dependencies.
# @option --link-native-bins[esbuild|turbo] <value>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                                    Print this help menu
# @arg package[`_choice_dependency`]
remove() {
    :;
}
# }} bun remove

# {{ bun update
# @cmd Update outdated dependencies
# @option -c --config <file>                      Specify path to config file (bunfig.toml)
# @flag -y --yarn                                 Write a yarn.lock file (yarn v1)
# @flag -p --production                           Don't install devDependencies
# @flag --no-save                                 Don't update package.json or save a lockfile
# @flag --save                                    Save to package.json (true by default)
# @flag --dry-run                                 Don't install anything
# @flag --frozen-lockfile                         Disallow changes to lockfile
# @flag -f --force                                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <dir>                       Store & load cached data from a specific directory path
# @flag --no-cache                                Ignore manifest cache entirely
# @flag --silent                                  Don't log anything
# @flag --verbose                                 Excessively verbose logging
# @flag --no-progress                             Disable the progress bar
# @flag --no-summary                              Don't print a summary
# @flag --no-verify                               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts                          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global                               Install globally
# @option --cwd <dir>                             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile]    Platform-specific optimizations for installing dependencies.
# @option --link-native-bins[esbuild|turbo] <value>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                                    Print this help menu
# @flag -d --dev                                  Add dependency to "devDependencies"
# @flag --optional                                Add dependency to "optionalDependencies"
# @flag -E --exact                                Add the exact version instead of the ^range
update() {
    :;
}
# }} bun update

# {{ bun link
# @cmd Register or link a local npm package
# @option -c --config <file>                      Specify path to config file (bunfig.toml)
# @flag -y --yarn                                 Write a yarn.lock file (yarn v1)
# @flag -p --production                           Don't install devDependencies
# @flag --no-save                                 Don't update package.json or save a lockfile
# @flag --save                                    Save to package.json (true by default)
# @flag --dry-run                                 Don't install anything
# @flag --frozen-lockfile                         Disallow changes to lockfile
# @flag -f --force                                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <dir>                       Store & load cached data from a specific directory path
# @flag --no-cache                                Ignore manifest cache entirely
# @flag --silent                                  Don't log anything
# @flag --verbose                                 Excessively verbose logging
# @flag --no-progress                             Disable the progress bar
# @flag --no-summary                              Don't print a summary
# @flag --no-verify                               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts                          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global                               Install globally
# @option --cwd <dir>                             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile]    Platform-specific optimizations for installing dependencies.
# @option --link-native-bins[esbuild|turbo] <value>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                                    Print this help menu
# @arg package[`_choice_dependency`]
link() {
    :;
}
# }} bun link

# {{ bun unlink
# @cmd Unregister a local npm package
unlink() {
    :;
}
# }} bun unlink

# {{ bun pm
# @cmd Additional package management utilities
pm() {
    :;
}

# {{{ bun pm bin
# @cmd print the path to bin folder
pm::bin() {
    :;
}
# }}} bun pm bin

# {{{ bun pm ls
# @cmd list the dependency tree according to the current lockfile
pm::ls() {
    :;
}
# }}} bun pm ls

# {{{ bun pm hash
# @cmd generate & print the hash of the current lockfile
pm::hash() {
    :;
}
# }}} bun pm hash

# {{{ bun pm hash-string
# @cmd print the string used to hash the lockfile
pm::hash-string() {
    :;
}
# }}} bun pm hash-string

# {{{ bun pm hash-print
# @cmd print the hash stored in the current lockfile
pm::hash-print() {
    :;
}
# }}} bun pm hash-print

# {{{ bun pm cache
# @cmd print the path to the cache folder
pm::cache() {
    :;
}
# }}} bun pm cache

# {{{ bun pm rm
# @cmd clear the cache
pm::rm() {
    :;
}
# }}} bun pm rm

# {{{ bun pm migrate
# @cmd migrate another package manager's lockfile without installing anything
pm::migrate() {
    :;
}
# }}} bun pm migrate
# }} bun pm

# {{ bun build
# @cmd Bundle TypeScript & JavaScript into a single file
# @flag --compile                                 Generate a standalone Bun executable containing your bundled code
# @flag --watch                                   Automatically restart the process on file change
# @option --target[browser|bun|node]              The intended execution environment for the bundle.
# @option --outdir <dir>                          Default to "dist" if multiple files
# @option --outfile <dir>                         Write to a file
# @option --sourcemap[inline|external|none]       Build with sourcemaps - 'inline', 'external', or 'none'
# @option --format <value>                        Specifies the module format to build to.
# @option --root <dir>                            Root directory used for multiple entry points
# @flag --splitting                               Enable code splitting
# @option --public-path <value>                   A prefix to be appended to any import paths in bundled code
# @option -e --external*[`_choice_dependency`]    Exclude module from transpilation (can use * wildcards).
# @option --entry-naming <value>                  Customize entry point filenames.
# @option --chunk-naming <value>                  Customize chunk filenames.
# @option --asset-naming <value>                  Customize asset filenames.
# @flag --server-components                       Enable React Server Components (experimental)
# @flag --no-bundle                               Transpile file only, do not bundle
# @flag --minify                                  Enable all minification flags
# @flag --minify-syntax                           Minify syntax and inline data
# @flag --minify-whitespace                       Minify whitespace
# @flag --minify-identifiers                      Minify identifiers
# @arg files*
build() {
    :;
}
# }} bun build

# {{ bun init
# @cmd Start an empty Bun project from a blank template
# @flag --help      Print this menu
# @flag -y --yes    Accept all default options
# @arg entrypoint*
init() {
    :;
}
# }} bun init

# {{ bun create
# @cmd Create a new project from a template
# @alias c
# @arg template!
# @arg dest
create() {
    :;
}
# }} bun create

# {{ bun upgrade
# @cmd Upgrade to latest version of Bun.
upgrade() {
    :;
}
# }} bun upgrade

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_script_or_bin() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_script
}

_choice_dependency() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_script() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"