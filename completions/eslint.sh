#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --no-config-lookup                    Disable look up for eslint.config.js
# @option -c --config <path::String>          Use this configuration instead of eslint.config.js, eslint.config.mjs, or eslint.config.cjs
# @flag --inspect-config                      Open the config inspector with the current configuration
# @option --global <String>                   Define global variables
# @option --parser <String>                   Specify the parser to be used
# @option --parser-options <Object>           Specify parser options
# @option --plugin <String>                   Specify plugins
# @option --rule <Object>                     Specify rules
# @flag --fix                                 Automatically fix problems
# @flag --fix-dry-run                         Automatically fix problems without saving the changes to the file system
# @option --fix-type[directive|problem|suggestion|layout] <Array>  Specify the types of fixes to apply
# @flag --no-ignore                           Disable use of ignore files and patterns
# @option --ignore-pattern <String>           Patterns of files to ignore
# @flag --stdin                               Lint code provided on <STDIN> - default: false
# @option --stdin-filename <String>           Specify filename to process STDIN as
# @flag --quiet                               Report errors only - default: false
# @option --max-warnings <Int>                Number of warnings to trigger nonzero exit code - default: -1
# @option -o --output-file <path::String>     Specify file to write report to
# @option -f --format <String>                Use a specific output format - default: stylish
# @flag --color                               Force enabling/disabling of color
# @flag --no-color                            Force enabling/disabling of color
# @flag --no-inline-config                    Prevent comments from changing config or rules
# @flag --report-unused-disable-directives    Adds reported errors for unused eslint-disable and eslint-enable directives
# @option --report-unused-disable-directives-severity <String>  Chooses severity level for reporting unused eslint-disable and eslint-enable directives - either: off, warn, error, 0, 1, or 2
# @flag --cache                               Only check changed files - default: false
# @option --cache-file <path::String>         Path to the cache file.
# @option --cache-location <path::String>     Path to the cache file or directory
# @option --cache-strategy <String>           Strategy to use for detecting changed files in the cache - either: metadata or content - default: metadata
# @flag --init                                Run config initialization wizard - default: false
# @flag --env-info                            Output execution environment information - default: false
# @flag --no-error-on-unmatched-pattern       Prevent errors when pattern is unmatched
# @flag --exit-on-fatal-error                 Exit with exit code 2 in case of fatal error - default: false
# @flag --no-warn-ignored                     Suppress warnings when the file list includes ignored files
# @flag --pass-on-no-patterns                 Exit with exit code 0 in case no file patterns are passed
# @flag --debug                               Output debugging information
# @flag -h --help                             Show help
# @flag -v --version                          Output the version number
# @option --print-config <path::String>       Print the configuration for the given file
# @flag --stats                               Add statistics to the lint report - default: false
# @option --flag <String>                     Enable a feature flag

command eval "$(argc --argc-eval "$0" "$@")"