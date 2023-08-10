_patch_help() {
    man --help | \
    sed \
        -e 's/--nh turn/--nh   turn/' \
        -e 's/--no-justification,\s\+--nj/--no-justification, --nj/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--pager(<PATH>)' \
        '--html;;use BROWSER to display HTML output' \
    | \
    _patch_table_edit_arguments ';;' 'PAGES;*[`_choice_page`]'
}


_choice_page() {
    if [[ -n $argc_local_file ]]; then
        _argc_util_comp_path exts=.man
    else
        man -k "$ARGC_FILTER" | sed 's/^\(\S\+\) \?(.*) \+- \(.*\)$/\1\t\2/' 
    fi
}