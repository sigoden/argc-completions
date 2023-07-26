_patch_help() { 
    if [[ "$*" == "apt" ]]; then
        $@ --help | sed '/^Commands:/,/^$/ s/ - /  /'
        cat <<-'EOF'
Options:
    -o, --option <config-string>        Set a Configuration Option
    -c, --config-file <config-file>     Specify a configuration file to use
    -t <target-release>                 This option controls the default input to the policy engine
EOF

    elif [[ "$*" == "apt add-repository" ]]; then
        $@ --help
    
    elif [[ "$*" == "apt build" ]]; then
        $@ --help | \
        sed \
            -e 's/, --build=\S\+/            /' \
            -e '/-s\[sAkurKUR\]/ c\  -ss\n  -sA\n  -sk\n  -su\n  -sr\n  -sK\n  -sU\n  -sR\n' \

    else
        cat <<-'EOF' | _patch_help_select_subcmd $@
apt build-dep <pkg>
apt changelog <pkg>
apt contains <filename-pattern>
apt content <pkg>...
apt deb <file:.deb>
apt depends <pkg>...
apt download <pkg>
apt hold <pkg>...
apt install <pkg>...
    --reinstall                 Reinstall package
    --no-install-recommends     Do not consider recommended packages as a dependency for installin.
apt list <pattrn>
    --installed                 Installed packages
    --upgradable                Upgradable packages
    --all-versions              Show all versions of any package
apt policy <pkg>...
apt purge <pkg>...
apt recommends <pkg>
apt rdepends <pkg>...
apt reinstall <pkg>...
apt remove <pkg>...
apt search <pattern>
apt show <pkg>...
apt showsrc <pkg>...
apt source <pkg>...
apt unhold <pkg>...
apt upgrade [pkg]...
    --with-new-pkgs             Allow installing new packages
EOF
    fi
}

_patch_table() { 
    if [[ "$*" == "apt" ]]; then
        _patch_table_edit_options \
            '--option;[`_choice_option`]' \
            '-t;[`_choice_target`]' \

    elif [[  "$*" == "apt build" ]]; then
        _patch_table_edit_options \
            '--build;*,[`_choice_build`]' \

    elif [[  "$*" == "apt build-dep" ]] \
      || [[  "$*" == "apt changelog" ]] \
      || [[  "$*" == "apt content" ]] \
      || [[  "$*" == "apt depends" ]] \
      || [[  "$*" == "apt download" ]] \
      || [[  "$*" == "apt install" ]] \
      || [[  "$*" == "apt policy" ]] \
      || [[  "$*" == "apt recommands" ]] \
      || [[  "$*" == "apt rdepends" ]] \
      || [[  "$*" == "apt show" ]] \
      || [[  "$*" == "apt showsrc" ]] \
      || [[  "$*" == "apt source" ]] \
    ; then
        _patch_table_edit_arguments 'pkg;[`_choice_pkg`]'

    elif [[  "$*" == "apt hold" ]] \
      || [[  "$*" == "apt purge" ]] \
      || [[  "$*" == "apt reinstall" ]] \
      || [[  "$*" == "apt remove" ]] \
    ; then
        _patch_table_edit_arguments 'pkg;[`_choice_installed_pkg`]'

    elif [[  "$*" == "apt unhold" ]]; then
        _patch_table_edit_arguments 'pkg;[`_choice_hold_pkg`]'

    elif [[  "$*" == "apt upgrade" ]]; then
        _patch_table_edit_arguments 'pkg;[`_choice_upgradable_pkg`]'

    else
        cat
    fi
}

_choice_option() {
    apt-config dump | gawk '{print $1}'
}

_choice_target() {
    printf "%s\n" stable testing unstable
}

_choice_build() {
    printf "%s\n" ull source binary any all
}

_choice_pkg() {
    if [[ -z "$ARGC_FILTER" ]]; then
        return
    fi
    apt list $ARGC_FILTER* | gawk -F/ '{if (NR>1) {print $1}}'
}

_choice_installed_pkg() {
    if [[ -n "$ARGC_FILTER" ]]; then
        pattern=$ARGC_FILTER*
    fi
    apt list --installed $pattern | gawk -F/ '{if (NR>1) {print $1}}'
}

_choice_upgradable_pkg() {
    if [[ -n "$ARGC_FILTER" ]]; then
        pattern=$ARGC_FILTER*
    fi
    apt list --upgradable $pattern | gawk -F/ '{if (NR>1) {print $1}}'
}

_choice_hold_pkg() {
    apt held
}