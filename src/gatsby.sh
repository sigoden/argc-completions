_patch_help() { 
    COLUMNS=200
    _common_edit() {
        sed -e 's/^  \(\(-\S\+\)\( -\S\+\)*\)\(.*\)\[string\].*/  \1 <string> \4/' -e  's/^  \(\(-\S\+\)\( -\S\+\)*\)\(.*\)\[boolean\].*/  \1 \4/' \
            -e '/^  -.*-file <string>/ s/<string>/<file>/' \

    }

    if [[ "$*" == "gatsby" ]]; then
        _patch_help_run_help $@ | \
        sed '/^Commands:/,/^$/ s/  gatsby /    /' | \
        _common_edit \

    elif [[ $# -eq 2 ]]; then
        echo "Usage: "$(gatsby --help | sed -n '/^  gatsby '$2'/ p' | sed -e 's/^  //' -e 's/  .*//')
        _patch_help_run_help $@ | _common_edit

    else
        _patch_help_run_help $@ | _common_edit
    fi
}

_patch_table() {
    if [[ "$*" == "gatsby options" ]]; then
        _patch_table_edit_arguments 'cmd;[set]' 'key;[pm|package-manager]' 'value;[npm|yarn]'
    elif [[ "$*" == "gatsby plugin" ]]; then
        _patch_table_edit_arguments 'cmd;[docs|ls]'
    else
        cat
    fi
}