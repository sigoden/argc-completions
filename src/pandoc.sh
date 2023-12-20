_patch_help() { 
    _patch_help_run_man $@ | \
    sed -n '/^OPTIONS/,/^EXIT/ {//!p}' | \
    sed \
        -e 's/--reference-location = /--reference-location=/' \
        -e 's/\[=true|false\]/{true|false}/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--from;[`_choice_input_format`]' \
        '--highlight-style;[`_choice_highlight_style`]' \
        '--list-extensions;[`_choice_format`]' \
        '--output; ;' \
        '--print-highlight-style;[`_choice_highlight_style`]' \
        '--read;[`_choice_input_format`]' \
        '--to;[`_choice_output_format`]' \
        '--write;[`_choice_output_format`]' \
        '-f;[`_choice_input_format`]' \
        '-r;[`_choice_input_format`]' \
        '-t;[`_choice_output_format`]' \
        '-w;[`_choice_output_format`]' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'

}

_choice_input_format() {
    pandoc --list-input-formats
}

_choice_output_format() {
    pandoc --list-output-formats
}

_choice_format() {
    _argc_util_parallel _choice_input_format :::  _choice_output_format
}

_choice_highlight_style() {
    _rargc_util_comp_file -exts=.theme
    printf "%s\n" pygments kate monochrome breezeDark espresso zenburn haddock tango
}
