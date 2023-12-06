#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --country <CC>     Set country code to CC and don't detect your IP address
# @flag -f --force           Don't check whether packages were already installed
# @option --gui <OPT>        Set OPT to kdialog or zenity to override GUI engine
# @flag --isolate            Install each app or game in its own bottle (WINEPREFIX)
# @flag --self-update        Update this application to the last version
# @flag --update-rollback    Rollback the last self update
# @flag -k --keep_isos       Cache isos (allows later installation without disc)
# @flag --no-clean           Don't delete temp directories (useful during debugging)
# @flag -q --unattended      Don't ask any questions, just install automatically
# @flag -r --ddrescue        Retry hard when caching scratched discs
# @flag -t --torify          Run downloads under torify, if available
# @flag --verify             Run (automated) GUI tests for verbs, if available
# @flag -v --verbose         Echo all commands as they are executed
# @flag -h --help            Display this message and exit
# @flag -V --version         Display version and exit
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    cat <<-'EOF' | _argc_util_comp_tv
list;;list categories
list-all;;list all categories and their verbs
apps=list;;list verbs in category 'applications'
benchmarks list;;list verbs in category 'benchmarks'
dlls=list;;list verbs in category 'dlls'
fonts=list;;list verbs in category 'fonts'
games=list;;list verbs in category 'games'
settings=list;;list verbs in category 'settings'
list-cached;;list cached-and-ready-to-install verbs
list-download;;list verbs which download automatically
list-manual-download;;list verbs which download with some help from the user
list-installed;;list already-installed verbs
arch=32,64;;create wineprefix with 32 or 64 bit, this option must be given before prefix=foobar and will not work in case of the default wineprefix.
prefix=foobar;;select WINEPREFIX=/home/sigo/.local/share/wineprefixes/foobar
annihilate;;Delete ALL DATA AND APPLICATIONS INSIDE THIS WINEPREFIX
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"