#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -1                            suppress column 1 (lines unique to FILE1)
# @flag -2                            suppress column 2 (lines unique to FILE2)
# @flag -3                            suppress column 3 (lines that appear in both files)
# @flag --check-order                 check that the input is correctly sorted, even if all input lines are pairable
# @flag --nocheck-order               do not check that the input is correctly sorted
# @option --output-delimiter <STR>    separate columns with STR
# @flag --total                       output a summary
# @flag -z --zero-terminated          line delimiter is NUL, not newline
# @flag --help                        display this help and exit
# @flag --version                     output version information and exit
# @arg file1
# @arg file2

command eval "$(argc --argc-eval "$0" "$@")"