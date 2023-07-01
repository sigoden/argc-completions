#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                             Display this help and exit.
# @flag -b --bun                              Force a script or package to use Bun.js instead of Node.js (via symlinking node)
# @option --cwd <DIR>                         Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>               Config file to load bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>            Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>                 Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>                Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>           Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>                 "automatic" (default) or "classic"
# @option -r --preload* <STR>                 Import a module before other modules are loaded
# @option --main-fields* <STR>                Main fields to lookup in package.json.
# @flag --no-summary                          Don't print a summary (when generating .bun)
# @flag -v --version                          Print version and exit
# @option --tsconfig-override <STR>           Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>                  Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>                Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>                   Rewrite import URLs to start with --origin.
# @option -p --port <STR>                     Port to serve bun's dev server on.
# @flag --minify                              Minify (experimental)
# @flag --minify-syntax                       Minify syntax and inline data (experimental)
# @flag --minify-whitespace                   Minify whitespace (experimental)
# @flag --minify-identifiers                  Minify identifiers
# @flag --no-macros                           Disable macros from being executed in the bundler, transpiler and runtime
# @option --target[browser|bun|node] <STR>    The intended execution environment for the bundle.
# @flag --hot                                 Enable auto reload in bun's JavaScript runtime
# @flag --watch                               Automatically restart bun's JavaScript runtime on file change
# @flag --no-install                          Disable auto install in bun's JavaScript runtime
# @flag -i                                    Automatically install dependencies and use global cache in bun's runtime, equivalent to --install=fallback
# @option --install <STR>                     Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline                      Skip staleness checks for packages in bun's JavaScript runtime and resolve from disk
# @flag --prefer-latest                       Use the latest matching versions of packages in bun's JavaScript runtime, always checking npm
# @flag --silent                              Don't repeat the command for bun run
# @arg args*[`_choice_script_or_bin`]


# {{ bun run
# @cmd Run JavaScript with bun, a package.json script, or a bin
# @flag -h --help                      Display this help and exit.
# @flag -b --bun                       Force a script or package to use Bun.js instead of Node.js (via symlinking node)
# @option --cwd <DIR>                  Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>        Config file to load bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>     Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>          Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>         Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>    Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>          "automatic" (default) or "classic"
# @option -r --preload* <STR>          Import a module before other modules are loaded
# @option --main-fields* <STR>         Main fields to lookup in package.json.
# @flag --no-summary                   Don't print a summary (when generating .bun)
# @flag -v --version                   Print version and exit
# @option --tsconfig-override <STR>    Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>           Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>         Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>            Rewrite import URLs to start with --origin.
# @option -p --port <STR>              Port to serve bun's dev server on.
# @flag --minify                       Minify (experimental)
# @flag --minify-syntax                Minify syntax and inline data (experimental)
# @flag --minify-whitespace            Minify whitespace (experimental)
# @flag --minify-identifiers           Minify identifiers
# @flag --no-macros                    Disable macros from being executed in the bundler, transpiler and runtime
# @option --target <STR>               The intended execution environment for the bundle.
# @flag --hot                          Enable auto reload in bun's JavaScript runtime
# @flag --watch                        Automatically restart bun's JavaScript runtime on file change
# @flag --no-install                   Disable auto install in bun's JavaScript runtime
# @flag -i                             Automatically install dependencies and use global cache in bun's runtime, equivalent to --install=fallback
# @option --install <STR>              Install dependencies automatically when no node_modules are present, default: "auto".
# @flag --prefer-offline               Skip staleness checks for packages in bun's JavaScript runtime and resolve from disk
# @flag --prefer-latest                Use the latest matching versions of packages in bun's JavaScript runtime, always checking npm
# @flag --silent                       Don't repeat the command for bun run
# @arg script_or_bin[`_choice_script_or_bin`]
run() {
    :;
}
# }} bun run

# {{ bun build
# @cmd Bundle TypeScript & JavaScript into a single file
# @arg file*
build() {
    :;
}
# }} bun build

# {{ bun x
# @cmd Install and execute a package bin (bunx)
# @arg cmd!
# @arg args*
x() {
    :;
}
# }} bun x

# {{ bun init
# @cmd Start an empty Bun project from a blank template
init() {
    :;
}
# }} bun init

# {{ bun create
# @cmd Create a new project from a template
# @alias c
# @flag --force              Overwrite existing files
# @flag --no-install         Don't install node_modules
# @flag --no-git             Don't create a git repository
# @flag --verbose            Too many logs
# @flag --no-package-json    Disable package.json transforms
# @flag --open               On finish, start bun & open in-browser
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
# @option --lockfile <PATH>       Store & load a lockfile at a specific filepath
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
# @option --lockfile <PATH>       Store & load a lockfile at a specific filepath
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
# @flag -d --development          Add dependency to "devDependencies"
# @flag --optional                Add dependency to "optionalDependencies"
# @arg pkg!
add() {
    :;
}
# }} bun add

# {{ bun link
# @cmd Link an npm package globally
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @option --lockfile <PATH>       Store & load a lockfile at a specific filepath
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

# {{ bun remove
# @cmd Remove a dependency from package.json
# @alias rm
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @option --lockfile <PATH>       Store & load a lockfile at a specific filepath
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

# {{ bun unlink
# @cmd Globally unlink an npm package
# @option -c --config <<STR>?>    Load config (bunfig.toml)
# @flag -y --yarn                 Write a yarn.lock file (yarn v1)
# @flag -p --production           Don't install devDependencies
# @flag --no-save                 Don't save a lockfile
# @flag --save                    Save to package.json
# @flag --dry-run                 Don't install anything
# @option --lockfile <PATH>       Store & load a lockfile at a specific filepath
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

# {{{ bun pm hash
# @cmd Generate & print the hash of the current lockfile
pm::hash() {
    :;
}
# }}} bun pm hash

# {{{ bun pm hash-string
# @cmd Print the string used to hash the lockfile
pm::hash-string() {
    :;
}
# }}} bun pm hash-string

# {{{ bun pm hash-print
# @cmd Print the hash stored in the current lockfile
pm::hash-print() {
    :;
}
# }}} bun pm hash-print

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

# {{ bun dev
# @cmd Start a bun (frontend) Dev Server
# @flag --disable-bun.js                Disable bun.js from loading in the dev server
# @flag --disable-react-fast-refresh    Disable React Fast Refresh
# @option --bunfile <STR>               Use a .bun file (default: node_modules.bun)
# @option --server-bunfile <STR>        Use a .server.bun file (default: node_modules.server.bun)
# @option --public-dir <STR>            Top-level directory for .html files, fonts or anything external.
# @flag --disable-hmr                   Disable Hot Module Reloading (disables fast refresh too) in bun dev
# @option --use <STR>                   Choose a framework, e.g. "--use next".
# @flag -h --help                       Display this help and exit.
# @flag -b --bun                        Force a script or package to use Bun.js instead of Node.js (via symlinking node)
# @option --cwd <DIR>                   Absolute path to resolve files & entry points from.
# @option -c --config <<PATH>?>         Config file to load bun from (e.g. -c bunfig.toml
# @option --extension-order* <STR>      Defaults to: .tsx,.ts,.jsx,.js,.json
# @option --jsx-factory <STR>           Changes the function called when compiling JSX elements using the classic JSX runtime
# @option --jsx-fragment <STR>          Changes the function called when compiling JSX fragments
# @option --jsx-import-source <STR>     Declares the module specifier to be used for importing the jsx and jsxs factory functions.
# @option --jsx-runtime <STR>           "automatic" (default) or "classic"
# @option -r --preload* <STR>           Import a module before other modules are loaded
# @option --main-fields* <STR>          Main fields to lookup in package.json.
# @flag --no-summary                    Don't print a summary (when generating .bun)
# @flag -v --version                    Print version and exit
# @option --tsconfig-override <STR>     Load tsconfig from path instead of cwd/tsconfig.json
# @option -d --define* <STR>            Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development".
# @option -e --external* <STR>          Exclude module from transpilation (can use * wildcards).
# @option -l --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option -u --origin <STR>             Rewrite import URLs to start with --origin.
# @option -p --port <STR>               Port to serve bun's dev server on.
# @flag --minify                        Minify (experimental)
# @flag --minify-syntax                 Minify syntax and inline data (experimental)
# @flag --minify-whitespace             Minify whitespace (experimental)
# @flag --minify-identifiers            Minify identifiers
# @flag --no-macros                     Disable macros from being executed in the bundler, transpiler and runtime
# @option --target <STR>                The intended execution environment for the bundle.
# @flag --dump-environment-variables    Dump environment variables from .env and process as JSON and quit.
dev() {
    :;
}
# }} bun dev

# {{ bun upgrade
# @cmd Get the latest version of bun
upgrade() {
    :;
}
# }} bun upgrade

# {{ bun completions
# @cmd Install shell completions for tab-completion
# @arg dir
completions() {
    :;
}
# }} bun completions

# {{ bun discord
# @cmd Open bun's Discord server
discord() {
    :;
}
# }} bun discord

_choice_script_or_bin() {
    echo __argc_value:file
    _helper_script
}

_choice_dependency() {
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_helper_script() {
    pkg_json_path="$(_helper_pkg_json_path)"
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_pkg_json_path() {
    if [[ -v pkg_json_path ]]; then
        echo "$pkg_json_path"
    else
        pkg_json_path=$(_argc_util_path_search_parent package.json)
        echo "$pkg_json_path"
    fi
}

_argc_util_path_search_parent() {
    local pwd_="$PWD"
    local parent
    if [[ "$1" == "-p" ]]; then parent=1; shift; fi
    _check() {
        local value target
        for value in $@; do
            if [[ -f "$value" ]]; then
                target="$(realpath "$value")"
                if [[ $parent == 1 ]]; then dirname "$target"; else echo "$target"; fi
                return 0
            fi
        done
        if [[ $PWD == "/"  ]]; then return 0; fi
        return 1
    }
    until _check $@; do cd ..; done
    cd "$pwd_"
}

command eval "$(argc --argc-eval "$0" "$@")"