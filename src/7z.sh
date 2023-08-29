_patch_help() {
    $@ --help | sed -e '/^\s*-/ s/ : /   /' -e 's/\[-\] / /'
}

_patch_table() {
    _patch_table_edit_options \
        '-ao;-[a|s|t|u]' \
        '-bb;-[0|1|2|3]' \
        '-sa;-[a|e|s]' \
        '-scrc(<value>);[CRC32|CRC64|SHA1|SHA256]' \
        '-scs(<value>);[UTF-8|UTF-16LE|UTF-16BE|WIN|DOS]' \
        '-t;-[`_choice_type`]' \
    | \
    _patch_table_edit_arguments ';;' 'command;[`_choice_command`]' 'args...'
}

_choice_type() {
    if [[ "$argc_command" == @(a|d|rn|u) ]]; then
        printf "%s\n" 7z bzip2 gzip swfc tar wim xz zip    
    else
        printf "%s\n" 7z apm arj bzip2 cab chm cpio cramfs deb dmg elf fat flv \
            gzip hfs iso lzh lzma lzma86 macho mbr mslz mub nsis ntfs pe ppmd rar \
            rpm squashfs swf swfc tar udf vhd wim xar xz z zip
    fi
}

_choice_command() {
    cat <<-'EOF'
a	Add files to archive
b	Benchmark
d	Delete files from archive
e	Extract files from archive (without using directory names)
h	Calculate hash values for files
i	Show information about supported formats
l	List contents of archive
rn	Rename files in archive
t	Test integrity of archive
u	Update files to archive
x	eXtract files with full paths
EOF
}
