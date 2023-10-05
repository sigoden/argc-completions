#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --check-sourced                        Include warnings from sourced files
# @option -C --color[auto|always|never] <WHEN>    Use color
# @option -i --include* <CODE1,CODE2>             Consider only given types of warnings
# @option -e --exclude* <CODE1,CODE2>             Exclude types of warnings
# @option -f --format[checkstyle|diff|gcc|json|json1|quiet|tty]  Output format
# @flag --list-optional                           List checks disabled by default
# @flag --norc                                    Don't look for .shellcheckrc files
# @option -o --enable*,[`_choice_check`] <check1,check2>  List of optional checks to enable (or 'all')
# @option -P --source-path <SOURCEPATHS>          Specify path when looking for sourced files ("SCRIPTDIR" for script's dir)
# @option -s --shell[sh|bash|dash|ksh] <SHELLNAME>  Specify dialect
# @option -S --severity[error|warning|info|style]  Minimum severity of errors to consider
# @flag -V --version                              Print version information
# @option -W --wiki-link-count <NUM>              The number of wiki links to show, when applicable
# @flag -x --external-sources                     Allow 'source' outside of FILES
# @flag --help                                    Show this usage summary and exit
# @arg files*

_choice_check() {
    echo -e "all\tEnables all optional checks"
    shellcheck --list-optional | \
    sed -n '/^name:/ {N;s/^name:\s\+\(\S\+\)\ndesc:\s\+\(.*\)/\1\t\2/p}'
}

command eval "$(argc --argc-eval "$0" "$@")"