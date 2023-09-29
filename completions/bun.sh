#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                             Display this help and exit.
# @flag -b --bun                              Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @option --cwd <DIR>                         Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>               Config file to load Bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>                 Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>                Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>           Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>                 "automatic" (default) or "classic"
# @option -r --preload* <STR>                 Import a module before other modules are loaded
# @option --main-fields* <STR>                Main fields to lookup in package.json.
# @flag --no-summary                          Don't print a summary (when generating .bun)
# @flag -v --version                          Print version and exit
# @flag --revision                            Print version with revision and exit
# @option --tsconfig-override <STR>           Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>                Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>                   Rewrite import URLs to start with --origin.
# @option -p --port <STR>                     Port to serve Bun's dev server on.
# @flag --smol                                Use less memory, but run garbage collection more often
# @flag --minify                              Minify (experimental)
# @flag --minify-syntax                       Minify syntax and inline data (experimental)
# @flag --minify-whitespace                   Minify whitespace (experimental)
# @flag --minify-identifiers                  Minify identifiers
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @option --target[browser|bun|node] <STR>    The intended execution environment for the bundle.
# @option --inspect <<STR>?>                  Activate Bun's Debugger
# @option --inspect-wait <<STR>?>             Activate Bun's Debugger, wait for a connection before executing
# @option --inspect-brk <<STR>?>              Activate Bun's Debugger, set breakpoint on first line of code and wait
# @flag --hot                                 Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --watch                               Automatically restart the process on file change
# @flag --no-install                          Disable auto install in the Bun runtime
# @flag -i                                    Automatically install dependencies and use global cache in Bun's runtime, equivalent to --install=fallback
# @option --install <STR>                     Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline                      Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in the Bun runtime, always checking npm
# @flag --silent                              Don't repeat the command for bun run
# @flag --dump-environment-variables          Dump environment variables from .env and process as JSON and quit.
# @flag --dump-limits                         Dump system limits.
# @arg args*[`_choice_script_or_bin`]

# {{ bun run
# @cmd Run JavaScript with Bun, a package.json script, or a bin
# @flag -h --help                             Display this help and exit.
# @flag -b --bun                              Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @option --cwd <DIR>                         Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>               Config file to load Bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>                 Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>                Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>           Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>                 "automatic" (default) or "classic"
# @option -r --preload* <STR>                 Import a module before other modules are loaded
# @option --main-fields* <STR>                Main fields to lookup in package.json.
# @flag --no-summary                          Don't print a summary (when generating .bun)
# @flag -v --version                          Print version and exit
# @flag --revision                            Print version with revision and exit
# @option --tsconfig-override <STR>           Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>                Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>                   Rewrite import URLs to start with --origin.
# @option -p --port <STR>                     Port to serve Bun's dev server on.
# @flag --smol                                Use less memory, but run garbage collection more often
# @flag --minify                              Minify (experimental)
# @flag --minify-syntax                       Minify syntax and inline data (experimental)
# @flag --minify-whitespace                   Minify whitespace (experimental)
# @flag --minify-identifiers                  Minify identifiers
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @option --target[browser|bun|node] <STR>    The intended execution environment for the bundle.
# @option --inspect <<STR>?>                  Activate Bun's Debugger
# @option --inspect-wait <<STR>?>             Activate Bun's Debugger, wait for a connection before executing
# @option --inspect-brk <<STR>?>              Activate Bun's Debugger, set breakpoint on first line of code and wait
# @flag --hot                                 Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --watch                               Automatically restart the process on file change
# @flag --no-install                          Disable auto install in the Bun runtime
# @flag -i                                    Automatically install dependencies and use global cache in Bun's runtime, equivalent to --install=fallback
# @option --install <STR>                     Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline                      Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in the Bun runtime, always checking npm
# @flag --silent                              Don't repeat the command for bun run
# @flag --dump-environment-variables          Dump environment variables from .env and process as JSON and quit.
# @flag --dump-limits                         Dump system limits.
# @arg script_or_bin[`_choice_script_or_bin`]
# @arg args*
run() {
    :;
}
# }} bun run

# {{ bun test
# @cmd Run unit tests with Bun
# @flag -h --help                             Display this help and exit.
# @flag -b --bun                              Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @option --cwd <DIR>                         Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>               Config file to load Bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>                 Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>                Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>           Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>                 "automatic" (default) or "classic"
# @option -r --preload* <STR>                 Import a module before other modules are loaded
# @option --main-fields* <STR>                Main fields to lookup in package.json.
# @flag --no-summary                          Don't print a summary (when generating .bun)
# @flag -v --version                          Print version and exit
# @flag --revision                            Print version with revision and exit
# @option --tsconfig-override <STR>           Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>                Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>                   Rewrite import URLs to start with --origin.
# @option -p --port <STR>                     Port to serve Bun's dev server on.
# @flag --smol                                Use less memory, but run garbage collection more often
# @flag --minify                              Minify (experimental)
# @flag --minify-syntax                       Minify syntax and inline data (experimental)
# @flag --minify-whitespace                   Minify whitespace (experimental)
# @flag --minify-identifiers                  Minify identifiers
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @option --target[browser|bun|node] <STR>    The intended execution environment for the bundle.
# @option --inspect <<STR>?>                  Activate Bun's Debugger
# @option --inspect-wait <<STR>?>             Activate Bun's Debugger, wait for a connection before executing
# @option --inspect-brk <<STR>?>              Activate Bun's Debugger, set breakpoint on first line of code and wait
# @flag --hot                                 Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --watch                               Automatically restart the process on file change
# @flag --no-install                          Disable auto install in the Bun runtime
# @flag -i                                    Automatically install dependencies and use global cache in Bun's runtime, equivalent to --install=fallback
# @option --install <STR>                     Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline                      Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in the Bun runtime, always checking npm
# @flag --silent                              Don't repeat the command for bun run
# @flag --dump-environment-variables          Dump environment variables from .env and process as JSON and quit.
# @flag --dump-limits                         Dump system limits.
# @option --timeout <NUMBER>                  Set the per-test timeout in milliseconds, default is 5000.
# @flag --update-snapshots                    Update snapshot files
# @option --rerun-each <NUMBER>               Re-run each test file <NUMBER> times, helps catch certain bugs
# @flag --only                                Only run tests that are marked with "test.only()"
# @flag --todo                                Include tests that are marked with "test.todo()"
# @flag --coverage                            Generate a coverage profile
# @option --bail <<NUMBER>?>                  Exit the test suite after <NUMBER> failures.
# @option -t --test-name-pattern <STR>        Run only tests with a name that matches the given regex.
test() {
    :;
}
# }} bun test

# {{ bun x
# @cmd Install and execute a package bin (bunx)
# @arg cmd!
# @arg args*
x() {
    :;
}
# }} bun x

# {{ bun repl
# @cmd Start a REPL session with Bun
repl() {
    :;
}
# }} bun repl

# {{ bun init
# @cmd Start an empty Bun project from a blank template
init() {
    :;
}
# }} bun init

# {{ bun create
# @cmd Create a new project from a template
# @alias c
# @arg pkg!
# @arg args*
create() {
    :;
}
# }} bun create

# {{ bun install
# @cmd Install dependencies for a package.json
# @alias i
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @flag -d --dev                  Add dependency to "devDependencies"
# @flag -D --development
# @flag --optional                Add dependency to "optionalDependencies"
# @flag -E --exact                Add the exact version instead of the ^range
# @arg pkg!
install() {
    :;
}
# }} bun install

# {{ bun add
# @cmd Add a dependency to package.json
# @alias a
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @flag -d --dev                  Add dependency to "devDependencies"
# @flag -D --development
# @flag --optional                Add dependency to "optionalDependencies"
# @flag -E --exact                Add the exact version instead of the ^range
# @arg pkg!
add() {
    :;
}
# }} bun add

# {{ bun remove
# @cmd Remove a dependency from package.json
# @alias rm
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @arg pkg[`_choice_dependency`]
remove() {
    :;
}
# }} bun remove

# {{ bun update
# @cmd Update outdated dependencies
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @arg pkg!
update() {
    :;
}
# }} bun update

# {{ bun link
# @cmd Link an npm package globally
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @arg pkg!
link() {
    :;
}
# }} bun link

# {{ bun unlink
# @cmd Globally unlink an npm package
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @flag --frozen-lockfile         Disallow changes to lockfile
# @flag -f --force                Always request the latest versions from the registry & reinstall all dependencies
# @option --cache-dir <PATH>      Store & load cached data from a specific directory path
# @flag --no-cache                Ignore manifest cache entirely
# @flag --silent                  Don't log anything
# @flag --verbose                 Excessively verbose logging
# @flag --no-progress             Disable the progress bar
# @flag --no-summary              Don't print a summary
# @flag --no-verify               Skip verifying integrity of newly downloaded packages
# @flag --ignore-scripts          Skip lifecycle scripts in the project's package.json (dependency scripts are never run)
# @flag -g --global               Install globally
# @option --cwd <DIR>             Set a specific cwd
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @option --link-native-bins*[esbuild|turbo] <STR>  Link "bin" from a matching platform-specific "optionalDependencies" instead.
# @flag --help                    Print this help menu
# @arg pkg!
unlink() {
    :;
}
# }} bun unlink

# {{ bun pm
# @cmd More commands for managing packages
pm() {
    :;
}

# {{{ bun pm bin
# @cmd Print the path to bin folder
# @flag -g --global    Install globally
pm::bin() {
    :;
}
# }}} bun pm bin

# {{{ bun pm ls
# @cmd List the dependency tree according to the current lockfile
# @flag --all    All installed dependencies, including nth-order dependencies.
pm::ls() {
    :;
}
# }}} bun pm ls

# {{{ bun pm cache
# @cmd Print the path to the cache folder
pm::cache() {
    :;
}

# {{{{ bun pm cache rm
# @cmd Clear Bun's global module cache
pm::cache::rm() {
    :;
}
# }}}} bun pm cache rm
# }}} bun pm cache
# }} bun pm

# {{ bun build
# @cmd Bundle TypeScript & JavaScript into a single file
# @flag -h --help                             Display this help and exit.
# @flag -b --bun                              Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)
# @option --cwd <DIR>                         Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>               Config file to load Bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>                 Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>                Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>           Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>                 "automatic" (default) or "classic"
# @option -r --preload* <STR>                 Import a module before other modules are loaded
# @option --main-fields* <STR>                Main fields to lookup in package.json.
# @flag --no-summary                          Don't print a summary (when generating .bun)
# @flag -v --version                          Print version and exit
# @flag --revision                            Print version with revision and exit
# @option --tsconfig-override <STR>           Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>                Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>                   Rewrite import URLs to start with --origin.
# @option -p --port <STR>                     Port to serve Bun's dev server on.
# @flag --smol                                Use less memory, but run garbage collection more often
# @flag --minify                              Minify (experimental)
# @flag --minify-syntax                       Minify syntax and inline data (experimental)
# @flag --minify-whitespace                   Minify whitespace (experimental)
# @flag --minify-identifiers                  Minify identifiers
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @option --target[browser|bun|node] <STR>    The intended execution environment for the bundle.
# @option --inspect <<STR>?>                  Activate Bun's Debugger
# @option --inspect-wait <<STR>?>             Activate Bun's Debugger, wait for a connection before executing
# @option --inspect-brk <<STR>?>              Activate Bun's Debugger, set breakpoint on first line of code and wait
# @flag --hot                                 Enable auto reload in the Bun runtime, test runner, or bundler
# @flag --watch                               Automatically restart the process on file change
# @flag --no-install                          Disable auto install in the Bun runtime
# @flag -i                                    Automatically install dependencies and use global cache in Bun's runtime, equivalent to --install=fallback
# @option --install <STR>                     Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline                      Skip staleness checks for packages in the Bun runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in the Bun runtime, always checking npm
# @flag --silent                              Don't repeat the command for bun run
# @option --format <STR>                      Specifies the module format to build to.
# @option --outdir <STR>                      Default to "dist" if multiple files
# @option --outfile <STR>                     Write to a file
# @option --root <STR>                        Root directory used for multiple entry points
# @flag --splitting                           Enable code splitting
# @option --public-path <STR>                 A prefix to be appended to any import paths in bundled code
# @option --sourcemap <<STR>?>                Build with sourcemaps - 'inline', 'external', or 'none'
# @option --entry-naming <STR>                Customize entry point filenames.
# @option --chunk-naming <STR>                Customize chunk filenames.
# @option --asset-naming <STR>                Customize asset filenames.
# @flag --server-components                   Enable React Server Components (experimental)
# @flag --no-bundle                           Transpile file only, do not bundle
# @flag --compile                             Generate a standalone Bun executable containing your bundled code
# @flag --dump-environment-variables          Dump environment variables from .env and process as JSON and quit.
# @flag --dump-limits                         Dump system limits.
# @arg files*
build() {
    :;
}
# }} bun build

# {{ bun upgrade
# @cmd Get the latest version of Bun
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