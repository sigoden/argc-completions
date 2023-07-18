#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --count                prefix lines by the number of occurrences
# @flag -d --repeated             only print duplicate lines, one for each group
# @flag -D                        print all duplicate lines
# @option --all-repeated[none|prepend|separate] <METHOD>  like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}
# @option -f --skip-fields <N>    avoid comparing the first N fields
# @option --group[append|both|prepend|separate] <METHOD>  show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}
# @flag -i --ignore-case          ignore differences in case when comparing
# @option -s --skip-chars <N>     avoid comparing the first N characters
# @flag -u --unique               only print unique lines
# @flag -z --zero-terminated      line delimiter is NUL, not newline
# @option -w --check-chars <N>    compare no more than N characters in lines
# @flag --help                    display this help and exit
# @flag --version                 output version information and exit
# @arg file1
# @arg file2

command eval "$(argc --argc-eval "$0" "$@")"