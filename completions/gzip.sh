#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -c --stdout            write on standard output, keep original files unchanged
# @flag -d --decompress        decompress
# @flag -f --force             force overwrite of output file and compress links
# @flag -h --help              give this help
# @flag -k --keep              keep (don't delete) input files
# @flag -l --list              list compressed file contents
# @flag -L --license           display software license
# @flag -n --no-name           do not save or restore the original name and timestamp
# @flag -N --name              save or restore the original name and timestamp
# @flag -q --quiet             suppress all warnings
# @flag -r --recursive         operate recursively on directories
# @flag --rsyncable            make rsync-friendly archive
# @option -S --suffix <SUF>    use suffix SUF on compressed files
# @flag --synchronous          synchronous output (safer if system crashes, but slower)
# @flag -t --test              test compressed file integrity
# @flag -v --verbose           verbose mode
# @flag -V --version           display version number
# @flag -1 --fast              compress faster
# @flag -9 --best              compress better
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"