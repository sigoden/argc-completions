_patch_help() { 
    if [[ "$*" == "tmux" ]]; then
        $@ --help 2>&1 | sed -e '{N; s/\n\s*/ /;}' | _patch_help_preprocess_usageonly $@
        echo "commands:"
        $@ list-commands | sed -e 's/^\([a-z0-9][a-z0-9-]\+\) (\(\S\+\)) .*/  \1, \2/' -e 's/\([a-z0-9][a-z0-9-]\+\) .*/  \1/'
    else
        $1 list-commands $2 | \
        sed 's/^\(\S\+\)\( (\(\S\+\))\)\?\(.*\)$/usage: tmux \1 \4/' | \
        _patch_help_preprocess_usageonly $@
    fi
}

_patch_table() { 
    if [[ "$*" == "tmux" ]]; then
        _patch_table_add_metadata combine-shorts

    elif [[ "$*" == "tmux list-commands" ]]; then
        _patch_table_edit_arguments 'command;[`_choice_command`]'
        
    elif [[ "$*" == "tmux split-window" ]]; then
        _patch_table_dedup_options -e

    else
        cat
    fi
}

_choice_command() {
    tmux list-commands | sed 's/^\(\S\+\)\( (\(\S\+\))\)\?\(.*\)$/\1\n\3/'
}
