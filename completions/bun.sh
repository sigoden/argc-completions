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

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

_choice_script_or_bin() {
    echo __argc_value=file
    _choice_script
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"