#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    Version number
# @flag -h --help       Displays this message

# {{ next build
# @cmd
# @flag --profile                  Can be used to enable React Production Profiling
# @flag --no-lint                  Disable linting
# @flag --no-mangling              Disable mangling
# @flag --experimental-app-only    Only build 'app' routes
# @flag --experimental-turbo       Enable experimental turbo mode
# @flag -h --help                  Displays this message
build() {
    :;
}
# }} next build

# {{ next start
# @cmd
# @flag -p --port             A port number on which to start the application
# @flag -H --hostname         Hostname on which to start the application (default: 0.0.0.0)
# @flag --keepAliveTimeout    Max milliseconds to wait before closing inactive connections
# @flag -h --help             Displays this message
start() {
    :;
}
# }} next start

# {{ next export
# @cmd
export() {
    :;
}
# }} next export

# {{ next dev
# @cmd
# @flag -p --port        A port number on which to start the application
# @flag -H --hostname    Hostname on which to start the application (default: 0.0.0.0)
# @option --experimental-upload-trace <trace-url>  [EXPERIMENTAL] Report a subset of the debugging trace to a remote http url.
# @flag -h --help        Displays this message
dev() {
    :;
}
# }} next dev

# {{ next lint
# @cmd
# @flag -h --help                                 List this help
# @option -d --dir* <dir>                         Include directory, or directories, to run ESLint - default: 'pages', 'components', and 'lib'
# @option --file* <file>                          Include file, or files, to run ESLint
# @option -c --config <path>                      Use this configuration file, overriding all other config options
# @option --ext <file]>                           Specify JavaScript file extensions - default: .js, .mjs, .cjs, .jsx, .ts, .mts, .cts, .tsx
# @option --resolve-plugins-relative-to <path>    A folder where plugins should be resolved from, CWD by default
# @flag --strict                                  Creates an .eslintrc.json file using the Next.js strict configuration (only possible if no .eslintrc.json file is present)
# @option --rulesdir <path>                       Use additional rules from this directory
# @flag --fix                                     Automatically fix problems
# @option --fix-type*[problem|suggestion|layout] <string>  Specify the types of fixes to apply
# @option --ignore-path <path>                    Specify path of ignore file
# @flag --no-ignore                               Disable use of ignore files and patterns
# @flag --quiet                                   Report errors only - default: false
# @option --max-warnings <Int>                    Number of warnings to trigger nonzero exit code - default: -1
# @option -o --output-file <path>                 Specify file to write report to
# @option -f --format <String>                    Use a specific output format - default: Next.js custom formatter
# @flag --no-inline-config                        Prevent comments from changing config or rules
# @option --report-unused-disable-directives[error|warn|off]  Adds reported errors for unused eslint-disable directives
# @flag --no-cache                                Disable caching
# @option --cache-location <path>                 Path to the cache file or directory - default: .eslintcache
# @option --cache-strategy <file>                 Strategy to use for detecting changed files in the cache, either metadata or content - default: metadata
# @flag --error-on-unmatched-pattern              Show errors when any file patterns are unmatched - default: false
lint() {
    :;
}
# }} next lint

# {{ next telemetry
# @cmd
# @flag --enable     Enables Next.js' telemetry collection
# @flag --disable    Disables Next.js' telemetry collection
# @flag -h --help    Displays this message
telemetry() {
    :;
}
# }} next telemetry

# {{ next info
# @cmd
# @flag -h --help    Displays this message
# @flag --verbose    Collect additional information for debugging
info() {
    :;
}
# }} next info

# {{ next experimental-compile
# @cmd
# @flag --profile                  Can be used to enable React Production Profiling
# @flag --no-lint                  Disable linting
# @flag --no-mangling              Disable mangling
# @flag --experimental-app-only    Only build 'app' routes
# @flag --experimental-turbo       Enable experimental turbo mode
# @flag -h --help                  Displays this message
experimental-compile() {
    :;
}
# }} next experimental-compile

# {{ next experimental-generate
# @cmd
# @flag --profile                  Can be used to enable React Production Profiling
# @flag --no-lint                  Disable linting
# @flag --no-mangling              Disable mangling
# @flag --experimental-app-only    Only build 'app' routes
# @flag --experimental-turbo       Enable experimental turbo mode
# @flag -h --help                  Displays this message
experimental-generate() {
    :;
}
# }} next experimental-generate

command eval "$(argc --argc-eval "$0" "$@")"