#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -p --preview                       Display changes in a human reviewable format (the specifics of the format are likely to change in the future)
# @flag -F --fixed-strings                 Treat FIND and REPLACE_WITH args as literal strings
# @option -n --max-replacements <LIMIT>    Limit the number of replacements that can occur per file.
# @option -f --flags                       Regex flags.
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg find!                               The regexp or string (if using `-F`) to search for
# @arg replace_with!                       What to replace each match with.
# @arg files*                              The path to file(s).

command eval "$(argc --argc-eval "$0" "$@")"