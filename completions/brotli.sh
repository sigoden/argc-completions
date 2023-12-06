#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -#                          compression level (0-9)
# @flag -c --stdout                 write on standard output
# @flag -d --decompress             decompress
# @flag -f --force                  force output file overwrite
# @flag -h --help                   display this help and exit
# @flag -j --rm                     remove source file(s)
# @flag -s --squash                 remove destination file if larger than source
# @flag -k --keep                   keep source file(s) (default)
# @flag -n --no-copy-stat           do not copy source file(s) attributes
# @option -o --output <FILE>        output file (only if 1 input file)
# @option -q --quality <NUM>        compression level (0-11)
# @flag -t --test                   test compressed file integrity
# @flag -v --verbose                verbose mode
# @option -w --lgwin <NUM>          set LZ77 window size (0, 10-24) window size = 2**NUM - 16 0 lets compressor choose the optimal value
# @option --large_window <NUM>      use incompatible large-window brotli bitstream with window size (0, 10-30) WARNING: this format is not compatible with brotli RFC 7932 and may not be decodable with regular brotli decoders
# @option -D --dictionary <FILE>    use FILE as raw (LZ77) dictionary
# @option -S --suffix <SUF>         output file suffix (default:'.br')
# @flag -V --version                display version and exit
# @flag -Z --best                   use best compression level (11) (default)
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"