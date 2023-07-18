#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --bytes <LIST>              select only these bytes
# @option -c --characters <LIST>         select only these characters
# @option -d --delimiter <DELIM>         use DELIM instead of TAB for field delimiter
# @option -f --fields <LIST>             select only these fields;  also print any line that contains no delimiter character, unless the -s option is specified
# @flag -n                               (ignored)
# @flag --complement                     complement the set of selected bytes, characters or fields
# @flag -s --only-delimited              do not print lines not containing delimiters
# @option --output-delimiter <STRING>    use STRING as the output delimiter the default is to use the input delimiter
# @flag -z --zero-terminated             line delimiter is NUL, not newline
# @flag --help                           display this help and exit
# @flag --version                        output version information and exit
# @flag -M                               from first to M'th (included) byte, character or field
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"