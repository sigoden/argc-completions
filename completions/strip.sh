#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -I --input-target[`_choice_target`] <bfdname>  Assume input file is in format <bfdname>
# @option -O --output-target[`_choice_target`] <bfdname>  Create an output file in format <bfdname>
# @option -F --target[`_choice_target`] <bfdname>  Set both input and output format to <bfdname>
# @flag -p --preserve-dates                    Copy modified/access timestamps to the output
# @flag -D --enable-deterministic-archives     Produce deterministic output when stripping archives (default)
# @flag -U --disable-deterministic-archives    Disable -D behavior
# @option -R --remove-section <name>           Also remove section <name> from the output
# @option --remove-relocations <name>          Remove relocations from section <name>
# @flag -s --strip-all                         Remove all symbol and relocation information
# @flag -g                                     Remove all debugging symbols & sections
# @flag -S                                     Remove all debugging symbols & sections
# @flag -d                                     Remove all debugging symbols & sections
# @flag --strip-debug                          Remove all debugging symbols & sections
# @flag --strip-dwo                            Remove all DWO sections
# @flag --strip-unneeded                       Remove all symbols not needed by relocations
# @flag --only-keep-debug                      Strip everything but the debug information
# @flag -M --merge-notes                       Remove redundant entries in note sections (default)
# @flag --no-merge-notes                       Do not attempt to remove redundant notes
# @option -N --strip-symbol <name>             Do not copy symbol <name>
# @option --keep-section <name>                Do not strip section <name>
# @option -K --keep-symbol <name>              Do not strip symbol <name>
# @flag --keep-section-symbols                 Do not strip section symbols
# @flag --keep-file-symbols                    Do not strip file symbol(s)
# @flag -w --wildcard                          Permit wildcard in symbol comparison
# @flag -x --discard-all                       Remove all non-global symbols
# @flag -X --discard-locals                    Remove any compiler-generated symbols
# @flag -v --verbose                           List all object files modified
# @flag -V --version                           Display this program's version number
# @flag -h --help                              Display this output
# @flag --info                                 List object formats & architectures supported
# @option -o <file>                            Place stripped output into <file>
# @arg in-file*

_choice_target() {
    printf "%s\n" elf64-x86-64 elf32-i386 elf32-iamcu elf32-x86-64 pei-i386 pe-x86-64 \
        pei-x86-64 elf64-l1om elf64-k1om elf64-little elf64-big elf32-little elf32-big \
        pe-bigobj-x86-64 pe-i386 srec symbolsrec verilog tekhex binary ihex plugin   
}

command eval "$(argc --argc-eval "$0" "$@")"