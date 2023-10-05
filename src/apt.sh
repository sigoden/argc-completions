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
        cat <<-'EOF' | _patch_help_embed_help $@
# build-dep <pkg>
# changelog <pkg>
# contains <filename-pattern>
# content <pkg>...
# deb <file:.deb>
# depends <pkg>...
# download <pkg>
# hold <pkg>...
# install <pkg>...
    --reinstall                 Reinstall package
    --no-install-recommends     Do not consider recommended packages as a dependency for installin.
# list <pattrn>
    --installed                 Installed packages
    --upgradable                Upgradable packages
    --all-versions              Show all versions of any package
# policy <pkg>...
# purge <pkg>...
# recommends <pkg>
# rdepends <pkg>...
# reinstall <pkg>...
# remove <pkg>...
# search <pattern>
# show <pkg>...
# showsrc <pkg>...
# source <pkg>...
# unhold <pkg>...
# upgrade [pkg]...
    --with-new-pkgs             Allow installing new packages
EOF
    fi
}

_patch_table() { 
    if [[ "$*" == "apt" ]]; then
        _patch_table_edit_options \
            '--option;[`_choice_option`]' \
            '-t;[`_choice_target`]' \

    elif [[ "$*" == "apt build" ]]; then
        _patch_table_edit_options \
            '--build;*,[`_choice_build`]' \

    elif [[ "$*" == "apt build-dep" ]] \
      || [[ "$*" == "apt changelog" ]] \
      || [[ "$*" == "apt content" ]] \
      || [[ "$*" == "apt depends" ]] \
      || [[ "$*" == "apt download" ]] \
      || [[ "$*" == "apt install" ]] \
      || [[ "$*" == "apt policy" ]] \
      || [[ "$*" == "apt rdepends" ]] \
      || [[ "$*" == "apt show" ]] \
      || [[ "$*" == "apt showsrc" ]] \
      || [[ "$*" == "apt source" ]] \
      || [[ "$*" == "apt recommands" ]] \
    ; then
        _patch_table_edit_arguments 'pkg;[`_choice_package`]'

    elif [[ "$*" == "apt hold" ]] \
      || [[ "$*" == "apt purge" ]] \
      || [[ "$*" == "apt reinstall" ]] \
      || [[ "$*" == "apt remove" ]] \
    ; then
        _patch_table_edit_arguments 'pkg;[`_choice_installed_package`]'

    elif [[ "$*" == "apt unhold" ]]; then
        _patch_table_edit_arguments 'pkg;[`_choice_hold_package`]'

    elif [[ "$*" == "apt upgrade" ]]; then
        _patch_table_edit_arguments 'pkg;[`_choice_upgradable_package`]'

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

_choice_package() {
    apt-cache --no-generate pkgnames
}

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}

_choice_hold_package() {
    apt held
}

_choice_upgradable_package() {
    apt list --upgradable "$ARGC_CWORD*" | gawk -F/ '{if (NR>1) {print $1}}'
}
