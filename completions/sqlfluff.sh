#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version    Show the version and exit.
# @flag -h --help    Show this message and exit.

# {{ sqlfluff dialects
# @cmd Show the current dialects available.
# @flag -n --nocolor    No color - output will be without ANSI color codes.
# @flag -v --verbose    Verbosity, how detailed should the output be.
# @flag --version       Show the version and exit.
# @flag -h --help       Show this message and exit.
dialects() {
    :;
}
# }} sqlfluff dialects

# {{ sqlfluff fix
# @cmd Fix SQL files.
# @flag -n --nocolor                             No color - output will be without ANSI color codes.
# @flag -v --verbose                             Verbosity, how detailed should the output be.
# @flag --version                                Show the version and exit.
# @option --library-path <TEXT>                  Override the `library_path` value from the [sqlfluff:templater:jinja] configuration value.
# @flag --disable-noqa                           Set this flag to ignore inline noqa comments.
# @option --logger[templater|lexer|parser|linter|rules|config]  Choose to limit the logging to one of the loggers.
# @flag --bench                                  Set this flag to engage the benchmarking tool output.
# @option -i --ignore <TEXT>                     Ignore particular families of errors so that they don't cause a failed run.
# @option --encoding <TEXT>                      Specify encoding to use when reading and writing files.
# @flag --ignore-local-config                    Ignore config files in default search path locations.
# @option --config <PATH>                        Include additional config file.
# @option -e --exclude-rules*,[`_choice_rule`] <TEXT>  Exclude specific rules.
# @option -r --rules*,[`_choice_rule`] <TEXT>    Narrow the search to only specific rules.
# @option -t --templater[raw|jinja|python|placeholder]  The templater to use (default=jinja)
# @option -d --dialect[`_choice_dialect`] <TEXT>  The dialect of SQL to lint
# @flag --warn-unused-ignores                    Warn about unneeded '-- noqa:' comments.
# @option --persist-timing <TEXT>                A filename to persist the timing information for a linting run to in csv format for external analysis.
# @flag --disable_progress_bar                   Disables progress bars.
# @flag --disable-progress-bar                   Disables progress bars.
# @option -p --processes <INTEGER>               The number of parallel processes to run.
# @flag -f --force                               Skip the confirmation prompt and go straight to applying fixes.
# @flag -q --quiet                               Reduces the amount of output to stdout to a minimal level.
# @option -x --fixed-suffix <TEXT>               An optional suffix to add to fixed files.
# @flag --FIX-EVEN-UNPARSABLE                    Enables fixing of files that have templating or parse errors.
# @flag --show-lint-violations                   Show lint violations
# @flag -h --help                                Show this message and exit.
# @arg paths*
fix() {
    :;
}
# }} sqlfluff fix

# {{ sqlfluff format
# @cmd Autoformat SQL files.
# @flag -n --nocolor                             No color - output will be without ANSI color codes.
# @flag -v --verbose                             Verbosity, how detailed should the output be.
# @flag --version                                Show the version and exit.
# @option --library-path <TEXT>                  Override the `library_path` value from the [sqlfluff:templater:jinja] configuration value.
# @flag --disable-noqa                           Set this flag to ignore inline noqa comments.
# @option --logger[templater|lexer|parser|linter|rules|config]  Choose to limit the logging to one of the loggers.
# @flag --bench                                  Set this flag to engage the benchmarking tool output.
# @option -i --ignore <TEXT>                     Ignore particular families of errors so that they don't cause a failed run.
# @option --encoding <TEXT>                      Specify encoding to use when reading and writing files.
# @flag --ignore-local-config                    Ignore config files in default search path locations.
# @option --config <PATH>                        Include additional config file.
# @option -e --exclude-rules*,[`_choice_rule`] <TEXT>  Exclude specific rules.
# @option -r --rules*,[`_choice_rule`] <TEXT>    Narrow the search to only specific rules.
# @option -t --templater[raw|jinja|python|placeholder]  The templater to use (default=jinja)
# @option -d --dialect[`_choice_dialect`] <TEXT>  The dialect of SQL to lint
# @flag --warn-unused-ignores                    Warn about unneeded '-- noqa:' comments.
# @option --persist-timing <TEXT>                A filename to persist the timing information for a linting run to in csv format for external analysis.
# @flag --disable_progress_bar                   Disables progress bars.
# @flag --disable-progress-bar                   Disables progress bars.
# @option -p --processes <INTEGER>               The number of parallel processes to run.
# @option -x --fixed-suffix <TEXT>               An optional suffix to add to fixed files.
# @flag -h --help                                Show this message and exit.
# @arg paths*
format() {
    :;
}
# }} sqlfluff format

# {{ sqlfluff lint
# @cmd Lint SQL files via passing a list of files or using stdin.
# @flag -n --nocolor                             No color - output will be without ANSI color codes.
# @flag -v --verbose                             Verbosity, how detailed should the output be.
# @flag --version                                Show the version and exit.
# @option --library-path <TEXT>                  Override the `library_path` value from the [sqlfluff:templater:jinja] configuration value.
# @flag --disable-noqa                           Set this flag to ignore inline noqa comments.
# @option --logger[templater|lexer|parser|linter|rules|config]  Choose to limit the logging to one of the loggers.
# @flag --bench                                  Set this flag to engage the benchmarking tool output.
# @option -i --ignore <TEXT>                     Ignore particular families of errors so that they don't cause a failed run.
# @option --encoding <TEXT>                      Specify encoding to use when reading and writing files.
# @flag --ignore-local-config                    Ignore config files in default search path locations.
# @option --config <PATH>                        Include additional config file.
# @option -e --exclude-rules*,[`_choice_rule`] <TEXT>  Exclude specific rules.
# @option -r --rules*,[`_choice_rule`] <TEXT>    Narrow the search to only specific rules.
# @option -t --templater[raw|jinja|python|placeholder]  The templater to use (default=jinja)
# @option -d --dialect[`_choice_dialect`] <TEXT>  The dialect of SQL to lint
# @flag --warn-unused-ignores                    Warn about unneeded '-- noqa:' comments.
# @option --persist-timing <TEXT>                A filename to persist the timing information for a linting run to in csv format for external analysis.
# @flag --disable_progress_bar                   Disables progress bars.
# @flag --disable-progress-bar                   Disables progress bars.
# @option -p --processes <INTEGER>               The number of parallel processes to run.
# @option -f --format[human|json|yaml|github-annotation|github-annotation-native|none]  What format to return the lint result in (default=human).
# @option --write-output <TEXT>                  Optionally provide a filename to write the results to, mostly used in tandem with --format.
# @option --annotation-level[notice|warning|failure|error]  When format is set to github-annotation or github-annotation-native, default annotation level (default=notice).
# @flag --nofail                                 If set, the exit code will always be zero, regardless of violations found.
# @flag --disregard-sqlfluffignores              Perform the operation regardless of .sqlfluffignore configurations
# @flag -h --help                                Show this message and exit.
# @arg paths*
lint() {
    :;
}
# }} sqlfluff lint

# {{ sqlfluff parse
# @cmd Parse SQL files and just spit out the result.
# @flag -n --nocolor                             No color - output will be without ANSI color codes.
# @flag -v --verbose                             Verbosity, how detailed should the output be.
# @flag --version                                Show the version and exit.
# @option --library-path <TEXT>                  Override the `library_path` value from the [sqlfluff:templater:jinja] configuration value.
# @flag --disable-noqa                           Set this flag to ignore inline noqa comments.
# @option --logger[templater|lexer|parser|linter|rules|config]  Choose to limit the logging to one of the loggers.
# @flag --bench                                  Set this flag to engage the benchmarking tool output.
# @option -i --ignore <TEXT>                     Ignore particular families of errors so that they don't cause a failed run.
# @option --encoding <TEXT>                      Specify encoding to use when reading and writing files.
# @flag --ignore-local-config                    Ignore config files in default search path locations.
# @option --config <PATH>                        Include additional config file.
# @option -e --exclude-rules*,[`_choice_rule`] <TEXT>  Exclude specific rules.
# @option -r --rules*,[`_choice_rule`] <TEXT>    Narrow the search to only specific rules.
# @option -t --templater[raw|jinja|python|placeholder]  The templater to use (default=jinja)
# @option -d --dialect[`_choice_dialect`] <TEXT>  The dialect of SQL to lint
# @flag -c --code-only                           Output only the code elements of the parse tree.
# @flag -m --include-meta                        Include meta segments (indents, dedents and placeholders) in the output.
# @option -f --format[human|json|yaml|none]      What format to return the parse result in.
# @option --write-output <TEXT>                  Optionally provide a filename to write the results to, mostly used in tandem with --format.
# @flag --parse-statistics                       Set this flag to enabled detailed debugging readout on the use of terminators in the parser.
# @flag --nofail                                 If set, the exit code will always be zero, regardless of violations found.
# @flag -h --help                                Show this message and exit.
# @arg path
parse() {
    :;
}
# }} sqlfluff parse

# {{ sqlfluff render
# @cmd Render SQL files and just spit out the result.
# @flag -n --nocolor                             No color - output will be without ANSI color codes.
# @flag -v --verbose                             Verbosity, how detailed should the output be.
# @flag --version                                Show the version and exit.
# @option --library-path <TEXT>                  Override the `library_path` value from the [sqlfluff:templater:jinja] configuration value.
# @flag --disable-noqa                           Set this flag to ignore inline noqa comments.
# @option --logger[templater|lexer|parser|linter|rules|config]  Choose to limit the logging to one of the loggers.
# @flag --bench                                  Set this flag to engage the benchmarking tool output.
# @option -i --ignore <TEXT>                     Ignore particular families of errors so that they don't cause a failed run.
# @option --encoding <TEXT>                      Specify encoding to use when reading and writing files.
# @flag --ignore-local-config                    Ignore config files in default search path locations.
# @option --config <PATH>                        Include additional config file.
# @option -e --exclude-rules*,[`_choice_rule`] <TEXT>  Exclude specific rules.
# @option -r --rules*,[`_choice_rule`] <TEXT>    Narrow the search to only specific rules.
# @option -t --templater[raw|jinja|python|placeholder]  The templater to use (default=jinja)
# @option -d --dialect[`_choice_dialect`] <TEXT>  The dialect of SQL to lint
# @flag -h --help                                Show this message and exit.
# @arg path
render() {
    :;
}
# }} sqlfluff render

# {{ sqlfluff rules
# @cmd Show the current rules in use.
# @flag -n --nocolor    No color - output will be without ANSI color codes.
# @flag -v --verbose    Verbosity, how detailed should the output be.
# @flag --version       Show the version and exit.
# @flag -h --help       Show this message and exit.
rules() {
    :;
}
# }} sqlfluff rules

# {{ sqlfluff version
# @cmd Show the version of sqlfluff.
# @flag -n --nocolor    No color - output will be without ANSI color codes.
# @flag -v --verbose    Verbosity, how detailed should the output be.
# @flag --version       Show the version and exit.
# @flag -h --help       Show this message and exit.
version() {
    :;
}
# }} sqlfluff version

_choice_rule() {
    sqlfluff rules | sed -n 's/^\(\S\+\): \(.*\)$/\1\t\2/p'
}

_choice_dialect() {
    sqlfluff dialects | sed -n 's/^\(\S\+\):.*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"