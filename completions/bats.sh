#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --count                         Count test cases without running any tests
# @option -f --filter <regex>              Only run tests that match the regular expression
# @option -F --formatter <type>            Switch between formatters: pretty (default), tap (default w/o term), junit
# @flag -h --help                          Display this help message
# @option -j --jobs <jobs>                 Number of parallel jobs (requires GNU parallel)
# @flag --parallel-preserve-environment    Preserve the current environment for "--jobs" (run `parallel --record-env` before)
# @flag --no-tempdir-cleanup               Preserve test output temporary directory
# @option -o --output <dir>                Directory to write report files
# @flag -p --pretty                        Shorthand for "--formatter pretty"
# @flag -r --recursive                     Include tests in subdirectories
# @flag -t --tap                           Shorthand for "--formatter tap"
# @flag -T --timing                        Add timing information to tests
# @flag -v --version                       Display the version number
# @arg tests!

command eval "$(argc --argc-eval "$0" "$@")"