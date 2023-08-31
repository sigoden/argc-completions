#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --dir              Set stow dir to DIR (default is current dir)
# @option -t --target <DIR>     Set target to DIR (default is parent of stow dir)
# @flag -S --stow               Stow the package names that follow this option
# @flag -D --delete             Unstow the package names that follow this option
# @flag -R --restow             Restow (like stow -D followed by stow -S)
# @option --ignore <REGEX>      Ignore files ending in this Perl regex
# @option --defer <REGEX>       Don't stow files beginning with this Perl regex if the file is already stowed to another package
# @option --override <REGEX>    Force stowing files beginning with this Perl regex if the file is already stowed to another package
# @flag --adopt                 (Use with care!)  Import existing files into stow package from target.
# @flag -p --compat             Use legacy algorithm for unstowing
# @flag -n                      Do not actually make any filesystem changes
# @flag --no                    Do not actually make any filesystem changes
# @flag --simulate              Do not actually make any filesystem changes
# @option -v --verbose <N>      Increase verbosity (levels are from 0 to 5; -v or --verbose adds 1; --verbose=N sets level)
# @flag -V --version            Show stow version number
# @flag -h --help               Show this help

command eval "$(argc --argc-eval "$0" "$@")"