_patch_help() { 
    _common_edit() {
        sed \
            -e '/^\s*-/ s/ (absent=.*)//' \
            -e '/^\s*-/ s/ (default=.*)//' \
            -e 's/ (required)$//' \

    }
    if [[ "$*" == "opam" ]]; then
        $@ --help=plain | _common_edit

    elif [[ "$*" == "opam config "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
opam config list [PACKAGE]...
opam config expand STRING
opam config subst FILE...
opam config cudf-universe [FILE]
opam config pef-universe [FILE]
opam config set VAR VALUE
opam config unset VAR
opam config set-global VAR VALUE
opam config unset-global VAR
opam config var VAR
EOF

    elif [[ "$*" == "opam pin "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
opam pin scan DIR
opam pin add PACKAGE TARGET
opam pin remove NAMES...|TARGET
opam pin edit NAME
EOF

    elif [[ "$*" == "opam repository "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
opam repository add NAME [ADDRESS] [QUORUM] [FINGERPRINTS]
opam repository remove NAME...
opam repository set-repos NAME...
opam repository set-url NAME ADDRESS [QUORUM] [FINGERPRINTS]
opam repository list
EOF

    elif [[ "$*" == "opam switch "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
opam switch create SWITCH [COMPILER]
opam switch set SWITCH
opam switch remove SWITCH
opam switch export FILE
opam switch import FILE
opam switch reinstall [SWITCH]
opam switch list-available [PATTERN]
opam switch set-invariant PACKAGES
opam switch set-description STRING
opam switch link SWITCH [DIR]
opam switch install SWITCH
opam switch set-base PACKAGES
EOF

    else
        $@ --help=plain | _common_edit
    fi
}

_patch_table() { 
    table="$(
        _patch_table_edit_options \
            '--color;[always|never|auto]' \
            '--confirm-level;[ask|no|yes|unsafe-yes];Confirmation level' \
            '--help;[auto|pager|groff|plain]' \
            '--kind;[http|local|git|darcs|hg]' \
            '--switch;[`_choice_installed_switch`]' \
            '--shell;[bash|sh|csh|zsh|fish]' \
            '--columns;[`_choice_columns`]' \
            '--fields;[`_choice_columns`]' \
            '--has-flag;[light-uninstall|verbose|plugin|compiler|conf]' \
    )"

    if [[ "$*" == "opam" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'show(show, info)' \
            'info' \
            'repository(repository, remote)' \
            'remote' \
            'remove(remove, uninstall)' \
            'uninstall' \

    elif [[ "$*" == "opam install" ]] \
      || [[ "$*" == "opam show" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'packages;*[`_choice_package`]'

    elif [[ "$*" == "opam reinstall" ]] \
      || [[ "$*" == "opam remove" ]] \
      || [[ "$*" == "opam upgrade" ]] \
      || [[ "$*" == "opam source" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'packages;*[`_choice_package`]'

    elif [[ "$*" == "opam switch create" ]] \
      || [[ "$*" == "opam switch install" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'switch;*[`_choice_installed_switch`]'

    elif [[ "$*" == "opam config "* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'var;*[`_choice_var`]'

    elif [[ "$*" == "opam repository "* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;*[`_choice_repository`]'

    elif [[ "$*" == "opam update" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'names;*[`_choice_update`]'

    elif [[ "$*" == "opam pin add" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;*[`_choice_pin`]' 'target(<dir>)'

    elif [[ "$*" == "opam pin remove" ]] \
      || [[ "$*" == "opam unpin" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'name;*[`_choice_installed_pin`]'

    elif [[ "$*" == "opam var" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'var;*[`_choice_var`]'

    else
        echo "$table"

    fi
}

_choice_installed_switch() {
    opam switch list --safe -s
}

_choice_installed_switch() {
    opam switch list-available --safe -s
}

_choice_columns() {
    printf "%s\n" \
        name version package synopsis synopsis-or-target \
        description installed-version pin source-hash \
        opam-file all-installed-versions available-versions \
        all-versions repository installed-files vc-ref depext \

}

_choice_installed_package() {
    opam list --safe -i -s
}

_choice_package() {
    opam list --safe -a -s
}

_choice_var() {
    opam $(_argc_util_param_select_options --global) var --safe | \
    sed -n \
        -e '/^PKG:/ d' \
        -e '/<><>/ d' \
        -e 's%^\([^#= ][^ ]*\).*%\1%p' \

}

_choice_repository() {
    opam repository list --safe -a -s
}

_choice_pin() {
    opam pin list --safe -A -s   
}

_choice_installed_pin() {
    opam pin list --safe -s   
}

_choice_update() {
    _argc_util_parallel _choice_repository ::: _choice_installed_pin
}