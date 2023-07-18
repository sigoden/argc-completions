#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --append               append to the given FILEs, do not overwrite
# @flag -i --ignore-interrupts    ignore interrupt signals
# @flag -p                        diagnose errors writing to non pipes
# @option --output-error[`_choice_output_error`] <MODE>  set behavior on write error.
# @flag --help                    display this help and exit
# @flag --version                 output version information and exit
# @arg file*

_choice_output_error() {
    cat <<-'EOF'
warn	diagnose errors writing to any output
warn-nopipe	diagnose errors writing to any output not a pipe
exit	exit on error writing to any output
exit-nopipe	exit on error writing to any output not a pipe
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"