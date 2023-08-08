#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --stdin                    Read the stylesheet from stdin.
# @flag --no-stdin                 Read the stylesheet from stdin.
# @flag --indented                 Use the indented syntax for input from stdin.
# @flag --no-indented              Use the indented syntax for input from stdin.
# @option -I --load-path <PATH>    A path to use when resolving imports.
# @option -s --style <NAME>        Output style.
# @flag --charset                  Emit a @charset or BOM for CSS with non-ASCII characters.
# @flag --no-charset               Emit a @charset or BOM for CSS with non-ASCII characters.
# @flag --error-css                When an error occurs, emit a stylesheet describing it.
# @flag --no-error-css             When an error occurs, emit a stylesheet describing it.
# @flag --update                   Only compile out-of-date stylesheets.
# @flag --source-map               Whether to generate source maps.
# @flag --no-source-map            Whether to generate source maps.
# @flag --source-map-urls          How to link from source maps to source files.
# @flag --embed-sources            Embed source file contents in source maps.
# @flag --no-embed-sources         Embed source file contents in source maps.
# @flag --embed-source-map         Embed source map contents in CSS.
# @flag --no-embed-source-map      Embed source map contents in CSS.
# @flag -q                         Don't print warnings.
# @flag --quiet                    Don't print warnings.
# @flag --no-quiet                 Don't print warnings.
# @flag --quiet-deps               Don't print compiler warnings from dependencies.
# @flag --no-quiet-deps            Don't print compiler warnings from dependencies.
# @flag --verbose                  Print all deprecation warnings even when they're repetitive.
# @flag --no-verbose               Print all deprecation warnings even when they're repetitive.
# @flag --fatal-deprecation        Deprecations to treat as errors.
# @flag --future-deprecation       Opt in to a deprecation early.
# @flag -w --watch                 Watch stylesheets and recompile when they change.
# @flag --poll                     Manually check for changes rather than using a native watcher.
# @flag --no-poll                  Manually check for changes rather than using a native watcher.
# @flag --stop-on-error            Don't compile more files once an error is encountered.
# @flag --no-stop-on-error         Don't compile more files once an error is encountered.
# @flag -i --interactive           Run an interactive SassScript shell.
# @flag -c                         Whether to use terminal colors for messages.
# @flag --color                    Whether to use terminal colors for messages.
# @flag --no-color                 Whether to use terminal colors for messages.
# @flag --unicode                  Whether to use Unicode characters for messages.
# @flag --no-unicode               Whether to use Unicode characters for messages.
# @flag --trace                    Print full Dart stack traces for exceptions.
# @flag --no-trace                 Print full Dart stack traces for exceptions.
# @flag -h --help                  Print this usage information.
# @flag --version                  Print the version of Dart Sass.
# @arg path*[`_choice_pair_path`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_pair_path() {
    _argc_util_mode_kv :
    _argc_util_comp_path 
}

command eval "$(argc --argc-eval "$0" "$@")"