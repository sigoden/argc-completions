#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug                            print warnings about invalid input
# @option -d --delimiter <X>               use X instead of whitespace for field delimiter
# @option --field <FIELDS>                 replace the numbers in these input fields (default=1) see FIELDS below
# @option --format                         use printf style floating-point FORMAT; see FORMAT below for details
# @option --from[`_choice_unit`] <UNIT>    auto-scale input numbers to UNITs; default is 'none'; see UNIT below
# @option --from-unit <N>                  specify the input unit size (instead of the default 1)
# @flag --grouping                         use locale-defined grouping of digits, e.g. 1,000,000 (which means it has no effect in the C/POSIX locale)
# @option --header <N>                     print (without converting) the first N header lines; N defaults to 1 if not specified
# @option --invalid[abort|fail|warn|ignore] <MODE>  failure mode for invalid numbers: MODE can be: abort (default), fail, warn, ignore
# @option --padding <N>                    pad the output to N characters; positive N will right-align; negative N will left-align; padding is ignored if the output is wider than N; the default is to automatically pad if a whitespace is found
# @option --round[up|down|from-zero|towards-zero|nearest] <METHOD>  use METHOD for rounding when scaling; METHOD can be: up, down, from-zero (default), towards-zero, nearest
# @option --suffix                         add SUFFIX to output numbers, and accept optional SUFFIX in input numbers
# @option --to[`_choice_unit`] <UNIT>      auto-scale output numbers to UNITs; see UNIT below
# @option --to-unit <N>                    the output unit size (instead of the default 1)
# @flag -z --zero-terminated               line delimiter is NUL, not newline
# @flag --help                             display this help and exit
# @flag --version                          output version information and exit
# @arg number*

_choice_unit() {
    cat <<-'EOF'
none	no auto-scaling is done; suffixes will trigger an error
auto	accept optional single/two letter suffix
si	accept optional single letter suffix
iec	accept optional single letter suffix
iec-i	accept optional two-letter suffix
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"