_patch_help() { 
    $@ --help-extra 
}

_patch_table() { 
    _patch_table_edit_commands ';;' | \
    _patch_table_edit_options \
        '--oem;[`_choice_oem`]' \
        '--psm;[`_choice_psm`]' \
        '-c;*[`_choice_set_var`]' \
        '-l;[`_choice_lang`]' \
    | \
    _patch_table_edit_arguments 'imagename(<file>)' 'outdir' 'configfile...'
}

_choice_lang() {
    tesseract --list-langs | tail -n +2
}

_choice_set_var() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        tesseract --print-parameters | tail -n +2 | gawk -F'\t' '{print $1 "=\x00\t" $3}'
    else
        tesseract --print-parameters | grep "\\$argc__kv_key" | gawk -F'\t' '{print $2}'
    fi
}

_choice_psm() {
    cat <<-'EOF'
0	Orientation and script detection (OSD) only.
1	Automatic page segmentation with OSD.
2	Automatic page segmentation, but no OSD, or OCR. (not implemented)
3	Fully automatic page segmentation, but no OSD. (Default)
4	Assume a single column of text of variable sizes.
5	Assume a single uniform block of vertically aligned text.
6	Assume a single uniform block of text.
7	Treat the image as a single text line.
8	Treat the image as a single word.
9	Treat the image as a single word in a circle.
10	Treat the image as a single character.
11	Sparse text. Find as much text as possible in no particular order.
12	Sparse text with OSD.
13	Raw line. Treat the image as a single text line,
EOF
}

_choice_oem() {
    cat <<-'EOF'
0	Legacy engine only.
1	Neural nets LSTM engine only.
2	Legacy + LSTM engines.
3	Default, based on what is available.
EOF
}
