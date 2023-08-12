_patch_help() { 
    if [[ "$*" == "micro -plugin" ]]; then
        echo "Commands:"
        $1 --help | sed -n '/^-plugin/ {N; s/^-plugin \(\S\+\).*\n\(.*\)$/  \1    \2/p}'

    elif [[ "$*" == "micro -plugin "* ]]; then
        :;

    else
        $@ --help | sed "/^Micro's plugin's/,/^$/ d"
        echo "More options:"
        $1 -options | sed -n '/^-/ p' 
    fi
}

_patch_table() { 
    if [[ "$*" == "micro" ]]; then
        _patch_table_edit_commands \
            ';;' \
            '-plugin;;Plugin management'  \

    else
        cat
    fi

}
