#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta symbol @file
# @flag -a --all                               Equivalent to: -h -l -S -s -r -d -V -A -I
# @flag -h --file-header                       Display the ELF file header
# @flag -l --program-headers                   Display the program headers
# @flag --segments                             An alias for --program-headers
# @flag -S --section-headers                   Display the sections' header
# @flag --sections                             An alias for --section-headers
# @flag -g --section-groups                    Display the section groups
# @flag -t --section-details                   Display the section details
# @flag -e --headers                           Equivalent to: -h -l -S
# @flag -s --syms                              Display the symbol table
# @flag --symbols                              An alias for --syms
# @flag --dyn-syms                             Display the dynamic symbol table
# @flag --lto-syms                             Display LTO symbol tables
# @option --sym-base <0|8|10|16>               Force base for symbol sizes.
# @option -C --demangle[none|auto|gnu-v3|java|gnat|dlang|rust] <STYLE>  Decode mangled/processed symbol names.
# @flag --no-demangle                          Do not demangle low-level symbol names.
# @flag --recurse-limit                        Enable a demangling recursion limit.
# @flag --no-recurse-limit                     Disable a demangling recursion limit
# @option -U --unicode[default|locale|escape|hex|highlight|invalid]  Display unicode characters as determined by the current locale (default), escape sequences, "<hex sequences>", highlighted escape sequences, or treat them as invalid and display as "{hex sequences}"
# @flag -n --notes                             Display the core notes (if present)
# @flag -r --relocs                            Display the relocations (if present)
# @flag -u --unwind                            Display the unwind info (if present)
# @flag -d --dynamic                           Display the dynamic section (if present)
# @flag -V --version-info                      Display the version sections (if present)
# @flag -A --arch-specific                     Display architecture specific information (if any)
# @flag -c --archive-index                     Display the symbol/file index in an archive
# @flag -D --use-dynamic                       Use the dynamic section info when displaying symbols
# @option -L --lint <|--enable-checks>         Display warning messages for possible problems
# @option -x --hex-dump <number|name>          Dump the contents of section <number|name> as bytes
# @option -p --string-dump <number|name>       Dump the contents of section <number|name> as strings
# @option -R --relocated-dump <number|name>    Dump the relocated contents of section <number|name>
# @flag -z --decompress                        Decompress section before dumping it
# @option -w --debug-dump-[`_choice_debug_dump`]  Displays the contents of the DWARF debug sections in the file, if any are present.
# @flag -P --process-links                     Display the contents of non-debug sections in separate debuginfo files.
# @option --dwarf-depth <N>                    Do not display DIEs at depth N or greater
# @option --dwarf-start <N>                    Display DIEs starting at offset N
# @option --ctf <number|name>                  Display CTF info from section <number|name>
# @option --ctf-parent <name>                  Use CTF archive member <name> as the CTF parent
# @option --ctf-symbols <number|name>          Use section <number|name> as the CTF external symtab
# @option --ctf-strings <number|name>          Use section <number|name> as the CTF external strtab
# @flag -I --histogram                         Display histogram of bucket list lengths
# @flag -W --wide                              Allow output width to exceed 80 characters
# @flag -T --silent-truncation                 If a symbol name is truncated, do not add [...] suffix
# @flag -H --help                              Display this information
# @flag -v --version                           Display the version number of readelf
# @arg elf-file*

_choice_debug_dump() {
    cat <<-'EOF'
a	Displays the contents of the .debug_abbrev section.
=abbrev Displays the contents of the .debug_abbrev section.
A	Displays the contents of the .debug_addr section.
=addr   Displays the contents of the .debug_addr section.
c	Displays the contents of the .debug_cu_index and/or .debug_tu_index sections.
=cu_index	Displays the contents of the .debug_cu_index and/or .debug_tu_index sections.
f	Display the raw contents of a .debug_frame section.
=frames Display the raw contents of a .debug_frame section.
F	Display the interpreted contents of a .debug_frame section.
=frames-interp  Display the interpreted contents of a .debug_frame section.
g	Displays the contents of the .gdb_index and/or .debug_names sections.
=gdb_index	Displays the contents of the .gdb_index and/or .debug_names sections.
i	Displays the contents of the .debug_info section.
=info   Displays the contents of the .debug_info section.
k	Displays the contents of the .gnu_debuglink, .gnu_debugaltlink and .debug_sup sections, if any of them are present.
=links  Displays the contents of the .gnu_debuglink, .gnu_debugaltlink and .debug_sup sections, if any of them are present.
K	Display the contents of any selected debug sections that are found in linked, separate debug info file(s).
=follow-links   Display the contents of any selected debug sections that are found in linked, separate debug info file(s).
N	Disables the following of links to separate debug info files.
=no-follow-links	Disables the following of links to separate debug info files.
l	Displays the contents of the .debug_line section in a raw format.
=rawline	Displays the contents of the .debug_line section in a raw format.
L	Displays the interpreted contents of the .debug_line section.
=decodedline	Displays the interpreted contents of the .debug_line section.
m	Displays the contents of the .debug_macro and/or .debug_macinfo sections.
=macro  Displays the contents of the .debug_macro and/or .debug_macinfo sections.
o	Displays the contents of the .debug_loc and/or .debug_loclists sections.
=loc	Displays the contents of the .debug_loc and/or .debug_loclists sections.
O	Displays the contents of the .debug_str_offsets section.
=str-offsets	Displays the contents of the .debug_str_offsets section.
p	Displays the contents of the .debug_pubnames and/or .debug_gnu_pubnames sections.
=pubnames	Displays the contents of the .debug_pubnames and/or .debug_gnu_pubnames sections.
r	Displays the contents of the .debug_aranges section.
=aranges	Displays the contents of the .debug_aranges section.
R	Displays the contents of the .debug_ranges and/or .debug_rnglists sections.
=Ranges Displays the contents of the .debug_ranges and/or .debug_rnglists sections.
s	Displays the contents of the .debug_str, .debug_line_str and/or .debug_str_offsets sections.
=str	Displays the contents of the .debug_str, .debug_line_str and/or .debug_str_offsets sections.
t	Displays the contents of the .debug_pubtypes and/or .debug_gnu_pubtypes sections.
=pubtype	Displays the contents of the .debug_pubtypes and/or .debug_gnu_pubtypes sections.
T	Displays the contents of the .trace_aranges section.
=trace_aranges  Displays the contents of the .trace_aranges section.
u	Displays the contents of the .trace_abbrev section.
=trace_abbrev   Displays the contents of the .trace_abbrev section.
U	Displays the contents of the .trace_info section.
=trace_info	Displays the contents of the .trace_info section.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"