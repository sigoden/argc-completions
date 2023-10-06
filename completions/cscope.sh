#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -b                  Build the cross-reference only.
# @flag -C                  Ignore letter case when searching.
# @flag -c                  Use only ASCII characters in the cross-ref file (don't compress).
# @flag -d                  Do not update the cross-reference.
# @flag -e                  Suppress the <Ctrl>-e command prompt between files.
# @option -F <symfile>      Read symbol reference lines from symfile.
# @option -f <reffile>      Use reffile as cross-ref file name instead of cscope.out.
# @flag -h                  This help screen.
# @option -I <incdir>       Look in incdir for any ♯include files.
# @option -i <namefile>     Browse through files listed in namefile, instead of cscope.files
# @flag -k                  Kernel Mode - don't use /usr/include for ♯include files.
# @flag -L                  Do a single search with line-oriented output.
# @flag -l                  Line-oriented interface.
# @option -num <pattern>    Go to input field num (counting from 0) and find pattern.
# @option -P <path>         Prepend path to relative file names in pre-built cross-ref file.
# @option -p <n>            Display the last n file path components.
# @flag -q                  Build an inverted index for quick symbol searching.
# @flag -R                  Recurse directories for files.
# @option -s <dir>          Look in dir for additional source  files.
# @flag -T                  Use only the first eight characters to match against C symbols.
# @flag -U                  Check file time stamps.
# @flag -u                  Unconditionally build the cross-reference file.
# @flag -v                  Be more verbose in line mode.
# @flag -V                  Print the version number.
# @arg source-files* <source files>

command eval "$(argc --argc-eval "$0" "$@")"