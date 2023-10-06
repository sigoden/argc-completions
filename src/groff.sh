_patch_help() {
    $@ --help | \
    sed \
        -e 's/\(-\S\)\(\S\+\)/\1- <\2> /' \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-T;[`_choice_device`]' \

}

_choice_device() {
    cat <<-'EOF'
dvi	TeX DVI format (postprocessor is grodvi).
html	HTML and XHTML output (preprocessors are soelim and pre-grohtml, postprocessor is post-grohtml).
xhtml	HTML and XHTML output (preprocessors are soelim and pre-grohtml, postprocessor is post-grohtml).
lbp	Canon CAPSL printers (LBP-4 and LBP-8 series laser printers; postprocessor is grolbp).
lj4	HP LaserJet4 compatible (or other PCL5 compatible) printers (postprocessor is grolj4).
ps	PostScript output (postprocessor is grops).
pdf	Portable Document Format (PDF) output (postprocessor is gropdf).
ascii	7bit ASCII.
cp1047	Latin-1 character set for EBCDIC hosts.
latin1	ISO 8859-1.
utf8	Unicode character set in UTF-8 encoding.
X75	75dpi resolution, 10pt document base font.
X75-12	75dpi resolution, 12pt document base font.
X100	100dpi resolution, 10pt document base font.
X100-12	100dpi resolution, 12pt document base font.
EOF
}
