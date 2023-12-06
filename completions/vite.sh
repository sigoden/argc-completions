#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --host <host>            specify hostname
# @option --port <port>            specify port
# @option --open <path>            open browser on startup
# @flag --cors                     enable CORS
# @flag --strictPort               exit if specified port is already in use
# @flag --force                    force the optimizer to ignore the cache and re-bundle
# @option -c --config <file>       use specified config file
# @option --base <path>            public base path (default: /)
# @option -l --logLevel <level>    info | warn | error | silent
# @flag --clearScreen              allow/disable clear screen when logging
# @option -d --debug <feat>        show debug logs
# @option -f --filter <filter>     filter debug logs
# @option -m --mode <mode>         set env mode
# @flag -h --help                  Display this message
# @flag -v --version               Display version number
# @arg root-path

# {{ vite build
# @cmd build for production
# @option --target <target>               transpile target (default: 'modules')
# @option --outDir <dir>                  output directory (default: dist)
# @option --assetsDir <dir>               directory under outDir to place assets in (default: assets)
# @option --assetsInlineLimit <number>    static asset base64 inline threshold in bytes (default: 4096)
# @option --ssr <entry>                   build specified entry for server-side rendering
# @option --sourcemap <output>            [boolean | "inline" | "hidden"] output source maps for build (default: false)
# @option --minify <minifier>             [boolean | "terser" | "esbuild"] enable/disable minification, or specify minifier to use (default: esbuild)
# @option --manifest <name>               emit build manifest json
# @option --ssrManifest <name>            emit ssr manifest json
# @flag --force                           force the optimizer to ignore the cache and re-bundle (experimental)
# @flag --emptyOutDir                     force empty outDir when it's outside of root
# @flag -w --watch                        rebuilds when modules have changed on disk
# @option -c --config <file>              use specified config file
# @option --base <path>                   public base path (default: /)
# @option -l --logLevel <level>           info | warn | error | silent
# @flag --clearScreen                     allow/disable clear screen when logging
# @option -d --debug <feat>               show debug logs
# @option -f --filter <filter>            filter debug logs
# @option -m --mode <mode>                set env mode
# @flag -h --help                         Display this message
# @arg root-path
build() {
    :;
}
# }} vite build

# {{ vite optimize
# @cmd pre-bundle dependencies
# @flag --force                    force the optimizer to ignore the cache and re-bundle
# @option -c --config <file>       use specified config file
# @option --base <path>            public base path (default: /)
# @option -l --logLevel <level>    info | warn | error | silent
# @flag --clearScreen              allow/disable clear screen when logging
# @option -d --debug <feat>        show debug logs
# @option -f --filter <filter>     filter debug logs
# @option -m --mode <mode>         set env mode
# @flag -h --help                  Display this message
# @arg root-path
optimize() {
    :;
}
# }} vite optimize

# {{ vite preview
# @cmd locally preview production build
# @option --host <host>            specify hostname
# @option --port <port>            specify port
# @flag --strictPort               exit if specified port is already in use
# @option --open <path>            open browser on startup
# @option --outDir <dir>           output directory (default: dist)
# @option -c --config <file>       use specified config file
# @option --base <path>            public base path (default: /)
# @option -l --logLevel <level>    info | warn | error | silent
# @flag --clearScreen              allow/disable clear screen when logging
# @option -d --debug <feat>        show debug logs
# @option -f --filter <filter>     filter debug logs
# @option -m --mode <mode>         set env mode
# @flag -h --help                  Display this message
# @arg root-path
preview() {
    :;
}
# }} vite preview

command eval "$(argc --argc-eval "$0" "$@")"