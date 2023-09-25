#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                                    show active containers only
# @option -connector[docker|runc] <string>    container connector to use (default "docker")
# @option -f <string>                         filter containers
# @flag -h                                    display this help dialog
# @flag -i                                    invert default colors
# @flag -r                                    reverse container sort order
# @option -s[`_choice_sort`] <string>         select container sort field
# @flag -v                                    output version information and exit

_choice_sort() {
    printf "%s\n" id name cpu mem net pids io state uptime 
}

command eval "$(argc --argc-eval "$0" "$@")"