#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --check                               Check if the given files are formatted, print a human-friendly summary message and paths to unformatted files (see also --list-different).
# @flag -l --list-different                      Print the names of files that are different from Prettier's formatting (see also --check).
# @flag -w --write                               Edit files in-place.
# @option --arrow-parens <always|avoid>          Include parentheses around a sole arrow function parameter.
# @flag --bracket-same-line                      Put > of opening tags on the last line instead of on a new line.
# @flag --no-bracket-spacing                     Do not print spaces between brackets.
# @option --embedded-language-formatting <auto|off>  Control how Prettier formats quoted code embedded in the file.
# @option --end-of-line[lf|crlf|cr|auto]         Which end of line characters to apply.
# @flag --no-experimental-ternaries              Default behavior of ternaries; keep question marks on the same line as the consequent.
# @option --html-whitespace-sensitivity[css|strict|ignore]  How to handle whitespaces in HTML.
# @flag --jsx-single-quote                       Use single quotes in JSX.
# @option --parser[flow|babel|babel-flow|babel-ts|typescript|acorn|espree|meriyah|css|less|scss|json|json5|json-stringify|graphql|markdown|mdx|vue|yaml|glimmer|html|angular|lwc]  Which parser to use.
# @option --print-width <int>                    The line length where Prettier will try wrap.
# @option --prose-wrap[always|never|preserve]    How to wrap prose.
# @option --quote-props[as-needed|consistent|preserve]  Change when properties in objects are quoted.
# @flag --no-semi                                Do not print semicolons, except at the beginning of lines which may need them.
# @flag --single-attribute-per-line              Enforce single attribute per line in HTML, Vue and JSX.
# @flag --single-quote                           Use single quotes instead of double quotes.
# @option --tab-width <int>                      Number of spaces per indentation level.
# @option --trailing-comma[all|es5|none]         Print trailing commas wherever possible when multi-line.
# @flag --use-tabs                               Indent with tabs instead of spaces.
# @flag --vue-indent-script-and-style            Indent script and style tags in Vue files.
# @option --config <path>                        Path to a Prettier configuration file (.prettierrc, package.json, prettier.config.js).
# @flag --no-config                              Do not look for a configuration file.
# @option --config-precedence[cli-override|file-override|prefer-file]  Define in which order config files and CLI options should be evaluated.
# @flag --no-editorconfig                        Don't take .editorconfig into account when parsing configuration.
# @option --find-config-path <path>              Find and print the path to a configuration file for the given input file.
# @option --ignore-path <path>                   Path to a file with patterns describing files to ignore.
# @option --plugin <path>                        Add a plugin.
# @flag --with-node-modules                      Process files inside 'node_modules' directory.
# @option --cursor-offset <int>                  Print (to stderr) where a cursor at the given position would move to after formatting.
# @option --range-end <int>                      Format code ending at a given character offset (exclusive).
# @option --range-start <int>                    Format code starting at a given character offset.
# @flag --cache                                  Only format changed files.
# @option --cache-location <path>                Path to the cache file.
# @option --cache-strategy <metadata|content>    Strategy for the cache to use for detecting changed files.
# @flag --no-color                               Do not colorize error messages.
# @flag --no-error-on-unmatched-pattern          Prevent errors when pattern is unmatched.
# @option --file-info[string|null] <path>        Extract the following info (as JSON) for a given file path.
# @option -h --help <flag>                       Show CLI usage, or details about the given flag.
# @flag -u --ignore-unknown                      Ignore unknown files.
# @flag --insert-pragma                          Insert @format pragma into file's first docblock comment.
# @option --log-level[silent|error|warn|log|debug]  What level of logs to report.
# @flag --require-pragma                         Require either '@prettier' or '@format' to be present in the file's first docblock comment in order for it to be formatted.
# @option --stdin-filepath <path>                Path to the file to pretend that stdin comes from.
# @flag --support-info                           Print support information as JSON.
# @flag -v --version                             Print Prettier version.
# @arg file-dir-glob* <file/dir/glob>

command eval "$(argc --argc-eval "$0" "$@")"