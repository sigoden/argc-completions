_patch_help() {
    if [[ $# -eq 1 ]]; then
        echo Commands:
        $@ --help | \
        sed -n '/^\s*This command has the following operations:/,/^[A-Z]/ {//!p}' | \
        sed 's/^       • /  \\/'
    else
        help_text="$($1 --help)"
        
        echo "$help_text" | \
        sed -n "s/^       • $2\( \|$\)/Usage: $1 $2\1/p" | \
        sed 's/…/.../g'

        echo "$help_text" | \
        sed -n '/^Common Options/,/^[A-Z]/ p' | \
        sed \
            -e 's/…/.../g' \
            -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--arg;*[`_module_nix_arg_name`]' \
            '--argstr;*[`_module_nix_arg_name`]' \
            '--attr;[`_module_nix_attr`]' \
            '--log-format;[`_module_nix_log_format`]' \
            '--verbose;[`_module_nix_verbose`]' \
    )"
    if [[ "$*" == "nix-channel --remove" ]] \
    || [[ "$*" == "nix-channel --update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'names;[`_choice_channel`]' \
            'name;[`_choice_channel`]' \

    else
        echo "$table"
    fi
}

_choice_channel() {
    nix-channel --list | gawk '{print $1 "\t" $2}'
}
