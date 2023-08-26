#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -0-* <octal/hexadecimal>    specify record separator (\0, if no argument)
# @flag -a                            autosplit mode with -n or -p (splits $_ into @F)
# @option -C-* <number/list>          enables the listed Unicode features
# @flag -c                            check syntax only (runs BEGIN and CHECK blocks)
# @option -d-* <[t][:MOD]>            run program under debugger or module Devel::MOD
# @option -D-* <number/letters>       set debugging flags (argument is a bit mask or alphabets)
# @option -e <commandline>            one line of program (several -e's allowed, omit programfile)
# @option -E <commandline>            like -e, but enables all optional features
# @flag -f                            don't do $sitelib/sitecustomize.pl at startup
# @option -F-* </pattern/>            split() pattern for -a switch (//'s are optional)
# @option -i-* <extension>            edit <> files in place (makes backup if extension supplied)
# @option -I-* <directory>            specify @INC/#include directory (several -I's allowed)
# @option -l-* <octnum>               enable line ending processing, specifies line terminator
# @flag -n                            assume "while (<>) { ... }" loop around program
# @flag -p                            assume loop like -n but print line also, like sed
# @flag -s                            enable rudimentary parsing for switches after programfile
# @flag -S                            look for programfile using PATH environment variable
# @flag -t                            enable tainting warnings
# @flag -T                            enable tainting checks
# @flag -u                            dump core after parsing program
# @flag -U                            allow unsafe operations
# @flag -v                            print version, patchlevel and license
# @option -V-* <:configvar>           print configuration summary (or a single Config.pm variable)
# @flag -w                            enable many useful warnings
# @flag -W                            enable all warnings
# @option -x-* <directory>            ignore text before ♯!perl line (optionally cd to directory)
# @flag -X                            disable all warnings
# @arg programfile

command eval "$(argc --argc-eval "$0" "$@")"