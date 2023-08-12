_patch_help() { 
    if [[ "$*" == "pip cache" ]] \
    || [[ "$*" == "pip config" ]] \
    ; then
        TERM_WIDTH=200 _patch_help_run_help $@ | gawk '{
            if (match($0, /  Subcommands:/)) {
                print "Commands:"
                commandZone = 1
            } else if (commandZone == 1) {
                if (match($0, /^\s*$/)) {
                    if (hasCommand == 1) {
                        print "\ndescription:\n"
                        commandZone = 0
                    }
                } else if (match($0, /\s*-\s*(\S+): (.*)$/, arr)) {
                    print "  " arr[1] "    " arr[2]
                    hasCommand = 1
                }
            } else {
                print $0
            }
        }'

    elif [[ "$*" == "pip cache "* ]] \
      || [[ "$*" == "pip config "* ]] \
    ; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
pip config edit
    --editor <editor-path>      Editor to use to edit the file
pip config get <key>
pip config set <key> <value>
pip config unset <key>
pip cache list <pattern>
    --format human|abspath      Select the output format
pip cache remove <pattern>
EOF

    else
        TERM_WIDTH=200 _patch_help_run_help $@
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
