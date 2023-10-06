#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -h --help          print this message
# @flag -d --decompress    force decompression
# @flag -z --compress      force compression
# @flag -k --keep          keep (don't delete) input files
# @flag -f --force         overwrite existing output files
# @flag -t --test          test compressed file integrity
# @flag -c --stdout        output to standard out
# @flag -q --quiet         suppress noncritical error messages
# @flag -v --verbose       be verbose (a 2nd -v gives more)
# @flag -L --license       display software version & license
# @flag -V --version       display software version & license
# @flag -s --small         use less memory (at most 2500k)
# @flag -1                 set block size to 100k .. 900k
# @flag -9                 set block size to 100k .. 900k
# @flag --fast             alias for -1
# @flag --best             alias for -9
# @arg file-tbz-tbz2-bz-bz2 <file:.tbz,.tbz2,.bz,bz2>

command eval "$(argc --argc-eval "$0" "$@")"