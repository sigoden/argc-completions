#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    Outputs the Next.js version.
# @flag -h --help       Displays this message.

# {{ next build
# @cmd Creates an optimized production build of your application.
# @flag -d --debug                            Enables a more verbose build output.
# @flag --no-lint                             Disables linting.
# @flag --no-mangling                         Disables mangling.
# @flag --profile                             Enables production profiling for React.
# @flag --experimental-app-only               Builds only App Router routes.
# @option --experimental-build-mode <mode>    Uses an experimental build mode.
# @flag --experimental-debug-memory-usage     Enables memory profiling features to debug memory consumption.
# @flag -h --help                             Displays this message.
# @arg directory                              A directory on which to build the application.
build() {
    :;
}
# }} next build

# {{ next dev
# @cmd Next.js in development mode with hot-code reloading, error reporting, and more.
# @flag --turbo                               Starts development mode using Turbopack (beta).
# @option -p --port <port>                    Specify a port number on which to start the application.
# @option -H --hostname <hostname>            Specify a hostname on which to start the application (default: 0.0.0.0).
# @flag --experimental-https                  Starts the server with HTTPS and generates a self-signed certificate.
# @option --experimental-https-key <path>     Path to a HTTPS key file.
# @option --experimental-https-cert <path>    Path to a HTTPS certificate file.
# @option --experimental-https-ca <path>      Path to a HTTPS certificate authority file.
# @option --experimental-upload-trace <traceUrl>  Reports a subset of the debugging trace to a remote HTTP URL.
# @flag -h --help                             Displays this message.
# @arg directory                              A directory on which to build the application.
dev() {
    :;
}
# }} next dev

# {{ next info
# @cmd Prints relevant details about the current system which can be used to report Next.js bugs.
# @flag --verbose    Collects additional information for debugging.
# @flag -h --help    Displays this message.
info() {
    :;
}
# }} next info

# {{ next lint
# @cmd Runs ESLint for all files in the `/src`, `/app`, `/pages`, `/components`, and `/lib` directories.
# @option -d --dir* <dirs>                        Include directory, or directories, to run ESLint.
# @option --file* <files>                         Include file, or files, to run ESLint.
# @option --ext* <exts>                           Specify JavaScript file extensions.
# @option -c --config <config>                    Uses this configuration file, overriding all other configuration options.
# @option --resolve-plugins-relative-to <rprt>    Specify a directory where plugins should be resolved from.
# @flag --strict                                  Creates a `.eslintrc.json` file using the Next.js strict configuration.
# @option --rulesdir* <rulesdir>                  Uses additional rules from this directory(s).
# @flag --fix                                     Automatically fix linting issues.
# @option --fix-type <fixType>                    Specify the types of fixes to apply (e.g., problem, suggestion, layout).
# @option --ignore-path <path>                    Specify a file to ignore.
# @flag --no-ignore                               Disables the `--ignore-path` option.
# @flag --quiet                                   Reports errors only.
# @option --max-warnings <maxWarnings>            Specify the number of warnings before triggering a non-zero exit code.
# @option -o --output-file <outputFile>           Specify a file to write report to.
# @option -f --format <format>                    Uses a specific output format.
# @flag --no-inline-config                        Prevents comments from changing config or rules.
# @option --report-unused-disable-directives-severity[error|off|warn] <level>  Specify severity level for unused eslint-disable directives.
# @flag --no-cache                                Disables caching.
# @option --cache-location <cacheLocation>        Specify a location for cache.
# @option --cache-strategy <cacheStrategy>        Specify a strategy to use for detecting changed files in the cache.
# @flag --error-on-unmatched-pattern              Reports errors when any file patterns are unmatched.
# @flag -h --help                                 Displays this message.
# @arg directory                                  A base directory on which to lint the application.
lint() {
    :;
}
# }} next lint

# {{ next start
# @cmd Starts Next.js in production mode.
# @option -p --port <port>                         Specify a port number on which to start the application.
# @option -H --hostname <hostname>                 Specify a hostname on which to start the application (default: 0.0.0.0).
# @option --keepAliveTimeout <keepAliveTimeout>    Specify the maximum amount of milliseconds to wait before closing inactive connections.
# @flag -h --help                                  Displays this message.
# @arg directory                                   A directory on which to start the application.
start() {
    :;
}
# }} next start

# {{ next telemetry
# @cmd Allows you to enable or disable Next.js' completely anonymous telemetry collection.
# @flag --enable     Enables Next.js' telemetry collection.
# @flag --disable    Disables Next.js' telemetry collection.
# @flag -h --help    Displays this message.
telemetry() {
    :;
}
# }} next telemetry

command eval "$(argc --argc-eval "$0" "$@")"