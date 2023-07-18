#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --date <STRING>       display time described by STRING, not 'now'
# @flag --debug                    annotate the parsed date, and warn about questionable usage to stderr
# @option -f --file <DATEFILE>     like --date; once for each line of DATEFILE
# @option -I --iso-8601 <FMT>      output date/time in ISO 8601 format.
# @flag -R --rfc-email             output date and time in RFC 5322 format.
# @option --rfc-3339 <FMT>         output date/time in RFC 3339 format.
# @option -r --reference <FILE>    display the last modification time of FILE
# @option -s --set <STRING>        set time described by STRING
# @flag -u                         print or set Coordinated Universal Time (UTC)
# @flag --utc                      print or set Coordinated Universal Time (UTC)
# @flag --universal                print or set Coordinated Universal Time (UTC)
# @flag --help                     display this help and exit
# @flag --version                  output version information and exit
# @arg format <+FORMAT>

command eval "$(argc --argc-eval "$0" "$@")"