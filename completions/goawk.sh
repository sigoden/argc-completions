#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --csv                             enable CSV input mode; equivalent to "-i csv"
# @option -F <separator>                  field separator (default " ")
# @option -f <progfile>                   load AWK source from progfile (multiple allowed)
# @option -v <var=value>                  variable assignment (multiple allowed)
# @option -E <progfile>                   load program, treat as last option, disable var=value args
# @flag -H                                parse header row and enable @"field" in CSV input mode
# @flag -h --help                         show this help message
# @option -i <mode>                       parse input into fields using CSV format (ignore FS and RS) 'csv|tsv [separator=<char>] [comment=<char>] [header]'
# @option -o <mode>                       use CSV output for print with args (ignore OFS and ORS) 'csv|tsv [separator=<char>]'
# @flag -version                          show GoAWK version and exit
# @flag -coverappend                      append to coverage profile instead of overwriting
# @option -covermode[set|count] <mode>    set coverage mode: set, count (default "set")
# @option -coverprofile <file>            write coverage profile to file
# @option -cpuprofile <file>              write CPU profile to file
# @flag -d                                print parsed syntax tree to stdout and exit
# @flag -da                               print VM assembly instructions to stdout and exit
# @flag -dt                               print variable type information to stdout and exit
# @option -memprofile <file>              write memory profile to file
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"