#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --backtrace <OUT>               Enable full backtrace.
# @flag --comments                        Show commented tasks only
# @option --job-stats <LEVEL>             Display job statistics.
# @flag --rules                           Trace the rules resolution.
# @flag --suppress-backtrace              PATTERN Suppress backtrace lines matching regexp PATTERN.
# @flag -A --all                          Show all tasks, even uncommented ones (in combination with -T or -D)
# @flag -B --build-all                    Build all prerequisites, including those which are up-to-date.
# @option -C --directory                  Change to DIRECTORY before doing anything.
# @option -D --describe <PATTERN>         Describe the tasks (matching optional PATTERN), then exit.
# @option -e --execute <CODE>             Execute some Ruby code and exit.
# @option -E --execute-continue <CODE>    Execute some Ruby code, then continue with normal task processing.
# @option -f --rakefile <FILENAME>        Use FILENAME as the rakefile to search for.
# @flag -G                                Use standard project Rakefile search paths, ignore system wide rakefiles.
# @flag --no-system                       Use standard project Rakefile search paths, ignore system wide rakefiles.
# @flag --nosystem                        Use standard project Rakefile search paths, ignore system wide rakefiles.
# @flag -g --system                       Using system wide (global) rakefiles (usually '~/.rake/*.rake').
# @option -I --libdir                     Include LIBDIR in the search path for required modules.
# @option -j --jobs <NUMBER>              Specifies the maximum number of tasks to execute in parallel.
# @flag -m --multitask                    Treat all tasks as multitasks.
# @flag -n --dry-run                      Do a dry run without executing actions.
# @flag -N                                Do not search parent directories for the Rakefile.
# @flag --no-search                       Do not search parent directories for the Rakefile.
# @flag --nosearch                        Do not search parent directories for the Rakefile.
# @flag -P --prereqs                      Display the tasks and dependencies, then exit.
# @option -p --execute-print <CODE>       Execute some Ruby code, print the result, then exit.
# @flag -q --quiet                        Do not log messages to standard output.
# @option -r --require <MODULE>           Require MODULE before executing rakefile.
# @option -R --rakelibdir                 Auto-import any .rake files in RAKELIBDIR.
# @flag --rakelib
# @flag -s --silent                       Like --quiet, but also suppresses the 'in directory' announcement.
# @option -t --trace <OUT>                Turn on invoke/execute tracing, enable full backtrace.
# @option -T --tasks <PATTERN>            Display the tasks (matching optional PATTERN) with descriptions, then exit.
# @flag -v --verbose                      Log message to standard output.
# @flag -V --version                      Display the program version.
# @option -W --where <PATTERN>            Describe the tasks (matching optional PATTERN), then exit.
# @flag -X --no-deprecation-warnings      Disable the deprecation warnings.
# @flag -h                                Display this help message.
# @flag -H                                Display this help message.
# @flag --help                            Display this help message.
# @arg target*[`_choice_target`]

_choice_target() {
    rake -T | sed -n 's/rake \(\S\+\)\s*# \(.*\)/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"