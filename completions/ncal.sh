#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                                        Turns off highlighting of today.
# @flag -J                                        Display Julian Calendar, if combined with the -o option, display date of Orthodox Easter according to the Julian Calendar.
# @flag -e                                        Display date of Easter (for western churches).
# @flag -j                                        Display Julian days (days one-based, numbered from January 1).
# @option -m[`_choice_month`] <month>             Display the specified month.
# @flag -o                                        Display date of Orthodox Easter (Greek and Russian Orthodox Churches).
# @flag -p                                        Print the country codes and switching days from Julian to Gregorian Calendar as they are assumed by ncal.
# @option -s[`_choice_country`] <country_code>    Assume the switch from Julian to Gregorian Calendar at the date associated with the country_code.
# @flag -w                                        Print the number of the week below each week column.
# @flag -y                                        Display a calendar for the specified year.
# @flag -3                                        Display the previous, current and next month surrounding today.
# @flag -1                                        Display only the current month.
# @option -A <number>                             Months to add after.
# @option -B <number>                             Months to add before.
# @flag -C                                        Completely switch to cal mode.
# @option -d <yyyy-mm>                            Use yyyy-mm as the current date (for debugging of date selection).
# @option -H <yyyy-mm-dd>                         Use yyyy-mm-dd as the current date (for debugging of highlighting).
# @flag -M                                        Weeks start on Monday.
# @flag -S                                        Weeks start on Sunday.
# @option -W <number>                             First week of the year has at least number days.
# @flag -b                                        Use oldstyle format for ncal output.
# @arg month-year <[month] year>

_choice_month() {
    seq 1 12
}

_choice_country() {
    cat <<-'EOF'
AL	Albania
AT	Austria
AU	Australia
BE	Belgium
BG	Bulgaria
CA	Canada
CH	Switzerland
CN	China
CZ	Czech Republic
DE	Germany
DK	Denmark
ES	Spain
FI	Finland
FR	France
GB	United Kingdom
GR	Greece
HU	Hungary
IS	Iceland
IT	Italy
JP	Japan
LI	Lithuania
LN	Latin
LU	Luxembourg
LV	Latvia
NL	Netherlands
NO	Norway
PL	Poland
PT	Portugal
RO	Romania
RU	Russia
SI	Slovenia
SW	Sweden
TR	Turkey
US	United States
YU	Yugoslavia
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"