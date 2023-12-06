#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -Ca                       trade off larger tables for better memory alignment
# @flag --align                   trade off larger tables for better memory alignment
# @flag -Ce                       construct equivalence classes
# @flag --ecs                     construct equivalence classes
# @flag -Cf                       do not compress tables; use -f representation
# @flag -CF                       do not compress tables; use -F representation
# @flag -Cm                       construct meta-equivalence classes
# @flag --meta-ecs                construct meta-equivalence classes
# @flag -Cr                       use read() instead of stdio for scanner input
# @flag --read                    use read() instead of stdio for scanner input
# @flag -f --full                 generate fast, large scanner.
# @flag -F --fast                 use alternate table representation.
# @flag -Cem                      default compression (same as --ecs --meta-ecs)
# @flag -d --debug                enable debug mode in scanner
# @flag -b --backup               write backing-up information to lex.backup
# @flag -p --perf-report          write performance report to stderr
# @flag -s --nodefault            suppress default rule to ECHO unmatched text
# @flag -T --trace                flex should run in trace mode
# @flag -w --nowarn               do not generate warnings
# @flag -v --verbose              write summary of scanner statistics to stdout
# @flag --hex                     use hexadecimal numbers instead of octal in debug outputs
# @option -o --outfile <FILE>     specify output filename
# @option -S --skel <FILE>        specify skeleton file
# @flag -t --stdout               write scanner on stdout instead of lex.yy.c
# @option --yyclass <NAME>        name of C++ class
# @option --header-file <FILE>    create a C header file in addition to the scanner
# @option --tables-file <FILE>    write tables to FILE
# @flag -7 --7bit                 generate 7-bit scanner
# @flag -8 --8bit                 generate 8-bit scanner
# @flag -B --batch                generate batch scanner (opposite of -I)
# @flag -i --case-insensitive     ignore case in patterns
# @flag -l --lex-compat           maximal compatibility with original lex
# @flag -X --posix-compat         maximal compatibility with POSIX lex
# @flag -I --interactive          generate interactive scanner (opposite of -B)
# @flag --yylineno                track line count in yylineno
# @option -+ --c <++>             generate C++ scanner class
# @option -Dmacrodefine macro defn  (default defn is '1') <defn>
# @flag -L --noline               suppress ♯line directives in scanner
# @option -P --prefix <STRING>    use STRING as prefix instead of "yy"
# @flag -R --reentrant            generate a reentrant C scanner
# @flag --bison-bridge            scanner for bison pure parser.
# @flag --bison-locations         include yylloc support.
# @flag --stdinit                 initialize yyin/yyout to stdin/stdout
# @flag --nounistd                do not include <unistd.h>
# @flag --noFUNCTION              do not generate a particular FUNCTION
# @flag -c                        do-nothing POSIX option
# @flag -n                        do-nothing POSIX option
# @flag -?
# @flag -h --help                 produce this help message
# @flag -V --version              report flex version
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"