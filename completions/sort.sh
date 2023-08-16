#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --ignore-leading-blanks          ignore leading blanks
# @flag -d --dictionary-order               consider only blanks and alphanumeric characters
# @flag -f --ignore-case                    fold lower case to upper case characters
# @flag -g --general-numeric-sort           compare according to general numerical value
# @flag -i --ignore-nonprinting             consider only printable characters
# @flag -M --month-sort                     compare (unknown) < 'JAN' < ... < 'DEC'
# @flag -h --human-numeric-sort             compare human readable numbers (e.g., 2K 1G)
# @flag -n --numeric-sort                   compare according to string numerical value
# @flag -R --random-sort                    shuffle, but group identical keys.
# @option --random-source <FILE>            get random bytes from FILE
# @flag -r --reverse                        reverse the result of comparisons
# @option --sort[`_choice_sort`] <WORD>     sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric -n, random -R, version -V
# @flag -V --version-sort                   natural sort of (version) numbers within text
# @option --batch-size <NMERGE>             merge at most NMERGE inputs at once; for more use temp files
# @option -c --check[`_choice_check`]       check for sorted input; do not sort
# @option --compress-program[bzip2|gzip|lzop|xz] <PROG>  compress temporaries with PROG; decompress them with PROG -d
# @flag --debug                             annotate the part of the line used to sort, and warn about questionable usage to stderr
# @option --files0-from <FILE>              read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input
# @option -k --key <KEYDEF>                 sort via a key; KEYDEF gives location and type
# @flag -m --merge                          merge already sorted files; do not sort
# @option -o --output <FILE>                write result to FILE instead of standard output
# @flag -s --stable                         stabilize sort by disabling last-resort comparison
# @option -S --buffer-size <SIZE>           use SIZE for main memory buffer
# @option -t --field-separator <SEP>        use SEP instead of non-blank to blank transition
# @option -T --temporary-directory <DIR>    use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories
# @option --parallel <N>                    change the number of sorts run concurrently to N
# @flag -u --unique                         with -c, check for strict ordering; without -c, output only the first of an equal run
# @flag -z --zero-terminated                line delimiter is NUL, not newline
# @flag --help                              display this help and exit
# @flag --version                           output version information and exit
# @arg file*

_choice_sort() {
    printf "%s\n" general-numeric human-numeric month numeric random version
}

_choice_check() {
    printf "%s\n" diagnose-first quiet silent
}

command eval "$(argc --argc-eval "$0" "$@")"