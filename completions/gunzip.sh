#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -c --stdout            write on standard output, keep original files unchanged
# @flag -f --force             force overwrite of output file and compress links
# @flag -k --keep              keep (don't delete) input files
# @flag -l --list              list compressed file contents
# @flag -n --no-name           do not save or restore the original name and timestamp
# @flag -N --name              save or restore the original name and timestamp
# @flag -q --quiet             suppress all warnings
# @flag -r --recursive         operate recursively on directories
# @option -S --suffix <SUF>    use suffix SUF on compressed files
# @flag --synchronous          synchronous output (safer if system crashes, but slower)
# @flag -t --test              test compressed file integrity
# @flag -v --verbose           verbose mode
# @flag --help                 display this help and exit
# @flag --version              display version information and exit
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"