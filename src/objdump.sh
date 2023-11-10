_patch_help() { 
    _patch_help_run_man $@ | \
    sed \
        -e '/^\s*-/ {:x;N;s/\n\s*-/, -/;t x;}' \
        -e 's/\[=/ [/' \
        -e 's/|=/|/g' \
        -e 's/,=/,/g' \

}

_patch_table() { 
    _patch_table_add_metadata 'symbol @file' | \
    _patch_table_edit_options \
        '--architecture;[`_choice_architecture`]' \
        '--demangle;[`_choice_demangle`]' \
        '--dwarf(value);[`_choice_dwarf`]' \
        '--target;[`_choice_target`]' \

}

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
