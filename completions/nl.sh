#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --body-numbering[`_choice_numbering`] <STYLE>  use STYLE for numbering body lines
# @option -d --section-delimiter <CC>           use CC for logical page delimiters
# @option -f --footer-numbering[`_choice_numbering`] <STYLE>  use STYLE for numbering footer lines
# @option -h --header-numbering[`_choice_numbering`] <STYLE>  use STYLE for numbering header lines
# @option -i --line-increment <NUMBER>          line number increment at each line
# @option -l --join-blank-lines <NUMBER>        group of NUMBER empty lines counted as one
# @option -n --number-format[`_choice_number_format`] <FORMAT>  insert line numbers according to FORMAT
# @flag -p --no-renumber                        do not reset line numbers for each section
# @option -s --number-separator <STRING>        add STRING after (possible) line number
# @option -v --starting-line-number <NUMBER>    first line number for each section
# @option -w --number-width <NUMBER>            use NUMBER columns for line numbers
# @flag --help                                  display this help and exit
# @flag --version                               output version information and exit
# @arg file*

_choice_numbering() {
    cat <<-'EOF'
a	number all lines
n	no line numbering
p	number only lines matching regex
t	number only non-empty lines
EOF
}

_choice_number_format() {
    cat <<-'EOF'
ln	left justified
rn	right justified
rz	right justified with leading zeroes
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"