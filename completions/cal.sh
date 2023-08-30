#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                               Turns off highlighting of today.
# @flag -j                               Display Julian days (days one-based, numbered from January 1).
# @option -m[`_choice_month`] <month>    Display the specified month.
# @flag -y                               Display a calendar for the specified year.
# @flag -3                               Display the previous, current and next month surrounding today.
# @option -A <number>                    Months to add after.
# @option -B <number>                    Months to add before.
# @arg month-year <[month] year>

_choice_month() {
    seq 1 12
}

command eval "$(argc --argc-eval "$0" "$@")"