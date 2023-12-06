#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --count                                Count test cases without running any tests
# @option --code-quote-style <style>              A two character string of code quote delimiters or 'custom' which requires setting $BATS_BEGIN_CODE_QUOTE and $BATS_END_CODE_QUOTE.
# @flag --line-reference-format                   Controls how file/line references e.g. in stack traces are printed: - comma_line (default): a.bats, line 1
# @option -f --filter <regex>                     Only run tests that match the regular expression
# @option --filter-status <status>                Only run tests with the given status in the last completed (no CTRL+C/SIGINT) run.
# @option --filter-tags <comma-separated-tag-list>  Only run tests that match all the tags in the list (&&).
# @option -F --formatter <type>                   Switch between formatters: pretty (default), tap (default w/o term), tap13, junit, /<absolute path to formatter>
# @option --gather-test-outputs-in <directory>    Gather the output of failing *and* passing tests as files in directory (if existing, must be empty)
# @flag -h --help                                 Display this help message
# @option -j --jobs <jobs>                        Number of parallel jobs (requires GNU parallel or shenwei356/rush)
# @flag --parallel-binary-name                    Name of parallel binary
# @flag --no-tempdir-cleanup                      Preserve test output temporary directory
# @flag --no-parallelize-across-files             Serialize test file execution instead of running them in parallel (requires --jobs >1)
# @flag --no-parallelize-within-files             Serialize test execution within files instead of running them in parallel (requires --jobs >1)
# @option --report-formatter <type>               Switch between reporters (same options as --formatter)
# @option -o --output <dir>                       Directory to write report files (must exist)
# @flag -p --pretty                               Shorthand for "--formatter pretty"
# @flag --print-output-on-failure                 Automatically print the value of `$output` on failed tests
# @flag -r --recursive                            Include tests in subdirectories
# @flag --show-output-of-passing-tests            Print output of passing tests
# @flag -t --tap                                  Shorthand for "--formatter tap"
# @flag -T --timing                               Add timing information to tests
# @flag -x --trace                                Print test commands as they are executed (like `set -x`)
# @flag --verbose-run                             Make `run` print `$output` by default
# @flag -v --version                              Display the version number
# @arg tests+

command eval "$(argc --argc-eval "$0" "$@")"