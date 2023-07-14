_patch_help() { 
    if [[ "$*" == "brew" ]]; then
        cat <<-'EOF'
OPTIONS:
    --cache [formula|cask ...]          Display Homebrew´s download cache. See also HOMEBREW_CACHE.
    --caskroom [cask ...]               Display Homebrew´s Caskroom path.
    --cellar [formula ...]              Display Homebrew´s Cellar path. 
    --env                               Summarise Homebrew´s build environment as a plain list.
    --prefix                            Display Homebrew´s install path. Default:
    --repository, --repo [tap ...]      Display where Homebrew´s git repository is located.
    --version, -v                       Print the version numbers of Homebrew
EOF
        echo "COMMANDS"
        _patch_help_run_man brew | \
            sed -n '/^   install formula/,/^CUSTOM EXTERNAL COMMANDS/ p' | \
            sed \
                -e '/^\s\+-/ d' \
                -e '/^              \S/ d' \
                -e 's/^   \(\([a-z0-9-]\+, \)\+\([a-z0-9-]\+\)\) .*$/  \1/' \
                -e 's/^   \([a-z0-9-]\+\) .*$/  \1/' \
                -e 's/^   \([a-z0-9-]\+\), -.*$/  \1/' \
                -e 's/^       \(\S\)/        \1/'
    elif [[ "$*" == "brew rubocop" ]] || \
        [[ "$*" == "brew casks" ]] || \
        [[ "$*" == "brew formulae" ]] || \
        [[ "$*" == "brew shellenv" ]]; then
        :;
    elif [[ "$*" == "brew services" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    list            List information about all managed services for the current user (or root).
    info            List all managed services for the current user (or root).
    run             Run the service formula without registering to launch at login (or boot).
    start           Start the service formula immediately and register it to launch at login (or boot).
    stop            Stop the service formula immediately and unregister it from launching at login (or boot).
    kill            Stop the service formula immediately but keep it registered to launch at login (or boot).
    restart         Stop (if necessary) and start the service formula immediately and register it to launch at login (or boot).
    cleanup         Remove all unused services.
EOF
    elif [[ "$*" == "brew services "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
brew services list
    --json
brew services info [formula]
    --all
    --json
brew services run [formula]
    --all
brew services start [formula]
    --all
    --file <file>
brew services stop [formula]
    --all
brew services kill [formula]
    --all
brew services restart [formula]
    --all
brew services cleanup
    --all
EOF
    elif [[ "$*" == "brew bundle" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    dump        Write all installed casks/formulae/images/taps into a Brewfile in the current directory.
    cleanup     Uninstall all dependencies not listed from the Brewfile.
    check       Check if all dependencies are installed from the Brewfile.
    list        List all dependencies present in the Brewfile.
    exec        Run an external command in an isolated build environment based on the Brewfile dependencies.
EOF
    elif [[ "$*" == "brew bundle "* ]]; then
        :;
    elif [[ "$*" == "brew autoupdate" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    stop        Stop autoupdating, but retain plist and logs.
    delete      Cancel the autoupdate, delete the plist and logs.
    status      Prints the current status of this tool.
    version     Output this tool's current version, and a short changelog.
EOF
    elif [[ "$*" == "brew autoupdate "* ]]; then
        :;
    else
        $@ --help | sed 's/^Usage: brew \(\S\+\)\(, [a-z0-9-]\+\)\+/Usage: brew \1/'
    fi
}

_patch_table() {
    if [[ "$*" == "brew" ]]; then
        _patch_table_edit_options \
            '--cache;*[`_choice_suggest_formula_cask`]' \
            '--cellar;*[`_choice_suggest_formula`]' | \
        _patch_table_edit_commands \
            'uninstall(uninstall, remove, rm)' \
            'list(list, ls)' \
            'doctor(doctor, dr)' \
            'home(home, homepage)' \
            'info(info, abv)' \
            'link(link, ls)' \
            'livecheck(livecheck, lc)' \
            'typecheck(typecheck, tc)'
    elif [[ "$*" == "brew outdated" ]]; then
        _patch_table_edit_arguments \
            'formula|cask;[`_choice_outdated_formula_cask`]'
    elif [[ "$*" == "brew bottle" ]]; then
        _patch_table_edit_arguments \
            'installed_formula|file;[`_choice_installed_formula_file`]'
    elif [[ "$*" == "brew style" ]]; then
        _patch_table_edit_arguments \
            ';;' 'file|tap|formula|cask;*[`_choice_file_tap_formula_cask`]'
    elif [[ "$*" == "brew "* ]]; then
        _patch_table_edit_arguments \
            'formula|cask;[`_choice_suggest_formula_cask`]' \
            'installed_formula|installed_cask;[`_choice_installed_formula_cask`]' \
            'outdated_formula|outdated_cask;[`_choice_outdated_formula_cask`]' \
            'installed_formula;[`_choice_installed_formula`]' \
            'formula;[`_choice_suggest_formula`]' \
            'cask|tap;[`_choice_cask_tap`]' \
            'cask;[`_choice_suggest_cask`]' \
            'tap;[`_choice_tap`]' \
            'diagnostic_check;[`_choice_suggest_diagnostic_check`]'
    fi
}

_choice_suggest_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_suggest_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_suggest_cask
    fi
}

_choice_installed_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_installed_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_installed_cask
    fi
}

_choice_outdated_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_outdated_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_outdated_cask
    fi
}

_choice_cask_tap() {
    _choice_suggest_cask
    _choice_tap
}

_choice_installed_formula_file() {
    _argc_util_comp_file
    _choice_installed_formula
}

_choice_file_tap_formula_cask() {
    _argc_util_comp_file
    _argc_util_parallel _choice_suggest_cask ::: _choice_suggest_formula ::: _choice_tap
}

_choice_suggest_formula() {
    brew formulae
}

_choice_installed_formula() {
    brew list --formula | sed 's/\s\+/\n/'
}

_choice_outdated_formula() {
    brew outdated --formula | sed 's/\s/\t/'
}

_choice_suggest_cask() {
    brew casks
}

_choice_installed_cask() {
    brew list --cask | sed 's/\s\+/\n/'
}

_choice_outdated_cask() {
    brew outdated --cask | sed 's/\s/\t/'
}

_choice_tap() {
    brew tap
}

_choice_suggest_diagnostic_check() {
    brew doctor --list-checks
}

_choice_suggest_service() {
   brew services list | gawk '{if (NR > 1) {print $1}}'
}