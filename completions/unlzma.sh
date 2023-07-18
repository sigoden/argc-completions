#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -z --compress           force compression
# @flag -d --decompress         force decompression
# @flag -t --test               test compressed file integrity
# @flag -l --list               list information about .xz files
# @flag -k --keep               keep (don't delete) input files
# @flag -f --force              force overwrite of output file and (de)compress links
# @flag -c --stdout             write to standard output and don't delete input files
# @flag -0*                     compression preset; default is 6; take compressor *and* decompressor memory usage into account before using 7-9!
# @flag -9*                     compression preset; default is 6; take compressor *and* decompressor memory usage into account before using 7-9!
# @flag -e --extreme            try to improve compression ratio by using more CPU time; does not affect decompressor memory requirements
# @option -T --threads <NUM>    use at most NUM threads; the default is 1; set to 0 to use as many threads as there are processor cores
# @flag -q --quiet              suppress warnings; specify twice to suppress errors too
# @flag -v --verbose            be verbose; specify twice for even more verbose
# @flag -h --help               display this short help and exit
# @flag -H --long-help          display the long help (lists also the advanced options)
# @flag -V --version            display the version number and exit
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"