_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '-m;[`_choice_month`]' \
        '-s;[`_choice_country`]' \

}

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
