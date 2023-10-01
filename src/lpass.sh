_patch_help() {
    if [[ "$*" == "lpass" ]]; then
        echo Commands:
        $@ --help 2>&1 | \
        sed -n 's/^  lpass \(\w\+\).*/  \1/p'
    elif [[ "$*" == "lpass login" ]]; then
        $@ --help 2>&1 | \
        sed 's/\[--plaintext-key \[--force, -f\]\]/[--plaintext-key] [--force, -f]/' | \
        _patch_help_preprocess_usageonly $@
    elif [[ "$*" == "lpass share" ]]; then
        echo Commands:
        $@ --help 2>&1 | sed -n 's/^\s*lpass share \(\S\+\).*/  \1/p'
    else
        $@ --help 2>&1 | _patch_help_preprocess_usageonly $@
    fi
}

_patch_table() {
    _patch_table_edit_arguments \
        'name;[`_choice_name`]' \
        'name-uniqueid;[`_choice_name`]' \
        'uniquename-uniqueid;[`_choice_name`]' \
        'group;[`_choice_group`]' \
    
}

_choice_name() {
    lpass ls | grep "^$ARGC_CWORD" | sed -e "s/ \[id.*//g"   
    lpass ls | grep "/$ARGC_CWORD" | sed -e "s/ \[id.*//g" | gawk -F '/' '{print $NF}'
}

_choice_group() {
    lpass ls | grep "^$ARGC_CWORD.*/" | gawk -F '/' '{print $1}'   
}
