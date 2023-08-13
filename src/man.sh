_patch_help() {
    man --help | \
    sed \
        -e 's/--nh turn/--nh   turn/' \
        -e 's/--no-justification,\s\+--nj/--no-justification, --nj/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--html;;use BROWSER to display HTML output' \
        '--pager(<PATH>)' \
    | \
    _patch_table_edit_arguments ';;' 'PAGES;*[`_choice_page`]'
}

_choice_page() {
    if [[ -n $argc_local_file ]]; then
        _argc_util_comp_path exts=.man
    else
        len=${#argc__positionals[@]}
        if [[ $len -gt 1 ]]; then
            prefix=$(printf "%s-" "${argc__positionals[@]:0:$((len-1))}")
        else
            prefix=""
        fi
        search="^$prefix$ARGC_FILTER"
        man -k "$search" | sed 's/^'$prefix'\(\S\+\) \?(.*) \+- \(.*\)$/\1\t\2/' 
    fi
}
