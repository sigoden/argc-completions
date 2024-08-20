#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e <statement>                 Enter one line of a script.
# @flag -i                               Interactive mode: osascript will prompt for one line at a time, and print the result, if applicable, after each line.
# @option -l <language>                  Override the language for any plain text files.
# @option -s*[`_choice_flag`] <flags>    Modify the output style.

_choice_flag() {
    cat <<-'EOF'
h	Print values in human-readable form (default).
s	Print values in recompilable source form.
e	Print script errors to stderr (default).
o	Print script errors to stdout.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"