_patch_help() { 
    _common_edit() {
        gawk '{
            if (match($0, /^OPTIONS/)) {
                printLine = 1
            } else if (match($0, /^[A-Z]/)) {
                printLine = 0
            }
            if (printLine == 1) {
                if (match($0, /^(       -\S+) [A-Z]/, arr)) {
                    print arr[1] "  " substr($0, RLENGTH)
                } else if (match($0, /^       •   /)) {
                    line = substr($0, RLENGTH + 1)
                    if (match(line, /: /)) {
                        print "    " substr(line, 1, RSTART - 1)
                        print "           " substr(line, RSTART + 1)
                    } else {
                        print "    " line
                    }
                } else {
                    print $0
                }
            }
        }'
    }
    if [[ "$*" == "bundle" ]]; then
       $@ --help | sed 's/       bundle \([a-z_-]\+\).*/  \1/'
    elif [[ "$*" == "bundle config" ]]; then
        $@ --help | _common_edit
        cat <<-'EOF'
Commands:
    list        List config
    get         Get a config item
    set         Set a config item
    unset       Unset a config item
EOF

    elif [[ "$*" == "bundle config "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
bundle config get <name>
    --global
    --local
bundle config set <name> <value>
    --global
    --local
bundle config unset <name>
    --global
    --local
EOF

    elif [[ "$*" == "bundle plugin" ]]; then
        $@ --help | _common_edit
        cat <<-'EOF'
Commands:
    install     Install plugins.
    uninstall   Uninstall given list of plugins.
    list        List the installed plugins and available commands.
EOF

    elif [[ "$*" == "bundle plugin "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
bundle plugin install
  --source <value>     URL of the RubyGems source to fetch the plugin from
  --version <value     The version of the plugin to fetch
  --git <value>        URL of the git repo to fetch from
  --local-git <path>   Path of the local git repo to fetch from
  --branch <value>     The git branch to checkout
  --ref <value>        The git revision to check out
bundle plugin uninstall <plugin...>
  --all       Uninstall all the installed plugins.
EOF

    else
        $@ --help | _common_edit
    fi
}

_patch_table() { 
    if [[ "$*" == "bundle" ]]; then
        _patch_table_edit_commands \
            'cache(cache, package, pack)' \
            'pack' \
            'package' \

    elif [[ "$*" == "bundle add" ]] ; then
        _patch_table_edit_options \
            '--branch(<value>)' \
            '--git(<value>)' \
            '--github(<value>)' \
            '--group(<value>)' \
            '--path(<path>)' \
            '--ref(<value>)' \
            '--source(<value>)' \
            '--version(<value>)' \
        | \
        _patch_table_edit_arguments ';;' 'gem;[`_choice_package`]'

    elif [[ "$*" == "bundle binstubs" ]] ; then
        _patch_table_edit_options \
            '--path(<path>)' \
            '--shebang(<value>)' \
        | \
        _patch_table_edit_arguments ';;' 'gem;[`_choice_package`]'

    elif [[ "$*" == "bundle check" ]] ; then
        _patch_table_edit_options \
            '--gemfile(<file>)' \
            '--path(<path>)' \

    elif [[ "$*" == "bundle init" ]] ; then
        _patch_table_edit_options \
            '--gemfile(<file>)' \
            '--gemspec(<file:.gemspec>)' \


    elif [[ "$*" == "bundle outdated" ]] ; then
        _patch_table_edit_options \
            '--source(<value>)' \
        | \
        _patch_table_edit_arguments ';;' 'gem;*[`_choice_dependency`]'

    elif [[ "$*" == "bundle open" ]] ; then
        _patch_table_edit_options \
            '--path(<path>)' \
        | \
        _patch_table_edit_arguments ';;' 'gem;*[`_choice_dependency`]'

    elif [[ "$*" == "bundle plugin uninstall" ]] ; then
        _patch_table_edit_arguments ';;' 'plugin;*[`_choice_plugin`]'

    elif [[ "$*" == "bundle remove" ]] ; then
        _patch_table_edit_arguments ';;' 'gem;*[`_choice_dependency`]'

    elif [[ "$*" == "bundle update" ]]; then
        _patch_table_edit_arguments ';;' 'gem;*[`_choice_dependency`]'

    elif [[ "$*" == "bundle viz" ]] ; then
        _patch_table_edit_options \
            '--file(<value>)' \
            '--format(<value>)' \
            '--format(<value>)' \
            '--without(<value...>)' \

    else
        cat
    fi
}

_choice_dependency() {
    bundle list --name-only
}

_choice_package() {
    if [[ "${#ARGC_FILTER}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_FILTER" | sed -n 's/^\(\S\+\) (\(.*\))$/\1\t\2/p'
}

_choice_plugin() {
    bundle plugin list | sed -n 's/^\([a-z]\S\+\).*/\1/p'
}