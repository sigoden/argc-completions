_patch_help() { 
    echo "Usage: pandoc [options] files..."
    _patch_help_run_man pandoc | \
    sed -n '/^OPTIONS/,/^EXIT/ {//!p}' | \
    sed -e 's/--reference-location = /--reference-location=/'
}

_patch_table() { 
    _patch_table_edit_options \
        '-f;[`_choice_input_format`]' \
        '-r;[`_choice_input_format`]' \
        '--from;[`_choice_input_format`]' \
        '--read;[`_choice_input_format`]' \
        '-t;[`_choice_output_format`]' \
        '-w;[`_choice_output_format`]' \
        '--to;[`_choice_output_format`]' \
        '--write;[`_choice_output_format`]' \
        '--output;[docx|odt|epub2|epub3]' \
        '--highlight-style;[`_choice_highlight_style`]' \
        '--print-highlight-style;[`_choice_highlight_style`]' \
        '--list-extensions;[`_choice_format`]' \

}

_choice_input_format() {
    pandoc --list-input-formats
}

_choice_output_format() {
    pandoc --list-output-formats
}

_choice_highlight_style() {
    _rargc_util_comp_file -exts=.theme
    printf "%s\n" pygments kate monochrome breezeDark espresso zenburn haddock tango
}

_choice_format() {
    _argc_util_parallel _choice_input_format :::  _choice_output_format
}