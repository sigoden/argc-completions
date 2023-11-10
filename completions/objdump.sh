#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta symbol @file
# @flag -a --archive-header                      If any of the objfile files are archives, display the archive header information (in a format similar to ls -l).
# @option --adjust-vma <offset>                  When dumping information, first add offset to all the section addresses.
# @option -b --target[`_choice_target`] <bfdname>  Specify that the object-code format for the object files is bfdname.
# @option -C --demangle[`_choice_demangle`] <style>  Decode (demangle) low-level symbol names into user-level names.
# @flag --recurse-limit                          Enables or disables a limit on the amount of recursion performed whilst demangling strings.
# @flag --no-recurse-limit                       Enables or disables a limit on the amount of recursion performed whilst demangling strings.
# @flag --recursion-limit                        Enables or disables a limit on the amount of recursion performed whilst demangling strings.
# @flag --no-recursion-limit                     Enables or disables a limit on the amount of recursion performed whilst demangling strings.
# @flag -g --debugging                           Display debugging information.
# @flag -e --debugging-tags                      Like -g, but the information is generated in a format compatible with ctags tool.
# @option -d --disassemble <symbol>              Display the assembler mnemonics for the machine instructions from the input file.
# @flag -D --disassemble-all                     Like -d, but disassemble the contents of all sections, not just those expected to contain instructions.
# @flag --no-addresses                           When disassembling, don't print addresses on each line or for symbols and relocation offsets.
# @flag --prefix-addresses                       When disassembling, print the complete address on each line.
# @option -EB[big|little]                        Specify the endianness of the object files.
# @option -EL[big|little]                        Specify the endianness of the object files.
# @option --endian[big|little]                   Specify the endianness of the object files.
# @flag -f --file-headers                        Display summary information from the overall header of each of the objfile files.
# @flag -F --file-offsets                        When disassembling sections, whenever a symbol is displayed, also display the file offset of the region of data that is about to be dumped.
# @flag --file-start-context                     Specify that when displaying interlisted source code/disassembly (assumes -S) from a file that has not yet been displayed, extend the context to the start of the file.
# @flag -h                                       Display summary information from the section headers of the object file.
# @flag --section-headers                        Display summary information from the section headers of the object file.
# @flag --headers                                Display summary information from the section headers of the object file.
# @flag -H --help                                Print a summary of the options to objdump and exit.
# @flag -i --info                                Display a list showing all architectures and object formats available for specification with -b or -m.
# @option -j --section <name>                    Display information only for section name.
# @flag -L --process-links                       Display the contents of non-debug sections found in separate debuginfo files that are linked to the main file.
# @flag -l --line-numbers                        Label the display (using debugging information) with the filename and source line numbers corresponding to the object code or relocs shown.
# @option -m --architecture[`_choice_architecture`] <machine>  Specify the architecture to use when disassembling object files.
# @option -M --disassembler-options <options>    Pass target specific information to the disassembler.
# @flag -p --private-headers                     Print information that is specific to the object file format.
# @option -P --private <options>                 Print information that is specific to the object file format.
# @flag -r --reloc                               Print the relocation entries of the file.
# @flag -R --dynamic-reloc                       Print the dynamic relocation entries of the file.
# @flag -s --full-contents                       Display the full contents of any sections requested.
# @flag -S --source                              Display source code intermixed with disassembly, if possible.
# @option --source-comment <txt>                 Like the -S option, but all source code lines are displayed with a prefix of txt.
# @option --prefix <prefix>                      Specify prefix to add to the absolute paths when used with -S.
# @option --prefix-strip <level>                 Indicate how many initial directory names to strip off the hardwired absolute paths.
# @flag --show-raw-insn                          When disassembling instructions, print the instruction in hex as well as in symbolic form.
# @flag --no-show-raw-insn                       When disassembling instructions, do not print the instruction bytes.
# @option --insn-width <width>                   Display width bytes on a single line when disassembling instructions.
# @option --visualize-jumps[color|extended-color|off]  Visualize jumps that stay inside a function by drawing ASCII art between the start and target addresses.
# @option -W --dwarf[`_choice_dwarf`] <value>    Displays the contents of the DWARF debug sections in the file, if any are present.
# @option --dwarf-depth <n>                      Limit the dump of the ".debug_info" section to n children.
# @option --dwarf-start <n>                      Print only DIEs beginning with the DIE numbered n.
# @flag --dwarf-check                            Enable additional checks for consistency of Dwarf information.
# @option --ctf <section>                        Display the contents of the specified CTF section.
# @option --ctf-parent <member>                  If the CTF section contains ambiguously-defined types, it will consist of an archive of many CTF dictionaries, all inheriting from one dictionary containing unambiguous types.
# @flag -G --stabs                               Display the full contents of any sections requested.
# @option --start-address <address>              Start displaying data at the specified address.
# @option --stop-address <address>               Stop displaying data at the specified address.
# @flag -t --syms                                Print the symbol table entries of the file.
# @flag -T --dynamic-syms                        Print the dynamic symbol table entries of the file.
# @flag --special-syms                           When displaying symbols include those which the target considers to be special in some way and which would not normally be of interest to the user.
# @option -U --unicode[default|invalid|locale|escape|hex|highlight]  Controls the display of UTF-8 encoded multibyte characters in strings.
# @flag -V --version                             Print the version number of objdump and exit.
# @flag -x --all-headers                         Display all available header information, including the symbol table and relocation entries.
# @flag -w --wide                                Format some lines for output devices that have more than 80 columns.
# @flag -z --disassemble-zeroes                  Normally the disassembly output will skip blocks of zeroes.

_choice_target() {
    printf "%s\n" elf64-x86-64 elf32-i386 elf32-iamcu elf32-x86-64 \
        a.out-i386-linux pei-i386 pei-x86-64 elf64-l1om elf64-k1om elf64-little \
        elf64-big elf32-little elf32-big plugin srec symbolsrec verilog tekhex binary ihex
}

_choice_demangle() {
    printf "%s\n" auto gnu lucid arm hp edg gnu-v3 java gnat
}

_choice_architecture() {
    printf "%s\n" i386 i386:x86-64 i386:x64-32 i8086 i386:intel i386:x86-64:intel \
        i386:x64-32:intel i386:nacl i386:x86-64:nacl i386:x64-32:nacl iamcu iamcu:intel \
        l1om l1om:intel k1om k1om:intel plugin
}

_choice_dwarf() {
    cat <<-'EOF'
abbrev	Displays the contents of the .debug_abbrev section.
addr	Displays the contents of the .debug_addr section.
cu_index	Displays the contents of the .debug_cu_index and/or .debug_tu_index sections.
frames	Display the raw contents of a .debug_frame section.
frames-interp	Display the interpreted contents of a .debug_frame section.
gdb_index	Displays the contents of the .gdb_index and/or .debug_names sections.
info	Displays the contents of the .debug_info section.
links	Displays the contents of the .gnu_debuglink, .gnu_debugaltlink and .debug_sup sections, if any of them are present.
follow-links	Display the contents of any selected debug sections that are found in linked, separate debug info file(s).
no-follow-links	Disables the following of links to separate debug info files.
rawline	Displays the contents of the .debug_line section in a raw format.
decodedline	Displays the interpreted contents of the .debug_line section.
macro	Displays the contents of the .debug_macro and/or .debug_macinfo sections.
loc	Displays the contents of the .debug_loc and/or .debug_loclists sections.
str-offsets	Displays the contents of the .debug_str_offsets section.
pubnames	Displays the contents of the .debug_pubnames and/or .debug_gnu_pubnames sections.
aranges	Displays the contents of the .debug_aranges section.
Ranges	Displays the contents of the .debug_ranges and/or .debug_rnglists sections.
str	Displays the contents of the .debug_str, .debug_line_str and/or .debug_str_offsets sections.
pubtype	Displays the contents of the .debug_pubtypes and/or .debug_gnu_pubtypes sections.
trace_aranges	Displays the contents of the .trace_aranges section.
trace_abbrev	Displays the contents of the .trace_abbrev section.
trace_info	Displays the contents of the .trace_info section.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"