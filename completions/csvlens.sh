#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --delimiter <char>          Delimiter character (comma by default) or "auto" to auto-detect the delimiter
# @flag -t --tab-separated               Use tab separation.
# @flag --no-headers                     Do not interpret the first row as headers
# @option --columns <regex>              Use this regex to select columns to display by default
# @option --filter <regex>               Use this regex to filter rows to display by default
# @option --find <regex>                 Use this regex to find and highlight matches by default
# @flag -i --ignore-case                 Searches ignore case.
# @option --echo-column <column_name>    Print the value of this column to stdout for the selected row
# @flag --debug                          Show stats for debugging
# @flag -h --help                        Print help
# @flag -V --version                     Print version
# @arg filename                          CSV filename

command eval "$(argc --argc-eval "$0" "$@")"