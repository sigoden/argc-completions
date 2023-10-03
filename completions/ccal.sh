#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --3months                    Display previous/current/next month together.
# @flag --appts                      Maximum number of appointments to display.
# @option --color-file <filename>    Read color definitions from `filename' (default color filename depends on operating system).
# @option --continue <n>             Display the next n successive months starting with the month specified.
# @option --data-file <filename>     Read appointments from `filename' (default appointment data filename depends on operating system).
# @flag --europe                     Use European format (first weekday is Monday).
# @flag --american                   Use North American format (first weekday is Sunday), this is the default.
# @flag --future                     If current month is displayed, then show only future appointments from the date file, not appointments that are past.
# @flag --julian                     Display Julian dates (days one-based, numbered from January 1).
# @flag --monday                     Display Monday as the first day of the week (same as --europe)
# @flag --nocolor                    Inhibit the use of colors.
# @flag --nodata                     Do not try to read any appointment data file.
# @flag --pause                      Pause before exiting and prompt for a keystroke.
# @flag --thismonth                  Disable display of next month appointments; show only current month's.
# @flag --today                      Show only today's appointments.
# @flag --use-color                  Allow the use of colors.
# @flag --year                       Display a calendar for the current year.
# @arg month[`_choice_month`]
# @arg year

_choice_month() {
    printf "%s\n" 1 2 3 4 5 6 7 8 9 10 11 12 jan feb mar apr may jun jul aug sep oct nov dec
}

command eval "$(argc --argc-eval "$0" "$@")"