#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --from-code[`_choice_code`] <NAME>    encoding of original text
# @option -t --to-code[`_choice_code`] <NAME>      encoding for output
# @flag -l --list                                  list all known coded character sets
# @flag -c                                         omit invalid characters from output
# @option -o --output <FILE>                       output file
# @flag -s --silent                                suppress warnings
# @flag --verbose                                  print progress information
# @flag -? --help                                  Give this help list
# @flag --usage                                    Give a short usage message
# @flag -V --version                               Print program version
# @arg file*

_choice_code() {
    iconv --list | sed 's|//||'
}

command eval "$(argc --argc-eval "$0" "$@")"