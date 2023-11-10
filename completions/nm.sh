#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta symbol @file
# @flag -a --debug-syms                  Display debugger-only symbols
# @flag -A --print-file-name             Print name of the input file before every symbol
# @flag -B                               Same as --format=bsd
# @option -C --demangle[none|auto|gnu-v3|java|gnat|dlang|rust] <STYLE>  Decode mangled/processed symbol
# @flag --no-demangle                    Do not demangle low-level symbol names
# @flag --recurse-limit                  Enable a demangling recursion limit.
# @flag --no-recurse-limit               Disable a demangling recursion limit.
# @flag -D --dynamic                     Display dynamic symbols instead of normal symbols
# @flag --defined-only                   Display only defined symbols
# @flag -e                               (ignored)
# @option -f --format[bsd|sysv|posix]    Use the output format FORMAT.
# @flag -g --extern-only                 Display only external symbols
# @option --ifunc-chars <CHARS>          Characters to use when displaying ifunc symbols
# @flag -j --just-symbols                Same as --format=just-symbols
# @flag -l --line-numbers                Use debugging information to find a filename and line number for each symbol
# @flag -n --numeric-sort                Sort symbols numerically by address
# @flag -o                               Same as -A
# @flag -p --no-sort                     Do not sort the symbols
# @flag -P --portability                 Same as --format=posix
# @flag -r --reverse-sort                Reverse the sense of the sort
# @option --plugin <NAME>                Load the specified plugin
# @flag -S --print-size                  Print size of defined symbols
# @flag -s --print-armap                 Include index for symbols from archive members
# @flag --quiet                          Suppress "no symbols" diagnostic
# @flag --size-sort                      Sort symbols by size
# @flag --special-syms                   Include special symbols in the output
# @flag --synthetic                      Display synthetic symbols as well
# @option -t --radix                     Use RADIX for printing symbol values
# @option --target <BFDNAME>             Specify the target object format as BFDNAME
# @flag -u --undefined-only              Display only undefined symbols
# @option -U[d|s|i|x|e|h]                Specify how to treat UTF-8 encoded unicode characters
# @option --unicode[default|show|invalid|hex|escape|highlight]  Controls the display of UTF-8 encoded multibyte characters in strings
# @flag --with-symbol-versions           Display version strings after symbol names
# @option -X <32_64>                     (ignored)
# @flag -h --help                        Display this information
# @flag -V --version                     Display this program's version number
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"