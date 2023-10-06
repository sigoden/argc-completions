#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -f --force                 ignore nonexistent files and arguments, never prompt
# @flag -i                         prompt before every removal
# @flag -I                         prompt once before removing more than three files, or when removing recursively; less intrusive than -i, while still giving protection against most mistakes
# @option --interactive[`_choice_interactive`] <WHEN>  prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always
# @flag --one-file-system          when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument
# @flag --no-preserve-root         do not treat '/' specially
# @option --preserve-root <all>    do not remove '/' (default); with 'all', reject any command line argument on a separate device from its parent
# @flag -r                         remove directories and their contents recursively
# @flag -R                         remove directories and their contents recursively
# @flag --recursive                remove directories and their contents recursively
# @flag -d --dir                   remove empty directories
# @flag -v --verbose               explain what is being done
# @flag --help                     display this help and exit
# @flag --version                  output version information and exit
# @arg file*

_choice_interactive() {
    cat <<-'EOF'
always	prompt before every removal
once	prompt when removing many files
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"