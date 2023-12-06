#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --tessdata-dir <PATH>                 Specify the location of tessdata path.
# @option --user-words <PATH>                   Specify the location of user words file.
# @option --user-patterns <PATH>                Specify the location of user patterns file.
# @option --dpi <VALUE>                         Specify DPI for input image.
# @option --loglevel <LEVEL>                    Specify logging level.
# @option -l[`_choice_lang`] <LANG[+LANG]>      Specify language(s) used for OCR.
# @option -c*[`_choice_set_var`] <VAR=VALUE>    Set value for config variables.
# @option --psm[`_choice_psm`] <NUM>            Specify page segmentation mode.
# @option --oem[`_choice_oem`] <NUM>            Specify OCR Engine mode.
# @flag -h --help                               Show minimal help message.
# @flag --help-extra                            Show extra help for advanced users.
# @flag --help-psm                              Show page segmentation modes.
# @flag --help-oem                              Show OCR Engine modes.
# @flag -v --version                            Show version information.
# @flag --list-langs                            List available languages for tesseract engine.
# @flag --print-fonts-table                     Print tesseract fonts table.
# @flag --print-parameters                      Print tesseract parameters.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"