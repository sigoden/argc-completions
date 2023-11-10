_patch_help() {
    $@ --help | sed '/ --debug-dump=/,+1 d'
}

_patch_table() {
    _patch_table_add_metadata 'symbol @file' | \
    _patch_table_edit_options \
        '--debug-dump();-[`_choice_debug_dump`];Displays the contents of the DWARF debug sections in the file, if any are present.' \
        '--demangle;[none|auto|gnu-v3|java|gnat|dlang|rust];Decode mangled/processed symbol names.' \

}

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
