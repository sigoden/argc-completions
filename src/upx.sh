_patch_help() { 
    $@ --help | \
    _patch_help_split_2cols | \
    sed 's/-oFILE/-o FILE /'
}

_patch_table() { 
    _patch_table_dedup_options \
        ';;' \
        '--8086' \
        '--compress-exports' \
        '--compress-icons' \
        '--overlay' \
        '--strip-relocs' \
    | \
    _patch_table_edit_options \
        '--compress-exports;[`_choice_compress_exports`]' \
        '--compress-icons;[`_choice_compress_icons`]' \
        '--overlay;[`__choice_overlay`]' \
        '--strip-relocs;[`_choice_strip_relocs`]' \

}

__choice_overlay() {
    cat <<-'EOF'
copy	copy any extra data attached to the file [default]
strip	strip any extra data attached to the file
skip	don't compress a file with an overlay
EOF
}

_choice_compress_exports() {
    cat <<-'EOF'
0	do not compress the export section
1	compress the export section [default]
EOF
}

_choice_compress_icons() {
    cat <<-'EOF'
0	do not compress any icons
1	compress all but the first icon
2	compress all but the first icon directory [default]
3	compress all icons
EOF
}

_choice_strip_relocs() {
    cat <<-'EOF'
0	do not strip relocations
1	strip relocations [default]
EOF
}
