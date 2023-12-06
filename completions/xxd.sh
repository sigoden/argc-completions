#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                   toggle autoskip: A single '*' replaces nul-lines.
# @flag -b                   binary digit dump (incompatible with -ps,-i).
# @flag -C                   capitalize variable names in C include file style (-i).
# @option -c <cols>          format <cols> octets per line.
# @flag -E                   show characters in EBCDIC.
# @flag -e                   little-endian dump (incompatible with -ps,-i,-r).
# @option -g <bytes>         number of octets per group in normal output.
# @flag -h                   print this summary.
# @flag -i                   output in C include file style.
# @option -l <len>           stop after <len> octets.
# @option -n <name>          set the variable name used in C include output (-i).
# @option -o <off>           add <off> to the displayed file position.
# @flag -ps                  output in postscript plain hexdump style.
# @flag -r                   reverse operation: convert (or patch) hexdump into binary.
# @flag -d                   show offset in decimal instead of hex.
# @option -s <[+][-]seek>    start at <seek> bytes abs.
# @flag -u                   use upper case hex letters.
# @option -R <when>          colorize the output; <when> can be 'always', 'auto' or 'never'.
# @flag -v                   show version: "xxd 2023-10-08 by Juergen Weigert et al.".
# @arg intpufile
# @arg outputfile

command eval "$(argc --argc-eval "$0" "$@")"