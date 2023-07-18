#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a <FILENUM>          also print unpairable lines from file FILENUM, where FILENUM is 1 or 2, corresponding to FILE1 or FILE2
# @option -e <EMPTY>            replace missing input fields with EMPTY
# @flag -i --ignore-case        ignore differences in case when comparing fields
# @option -j <FIELD>            equivalent to '-1 FIELD -2 FIELD'
# @option -o <FORMAT>           obey FORMAT while constructing output line
# @option -t <CHAR>             use CHAR as input and output field separator
# @option -v <FILENUM>          like -a FILENUM, but suppress joined output lines
# @option -1 <FIELD>            join on this FIELD of file 1
# @option -2 <FIELD>            join on this FIELD of file 2
# @flag --check-order           check that the input is correctly sorted, even if all input lines are pairable
# @flag --nocheck-order         do not check that the input is correctly sorted
# @flag --header                treat the first line in each file as field headers, print them without trying to pair them
# @flag -z --zero-terminated    line delimiter is NUL, not newline
# @flag --help                  display this help and exit
# @flag --version               output version information and exit
# @arg file1
# @arg file2

command eval "$(argc --argc-eval "$0" "$@")"