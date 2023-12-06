_patch_help() {
    if [[ $# -eq 1 ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# --install/-i - add packages to user environment
# --upgrade/-u - upgrade packages in user environment
# --uninstall/-e - remove packages from user environment
# --set - set profile to contain a specified derivation
# --set-flag - modify meta attributes of installed packages
# --query/-q - display information about packages
# --switch-profile/-S - set user environment to given profile
# --list-generations - list profile generations
# --delete-generations - delete profile generations
# --switch-generation - set user environment to given profile generation
# --rollback - set user environment to previous generation
EOF
    else
        $1 --help $2 | \
        sed \
            -e '/^Examples/,$ d' \
            -e 's/…/.../g' \
            -e "/^\s*$1/ {s/\[{/[/g;s/}\]/]/g;}" \
            -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--arg;*[`_module_nix_arg_name`]' \
            '--argstr;*[`_module_nix_arg_name`]' \
            '--attr(attrPath+... );[`_module_nix_attr`]' \
            '--file;[`_module_nix_path`]' \
            '--log-format;[`_module_nix_log_format`]' \
            '--profile;[`_module_nix_profile`]' \
            '--verbose;[`_module_nix_verbose`]' \
    )"
    if [[ "$*" == "nix-env --install" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'args;[`_choice_package`]'  \

    elif [[ "$*" == "nix-env --upgrade" ]] \
      || [[ "$*" == "nix-env --uninstall" ]] \
      || [[ "$*" == "nix-env --set" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'args;[`_choice_installed_package`]'  \
            'drvnames;[`_choice_installed_package`]' \
            'drvname;[`_choice_installed_package`]' \

    elif [[ "$*" == "nix-env --set-flag" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'name;[`_choice_flag_name`]' \
            'value;[`_choice_flag_value`]' \
            'drvnames;[`_choice_installed_package`]' \

    elif [[ "$*" == "nix-env --switch-profile" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'path;[`_module_nix_profile`]' \

    elif [[ "$*" == "nix-env --delete-generations" ]] \
      || [[ "$*" == "nix-env --switch-generation" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'generations;[`_choice_generation`]' \
            'generation;[`_choice_generation`]' \

    else
        echo "$table"

    fi
}

_choice_package() {
    _choice_available_cached | \
    gawk -F';' -v CWORD="$ARGC_CWORD" '{if(index($2, CWORD)) { print $2 }}'
}

_choice_installed_package() {
    nix-env --query --installed --json  | \
    yq 'to_entries | .[].value.pname'
}

_choice_flag_name() {
    cat <<-'EOF'
priority	Resolve package name conflicts
keep	Prevent package from being upgraded
active	Package is symlinked to profile
EOF
}

_choice_flag_value() {
    case "$argc_name" in
    priority)
        ;;
    keep|active)
        printf "%s\n" true false
        ;;
    esac
}

_choice_generation() {
    nix-env --list-generations | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)/\1\t\2/p'
}

_choice_available() {
    nix-env --query --available --json | \
    yq 'to_entries | .[] | .key + ";" + .value.pname + ";" + .value.version' 
}

_choice_available_cached() {
    _argc_util_cache 86400 _choice_available
}
