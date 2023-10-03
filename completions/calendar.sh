#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A <num>               Print lines from today and next num days.
# @flag -a                       Process the “calendar” files of all users and mail the results to them.
# @option -B <num>               Print lines from today and previous num days.
# @flag -b                       Enforce special date calculation mode for Cyrillic calendars.
# @option -l <num>               Print lines from today and next num days.
# @option -e <num>               Print lines from today and next num days, only if today is Friday.
# @option -f <calendarfile>      Use calendarfile as the default calendar file.
# @option -t <[[[cc]yy]mm]dd>    Act like the specified value is “today” instead of using the current date.
# @flag -w                       Print day of the week name in front of each event.

command eval "$(argc --argc-eval "$0" "$@")"