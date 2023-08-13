#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project

# {{ gatsby develop
# @cmd Start development server.
# @flag --verbose                              Turn on verbose output
# @flag --no-color                             Turn off the color in output
# @flag --no-colors                            Turn off the color in output
# @flag --json                                 Turn on the JSON logger
# @option -H --host <string>                   Set host.
# @option -p --port <string>                   Set port.
# @flag -o --open                              Open the site in your (default) browser for you.
# @flag -S --https                             Use HTTPS.
# @option -c --cert-file <file>                Custom HTTPS cert file (also required: --https, --key-file).
# @option -k --key-file <file>                 Custom HTTPS key file (also required: --https, --cert-file).
# @option --ca-file <file>                     Custom HTTPS CA certificate file (also required: --https, --cert-file, --key-file).
# @flag --graphql-tracing                      Trace every graphql resolver, may have performance implications
# @option --open-tracing-config-file <file>    Tracer configuration file (OpenTracing compatible).
# @option --inspect <number>                   Opens a port for debugging.
# @option --inspect-brk <number>               Opens a port for debugging.
# @flag -h --help                              Show help
# @flag -v --version                           Show the version of the Gatsby CLI and the Gatsby package in the current project
develop() {
    :;
}
# }} gatsby develop

# {{ gatsby build
# @cmd Build a Gatsby project.
# @flag --verbose                              Turn on verbose output
# @flag --no-color                             Turn off the color in output
# @flag --no-colors                            Turn off the color in output
# @flag --json                                 Turn on the JSON logger
# @flag --prefix-paths                         Build site with link paths prefixed with the pathPrefix value in gatsby-config.js.
# @flag --no-uglify                            Build site without uglifying JS bundles (for debugging).
# @flag --profile                              Build site with react profiling (this can add some additional overhead).
# @flag --graphql-tracing                      Trace every graphql resolver, may have performance implications
# @option --open-tracing-config-file <file>    Tracer configuration file (OpenTracing compatible).
# @flag -h --help                              Show help
# @flag -v --version                           Show the version of the Gatsby CLI and the Gatsby package in the current project
build() {
    :;
}
# }} gatsby build

# {{ gatsby serve
# @cmd Serve previously built Gatsby site.
# @flag --verbose                              Turn on verbose output
# @flag --no-color                             Turn off the color in output
# @flag --no-colors                            Turn off the color in output
# @flag --json                                 Turn on the JSON logger
# @option -H --host <string>                   Set host.
# @option -p --port <string>                   Set port.
# @flag -o --open                              Open the site in your (default) browser for you.
# @flag --prefix-paths                         Serve site with link paths prefixed with the pathPrefix value in gatsby-config.js.Default is env.PREFIX_PATHS or false.
# @option --open-tracing-config-file <file>    Tracer configuration file (OpenTracing compatible).
# @flag -h --help                              Show help
# @flag -v --version                           Show the version of the Gatsby CLI and the Gatsby package in the current project
serve() {
    :;
}
# }} gatsby serve

# {{ gatsby info
# @cmd Get environment information for debugging and issue reporting
# @flag --verbose         Turn on verbose output
# @flag --no-color        Turn off the color in output
# @flag --no-colors       Turn off the color in output
# @flag --json            Turn on the JSON logger
# @flag -C --clipboard    Automagically copy environment information to clipboard
# @flag -h --help         Show help
# @flag -v --version      Show the version of the Gatsby CLI and the Gatsby package in the current project
info() {
    :;
}
# }} gatsby info

# {{ gatsby clean
# @cmd Wipe the local gatsby environment including built assets and cache
# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project
clean() {
    :;
}
# }} gatsby clean

# {{ gatsby repl
# @cmd Get a node repl with context of Gatsby environment, see (https://www.gatsbyjs.com/docs/gatsby-repl/)
# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project
repl() {
    :;
}
# }} gatsby repl

# {{ gatsby plugin
# @cmd Useful commands relating to Gatsby plugins
# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project
# @arg cmd[docs|ls]     Valid commands include `docs`, `ls`.
plugin() {
    :;
}
# }} gatsby plugin

# {{ gatsby new
# @cmd Create new Gatsby project.
# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project
# @arg rootpath
# @arg starter
new() {
    :;
}
# }} gatsby new

# {{ gatsby telemetry
# @cmd Enable or disable Gatsby anonymous analytics collection.
# @flag --verbose       Turn on verbose output
# @flag --no-color      Turn off the color in output
# @flag --no-colors     Turn off the color in output
# @flag --json          Turn on the JSON logger
# @flag --enable        Enable telemetry (default)
# @flag --disable       Disable telemetry
# @flag -h --help       Show help
# @flag -v --version    Show the version of the Gatsby CLI and the Gatsby package in the current project
telemetry() {
    :;
}
# }} gatsby telemetry

# {{ gatsby options
# @cmd View or set your gatsby-cli configuration settings.
# @flag --verbose                 Turn on verbose output
# @flag --no-color                Turn off the color in output
# @flag --no-colors               Turn off the color in output
# @flag --json                    Turn on the JSON logger
# @flag -h --help                 Show help
# @flag -v --version              Show the version of the Gatsby CLI and the Gatsby package in the current project
# @arg cmd[set]                   Configure your package manager.
# @arg key[pm|package-manager]    Set the package manager `gatsby new` is using.
# @arg value[npm|yarn]            Set package manager as `npm` or `yarn`.
options() {
    :;
}
# }} gatsby options

command eval "$(argc --argc-eval "$0" "$@")"