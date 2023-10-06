#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -c*[`_choice_alg`] <alg1,[alg2]>    Compute hashes only.
# @option -p <size>                           piecewise mode.
# @flag -r                                    recursive mode.
# @option -k <file>                           add a file of known hashes
# @flag -a                                    audit mode.
# @flag -m                                    matching mode.
# @flag -x                                    negative matching mode.
# @flag -w                                    in -m mode, displays which known file was matched
# @flag -e                                    compute estimated time remaining for each file
# @flag -s                                    silent mode.
# @flag -b                                    prints only the bare name of files; all path information is omitted
# @flag -l                                    print relative paths for filenames
# @flag -i                                    only process files smaller than the given threshold
# @flag -I                                    only process files smaller than the given threshold
# @flag -o                                    only process certain types of files.
# @flag -v                                    verbose mode.
# @flag -d                                    output in DFXML
# @option -W <FILE>                           write to FILE.
# @option -j <num>                            use num threads (default 20)
# @flag -M                                    like -m, but display hashes of matching files
# @flag -X                                    like -x, but display hashes of matching files
# @arg files*

_choice_alg() {
    printf "%s\n" md5 sha1 sha256 tiger whirlpool
}

command eval "$(argc --argc-eval "$0" "$@")"