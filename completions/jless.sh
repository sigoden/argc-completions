#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --mode[`_choice_mode`]      Initial viewing mode.
# @flag -N --no-line-numbers             Don't show line numbers
# @flag -n --line-numbers                Show "line" numbers (default).
# @flag -r --relative-line-numbers       Show the line number relative to the currently focused line.
# @flag -R --no-relative-line-numbers    Don't show relative line numbers (default)
# @option --scrolloff                    Number of lines to maintain as padding between the currently focused row and the top or bottom of the screen.
# @flag -h --help                        Print help information
# @flag -V --version                     Print version information
# @flag --json                           Parse input as JSON, regardless of file extension
# @flag --yaml                           Parse input as YAML, regardless of file extension
# @arg input-file

_choice_mode() {
    cat <<-'EOF'
line	opening and closing curly and square brackets are shown and all Object keys are quoted.
data	closing braces, commas, and quotes around Object keys are elided.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"