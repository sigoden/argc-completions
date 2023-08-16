_patch_help() { 
    if [[ $# -eq 3 ]]; then
        embed_help="$( \
        cat <<-'EOF' | _patch_help_embed_help $@
# config
## list [PACKAGE]...
## expand STRING
## subst FILE...
## cudf-universe [FILE]
## pef-universe [FILE]
## set VAR VALUE
## unset VAR
## set-global VAR VALUE
## unset-global VAR
## var VAR

# pin
## scan DIR
## add PACKAGE TARGET
## remove NAMES...|TARGET
## edit NAME

# repository
## add NAME [ADDRESS] [QUORUM] [FINGERPRINTS]
## remove NAME...
## set-repos NAME...
## set-url NAME ADDRESS [QUORUM] [FINGERPRINTS]
## list

# switch
## create SWITCH [COMPILER]
## set SWITCH
## remove SWITCH
## export FILE
## import FILE
## reinstall [SWITCH]
## list-available [PATTERN]
## set-invariant PACKAGES
## set-description STRING
## link SWITCH [DIR]
## install SWITCH
## set-base PACKAGES
EOF
)"
        echo "$embed_help"
    fi

    if [[ $# -le 2 ]] \
    || [[ "$*" == "opam admin "* ]] \
    || grep -q __HELP_CMD__ <<<"$embed_help" \
    ; then
        $@ --help=plain | \
        sed \
            -e '/^\s*-/ s/ (absent=.*)//' \
            -e '/^\s*-/ s/ (default=.*)//' \
            -e 's/ (required)$//' \

    fi

}

_patch_table() { 
    table="$(
        _patch_table_edit_options \
            '--color;[always|never|auto]' \
            '--columns;[`_choice_columns`]' \
            '--confirm-level;[ask|no|yes|unsafe-yes];Confirmation level' \
            '--fields;[`_choice_columns`]' \
            '--has-flag;[light-uninstall|verbose|plugin|compiler|conf]' \
            '--help;[auto|pager|groff|plain]' \
            '--kind;[http|local|git|darcs|hg]' \
            '--shell;[bash|sh|csh|zsh|fish]' \
            '--switch;[`_choice_installed_switch`]' \
    )"

    if [[ "$*" == "opam" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'remove(remove, uninstall)' \
            'repository(repository, remote)' \
            'show(show, info)' \
            ';;' \
            'search;An alias for list --search.' \
            'unpin;An alias for pin remove.' \

    elif [[ "$*" == "opam admin" ]]; then
        echo "$table" | \
        _patch_table_edit_commands 'index(index, make)'

    elif [[ "$*" == "opam exec" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \
            'arg;~[`_module_os_command_args`]' \

    elif [[ "$*" == "opam install" ]] \
      || [[ "$*" == "opam show" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'packages;*[`_choice_package`]'

    elif [[ "$*" == "opam pin add" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'name;*[`_choice_pin`]' 'target(<dir>)'

    elif [[ "$*" == "opam pin remove" ]] \
      || [[ "$*" == "opam unpin" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'name;*[`_choice_installed_pin`]'

    elif [[ "$*" == "opam reinstall" ]] \
      || [[ "$*" == "opam remove" ]] \
      || [[ "$*" == "opam source" ]] \
      || [[ "$*" == "opam upgrade" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'packages;*[`_choice_installed_package`]'

    elif [[ "$*" == "opam switch create" ]] \
      || [[ "$*" == "opam switch install" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'switch;*[`_choice_installed_switch`]'

    elif [[ "$*" == "opam update" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'names;*[`_choice_update`]'

    elif [[ "$*" == "opam var" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'var-value;*[`_choice_var`]'

    elif [[ "$*" == "opam config "* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'var;*[`_choice_var`]'

    elif [[ "$*" == "opam repository "* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;*[`_choice_repository`]'

    else
        echo "$table"

    fi
}

_choice_installed_switch() {
    opam switch list-available --safe -s
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

_choice_var() {
    opam $(_argc_util_param_select_options --global) var --safe | \
    sed -n \
        -e '/^PKG:/ d' \
        -e '/<><>/ d' \
        -e 's%^\([^#= ][^ ]*\).*%\1%p' \

}

_choice_package() {
    opam list --safe -a -s
}

_choice_pin() {
    opam pin list --safe -A -s   
}

_choice_installed_pin() {
    opam pin list --safe -s   
}

_choice_installed_package() {
    opam list --safe -i -s
}

_choice_repository() {
    opam repository list --safe -a -s
}

_choice_update() {
    _argc_util_parallel _choice_repository ::: _choice_installed_pin
}
