#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --basename               search only the file name portion of path names
# @flag -c --count                  print number of matches instead of the matches
# @option -d --database <DBPATH>    search for files in DBPATH (default is /var/lib/plocate/plocate.db)
# @flag -i --ignore-case            search case-insensitively
# @option -l --limit                stop after LIMIT matches
# @flag -0 --null                   delimit matches by NUL instead of newline
# @flag -N --literal                do not quote filenames, even if printing to a tty
# @flag -r --regexp                 interpret patterns as basic regexps (slow)
# @flag --regex                     interpret patterns as extended regexps (slow)
# @flag -w --wholename              search the entire path name (default; see -b)
# @flag --help                      print this help
# @flag --version                   print version information
# @arg pattern*

command eval "$(argc --argc-eval "$0" "$@")"