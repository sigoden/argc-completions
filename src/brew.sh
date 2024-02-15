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
        _patch_help_run_man brew | \
        gawk '{
            if (match($0, /^ESSENTIAL COMMANDS/)) {
                print "COMMANDS:"
                run = 1
            } else if (match($0, /^CUSTOM EXTERNAL COMMANDS/)) {
                run = 0
            } else if (run == 1) {
                if (match($0, /^   [a-z0-9][a-z0-9_-]+/)) {
                    print " " substr($0, 1, RLENGTH)
                    command = 1
                } else if(match($0, /^       \S/)) {
                    if (command == 1) {
                        print "  " $0
                    }
                } else if (match($0, /^\s*$/)) {
                    command = 0
                }
            }
        }'
    else
        embed_help="$( \
        cat <<-'EOF' | _patch_help_embed_help $@
# autoupdate%
## stop - Stop autoupdating, but retain plist and logs.
## delete - Cancel the autoupdate, delete the plist and logs.
## status - Prints the current status of this tool.
## version - Output this tool's current version, and a short changelog.

# bundle%
## dump - Write all installed casks/formulae/images/taps into a Brewfile in the current directory.
## cleanup - Uninstall all dependencies not listed from the Brewfile.
## check - Check if all dependencies are installed from the Brewfile.
## list - List all dependencies present in the Brewfile.
## exec - Run an external command in an isolated build environment based on the Brewfile dependencies.

# casks
# formulae
# rubocop
# shellenv

# services%
## list - List information about all managed services for the current user (or root).
    --json
## info [formula] - List all managed services for the current user (or root).
    --all
    --json
## run [formula] - Run the service formula without registering to launch at login (or boot).
    --all
## start [formula] - Start the service formula immediately and register it to launch at login (or boot).
    --all
    --file <file>
## stop [formula] - Stop the service formula immediately and unregister it from launching at login (or boot).
    --all
## kill [formula] - Stop the service formula immediately but keep it registered to launch at login (or boot).
    --all
## restart [formula] - Stop (if necessary) and start the service formula immediately and register it to launch at login (or boot).
    --all
## cleanup - Remove all unused services.
    --all
EOF
)"
        echo "$embed_help"
        if [[ -z "$embed_help" ]] || grep -q __HELP_CMD__ <<<"$embed_help"; then 
            $@ --help | sed \
                -e 's/^Usage: brew \(\S\+\)\(, [a-z0-9-]\+\)\+/Usage: brew \1/' \
                -e 's/ \(--\S*dir\>\)/ \1 <dir>/' \
                -e 's/ \(--\S*file\>\)/ \1 <file>/' \

        fi
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--arch(<value>)' \
            '--language(<value>)' \
            '--os(<value>)' \
        | \
        _patch_table_edit_arguments \
            'formula-cask;[`_choice_suggest_formula_cask`]' \
            'installed_formula-installed_cask;[`_choice_installed_formula_cask`]' \
            'installed_formula;[`_choice_installed_formula`]' \
            'formula;[`_choice_suggest_formula`]' \
            'cask;[`_choice_suggest_cask`]' \
            'tap;[`_choice_tap`]' \
    )"
    if [[ "$*" == "brew" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--cache;*[`_choice_suggest_formula_cask`]' \
            '--cellar;*[`_choice_suggest_formula`]' \
        | \
        _patch_table_edit_commands \
            'uninstall(uninstall, remove, rm)' \
            'list(list, ls)' \
            'doctor(doctor, dr)' \
            'home(home, homepage)' \
            'info(info, abv)' \
            'link(link, ls)' \
            'livecheck(livecheck, lc)' \
            'typecheck(typecheck, tc)' \

    elif [[ "$*" == "brew analytics" ]] \
      || [[ "$*" == "brew developer" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'subcommand;[state|on|off]' \

    elif [[ "$*" == "brew completions" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'subcommand;[state|link|unlink]' \

    elif [[ "$*" == "brew doctor" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'diagnostic_check;[`_choice_suggest_diagnostic_check`]' \

    elif [[ "$*" == "brew fetch" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--bottle-tag(<value>)' \

    elif [[ "$*" == "brew outdated" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'formula-cask;[`_choice_outdated_formula_cask`]' \

    elif [[ "$*" == "brew upgrade" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'outdated_formula-outdated_cask;[`_choice_outdated_formula_cask`]' \

    elif [[ "$*" == "brew bottle" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'installed_formula-file;[`_choice_installed_formula_file`]' \

    elif [[ "$*" == "brew bump-cask-pr" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--fork-org(<value>)' \
            '--message(<value>)' \
            '--sha256(<value>)' \
            '--url(<value>)' \
            '--version(<value>)' \
            '--version-arm(<value>)' \
            '--version-intel(<value>)' \

    elif [[ "$*" == "brew bump-formula-pr" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--fork-org(<value>)' \
            '--message(<value>)' \
            '--mirror(<value>)' \
            '--python-exclude-packages(<value>...)' \
            '--python-extra-packages(<value>...)' \
            '--python-package-name(<value>)' \
            '--revision(<value>)' \
            '--sha256(<value>)' \
            '--tag(<value>)' \
            '--url(<value>)' \
            '--version(<value>)' \

    elif [[ "$*" == "brew bump-unversioned-casks" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--limit(<value>)' \
        | \
        _patch_table_edit_arguments \
            'cask-tap;[`_choice_cask_tap`]' \

    elif [[ "$*" == "brew contributions" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--csv(<value>)' \
            '--from(<value>)' \
            '--repositories(<value>)' \
            '--to(<value>)' \
            '--user(<value>)' \

    elif [[ "$*" == "brew create" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--set-license(<value>)' \
            '--set-name(<value>)' \
            '--set-version(<value>)' \

    elif [[ "$*" == "brew dispatch-build-bottle" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--issue(<value>)' \
            '--macos(<value>)' \
            '--tap(<value>)' \
            '--timeout(<value>)' \
            '--workflow(<value>)' \

    elif [[ "$*" == "brew install-bundler-gems" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--add-groups(<value>)' \
            '--groups(<value>)' \

    elif [[ "$*" == "brew pr-automerge" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--tap(<value>)' \
            '--with-label(<value>)' \
            '--without-labels(<value>)' \
            '--workflow(<value>)' \
    
    elif [[ "$*" == "brew pr-publish" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--branch(<value>)' \
            '--message(<value>)' \
            '--tap(<value>)' \
            '--workflow(<value>)' \

    elif [[ "$*" == "brew pr-pull" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--artifact(<value>)' \
            '--committer(<value>)' \
            '--ignore-missing-artifacts(<value>)' \
            '--message(<value>)' \
            '--root-url(<value>)' \
            '--root-url-using(<value>)' \
            '--tap(<value>)' \
            '--workflows(<value>)' \

    elif [[ "$*" == "brew pr-upload" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--committer(<value>)' \
            '--root-url(<value>)' \
            '--root-url-using(<value>)' \

    elif [[ "$*" == "brew prof" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;~[`_choice_prof_command`]' \

    elif [[ "$*" == "brew style" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--except-cops(<value>)' \
            '--only-cops(<value>)' \
        | \
        _patch_table_edit_arguments \
            ';;' 'file-tap-formula-cask;*[`_choice_file_tap_formula_cask`]' \

    elif [[ "$*" == "brew update-python-resources" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--exclude-packages(<value>)' \
            '--extra-packages(<value>)' \
            '--package-name(<value>)' \
            '--version(<value>)' \

    elif [[ "$*" == "brew update-test" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--before(<value>)' \
            '--commit(<value>)' \

    elif [[ "$*" == "brew alias" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'alias;*[`_choice_alias`]' \

    elif [[ "$*" == "brew services"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'formula;[`_choice_suggest_service`]' \

    elif [[ "$*" == "brew test-bot" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--git-email(<value>)' \
            '--git-name(<value>)' \
            '--root-url(<value>)' \

    elif [[ "$*" == "brew which-formula" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \

    else
        echo "$table"
    fi
}

_choice_suggest_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_suggest_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_suggest_cask
    fi
}

_choice_suggest_formula() {
    brew formulae
}

_choice_installed_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_installed_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_installed_cask
    fi
}

_choice_suggest_diagnostic_check() {
    brew doctor --list-checks
}

_choice_installed_formula() {
    brew list --formula | sed 's/\s\+/\n/'
}

_choice_outdated_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_outdated_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_outdated_cask
    fi
}

_choice_tap() {
    brew tap
}

_choice_installed_formula_file() {
    _argc_util_comp_path
    _choice_installed_formula
}

_choice_suggest_cask() {
    brew casks
}

_choice_cask_tap() {
    _choice_suggest_cask
    _choice_tap
}

_choice_prof_command() {
    _argc_util_comp_subcommand 0 brew
}

_choice_file_tap_formula_cask() {
    _argc_util_comp_path
    _argc_util_parallel _choice_suggest_cask ::: _choice_suggest_formula ::: _choice_tap
}

_choice_alias() {
    brew alias | sed "s/^brew alias \([^=]\+\)='\(.*\)'$/\1\t\2/"   
}

_choice_suggest_service() {
    brew services list | gawk '{if (NR > 1) {print $1}}'
}

_choice_installed_cask() {
    brew list --cask | sed 's/\s\+/\n/'
}

_choice_outdated_cask() {
    brew outdated --cask | sed 's/\s/\t/'
}

_choice_outdated_formula() {
    brew outdated --formula | sed 's/\s/\t/'
}
