_patch_help() { 
    if [[ "$*" == "emerge" ]]; then
        _patch_help_run_man $@ | \
        sed -n '/^DESCRIPTION/,/^ENVIRONMENT/ {//!p}' | \
        sed \
            -e '/^EBUILDS/ c\COMMANDS:' \
            -e 's/       ebuild/       ebuild  /' \
            -e 's/\[ y | n \]/{y|n}/' \
            -e 's/< y | n >/{y|n}/' \

    else
        cat <<-'EOF' | _patch_help_embed_help $@
# tbz2 <file>
# gpkg <file>
EOF
    fi
}

_patch_table() { 
    if [[ "$*" == "emerge" ]]; then
        _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'

    else
        cat
    fi
}

_choice_args() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package_smart
}

_choice_installed_package() {
    find /var/db/pkg -mindepth 2 -maxdepth 2 -type d -printf '%P\n' | \
    sed 's/-[0-9][0-9.]*.*$//'
}

_choice_package() {
    find /var/db/repos/gentoo -mindepth 2 -maxdepth 2 -type d ! '(' '(' -path '*/eclass/*' -o -path '*/metadata/*' -o -path '*/profiles/*' -o -path '*/.*/*' ')' -prune ')' -printf '%P\n'
}

_choice_package_set() {
    emerge --list-sets
}

_choice_package_smart() {
    if [[ -n "$argc_config" ]] \
    || [[ -n "$argc_depclean" ]] \
    || [[ -n "$argc_info" ]] \
    || [[ -n "$argc_prune" ]] \
    || [[ -n "$argc_unmerge" ]] \
    ; then
        _choice_installed_package
    else
        _choice_package | _argc_util_comp_parts /
        _choice_package_set
    fi
}
