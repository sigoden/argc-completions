_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ 2>&1 | \
        sed \
            -e 's/^<verb> is one of the following:/Commands:/' \
            -e '/^Commands:/,$ {s/\s\+\(\S\+\)/\n\1/}' \
            -e '/^Commands:/,$ {//! s/^/  /}' \

    else
        $@ -h 2>&1 | \
        sed \
            -e '/^\s*-/ s/ - /   /' \
            -e 's/-(no)/-[no]/' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '-encryption;[`_choice_encryption`]; ' \
        | \
        _patch_table_edit_arguments \
            'devname;[`_choice_devname`]' \
            'image;[`_choice_image`]' \
    )"
    if [[ "$*" == "hdiutil create" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '-\\[no\\]spotlight' \
            '-format' \
        | \
        _patch_table_edit_options \
            '-format;[`_choice_format`]; ' \
            '-fs;[`_choice_fs`]; ' \
            '-layout;[`_choice_layout`]; ' \
            '-srcowners;[`_choice_srcowners`]; ' \
            '-type;[`_choice_type`]; ' \

    else
        echo "$table"
    fi
}

_choice_encryption() {
    cat <<-'EOF'
AES-128	128-bit AES encryption (recommended)
AES-256	256-bit AES encryption (more secure, but slower)
EOF
}

_choice_image() {
    _argc_util_comp_path ext=.bin,.cdr,.dmg,.img,.iso,.sparse,.sparsebundle,.sparseimage
}

_choice_devname() {
    hdiutil info | sed -n 's|^/dev/\(\w\+\)\s\+\(.*\)|\1\t\2|p'
}

_choice_layout() {
    cat <<-'EOF'
MBRSPUD	Single partition - Master Boot Record Partition Map
SPUD	Single partition - Apple Partition Map
UNIVERSAL CD	CD/DVD
NONE	No partition map
GPTSPUD	Single partition - GUID Partition Map
SPCD	Single partition - CD/DVD
UNIVERSAL HD	Hard disk
ISOCD	Single partition - CD/DVD with ISO data
EOF
}

_choice_type() {
    cat <<-'EOF'
SPARSEBUNDLE	sparse bundle disk image
SPARSE	sparse disk image
UDIF	read/write disk image
UDTO	DVD/CD master
EOF
}

_choice_srcowners() {
    cat <<-'EOF'
on	enable owners on source
off	disable owners on source
any	leave owners state on source unchanged
auto	enable owners if source is a volume   
EOF
}

_choice_format() {
    cat <<-'EOF'
UDRO	read-only
UDCO	compressed (ADC)
UDZO	compressed
UDBZ	compressed (bzip2), deprecated
ULFO	compressed (lzfse)
ULMO	compressed (lzma)
UFBI	entire device
IPOD	iPod image
UDSB	sparsebundle
UDSP	sparse
UDRW	read/write
UDTO	DVD/CD master
EOF
}

_choice_fs() {
    cat <<-'EOF'
UDF	Universal Disk Format (UDF)
MS-DOS FAT12	MS-DOS (FAT12)
MS-DOS	MS-DOS (FAT)
MS-DOS FAT16	MS-DOS (FAT16)
MS-DOS FAT32	MS-DOS (FAT32)
HFS+	Mac OS Extended
Case-sensitive HFS+	Mac OS Extended (Case-sensitive)
Case-sensitive Journaled HFS+	Mac OS Extended (Case-sensitive, Journaled)
Journaled HFS+	Mac OS Extended (Journaled)
ExFAT	ExFAT
Case-sensitive APFS	APFS (Case-sensitive)
APFS	APFS
EOF
}
