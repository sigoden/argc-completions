_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's/ Boolean (no if unset)//' \
        -e '/^\s*-/ s/ ([^)]*)//' \
        -e '/^\s*-/ s/ Boolean$//' \
        -e '/Supported values:/,/^\s*/ d' \

}

_patch_table() {
    _patch_table_edit_options \
        '--accessibility-check;[`_choice_accessibility_check`]' \
        '--char-encoding;[`_choice_encoding`]' \
        '--custom-tags;[no|blocklevel|empty|inline|pre]' \
        '--fix-bad-comments;[no|yes|auto]' \
        '--indent;[no|yes|auto]' \
        '--input-encoding;[`_choice_encoding`]' \
        '--merge-divs;[no|yes|auto]' \
        '--merge-spans;[no|yes|auto]' \
        '--newline;[LF|CRLF|CR]' \
        '--output-bom;[no|yes|auto]' \
        '--output-encoding;[`_choice_encoding`]' \
        '--show-body-only;[no|yes|auto]' \
        '--sort-attributes;[none|alpha]' \
        '--vertical-space;[no|yes|auto]' \

}

_choice_accessibility_check() {
    cat <<-'EOF'
0	Tidy Classic
1	Priority 1 Checks
2	Priority 2 Checks
3	Priority 3 Checks
EOF
}

_choice_encoding() {
    printf "%s\n" raw ascii latin0 latin1 utf8 iso2022 mac win1252 ibm858 \
        utf16le utf16be utf16 big5 shiftjis
}
