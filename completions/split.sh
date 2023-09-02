#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --suffix-length <N>          generate suffixes of length N (default 2)
# @option --additional-suffix <SUFFIX>    append an additional SUFFIX to file names
# @option -b --bytes <SIZE>               put SIZE bytes per output file
# @option -C --line-bytes <SIZE>          put at most SIZE bytes of records per output file
# @flag -d                                use numeric suffixes starting at 0, not alphabetic
# @option --numeric-suffixes <FROM>       same as -d, but allow setting the start value
# @flag -x                                use hex suffixes starting at 0, not alphabetic
# @option --hex-suffixes <FROM>           same as -x, but allow setting the start value
# @flag -e --elide-empty-files            do not generate empty output files with '-n'
# @option --filter <COMMAND>              write to shell COMMAND; file name is $FILE
# @option -l --lines <NUMBER>             put NUMBER lines/records per output file
# @option -n --number <CHUNKS>            generate CHUNKS output files; see explanation below
# @option -t --separator <SEP>            use SEP instead of newline as the record separator; '\0' (zero) specifies the NUL character
# @flag -u --unbuffered                   immediately copy input to output with '-n r/...'
# @flag --verbose                         print a diagnostic just before each output file is opened
# @flag --help                            display this help and exit
# @flag --version                         output version information and exit
# @arg file
# @arg prefix

command eval "$(argc --argc-eval "$0" "$@")"