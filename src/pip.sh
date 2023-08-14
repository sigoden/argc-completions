_patch_help() { 
    if [[ "$*" == "pip" ]]; then
        TERM_WIDTH=200 _patch_help_run_help $@
    else
        cat <<-'EOF' | _patch_help_embed_help $@
# config
## list - List the active configuration (or from the file specified)
## edit - Edit the configuration file in an editor
    --editor <editor-path>      Editor to use to edit the file
## get <key> - Get the value associated with command.option
## set <key> <value> - Set the command.option=value
## unset <key> - Unset the value associated with command.option
## debug - List the configuration files and values defined under them

# cache
## dir - Show the cache directory.
## info - Show information about the cache.
## list <pattern> - List filenames of packages stored in the cache.
    --format human|abspath      Select the output format
## remove <pattern> - Remove one or more package from the cache.
## purge - Remove all items from the cache.
EOF
        if [[ "$#" -le 2 ]]; then
            TERM_WIDTH=200 _patch_help_run_help $@
        fi
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '--exists-action;[`_choice_exists_action`]' \
            '--implementation;[pp|jy|cp|ip]' \
            '--progress-bar;[off|on|ascii|pretty|emoji]' \
    )"

    if [[ "$*" == "pip config"* ]]; then
        echo "$table" | _patch_table_edit_arguments 'key;[`_choice_config_key`]'

    elif [[ "$*" == "pip freeze" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--all;[distribute|setuptools|wheel|pip];Do not skip these packages in the output.' \
            '--exclude;[`_choice_package`]' \

    elif [[ "$*" == "pip hash" ]]; then
        echo "$table" | _patch_table_edit_options '--algorithm;[sha256|sha384|sha512]'

    elif [[ "$*" == "pip install" ]]; then
        echo "$table" | _patch_table_edit_options '--upgrade-strategy;[only-if-needed|eager]'

    elif [[ "$*" == "pip list" ]]; then
        echo "$table" | _patch_table_edit_options '--exclude;[`_choice_package`]'

    elif [[ "$*" == "pip show" ]] \
      || [[ "$*" == "pip uninstall" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;' 'package;[`_choice_package`]'

    else
        echo "$table"
    fi
}

_choice_config_key() {
    pip config $(_argc_util_param_select_options --global --site --user) list | \
    gawk -F= '{gsub("\047", "", $2); print $1 "\t" $2}'
}

_choice_exists_action() {
    cat <<-'EOF'
s	switch
i	ignore
w	wipe
b	backup
a	abort
EOF
}

_choice_package() {
    pip list --format json | yq '.[] | .name + "	" + .version'
}
