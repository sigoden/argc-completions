#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --add-prunefs <FS>             omit also FS (space-separated)
# @option -n --add-prunenames <NAMES>       omit also NAMES (space-separated)
# @option -e --add-prunepaths <PATHS>       omit also PATHS (space-separated)
# @option --add-single-prunepath <PATH>     omit also PATH
# @option -U --database-root <PATH>         the subtree to store in database (default "/")
# @flag -h --help                           print this help
# @option -o --output <FILE>                database to update (default `/var/lib/plocate/plocate.db')
# @option -b --block-size <SIZE>            number of filenames to store in each block (default 32)
# @option --prune-bind-mounts <FLAG>        omit bind mounts (default "no")
# @option --prunefs <FS>                    filesystems to omit from database
# @option --prunenames <NAMES>              directory names to omit from database
# @option --prunepaths <PATHS>              paths to omit from database
# @option -l --require-visibility <FLAG>    check visibility before reporting files (default "yes")
# @flag -v --verbose                        print paths of files as they are found
# @flag -V --version                        print version information

command eval "$(argc --argc-eval "$0" "$@")"