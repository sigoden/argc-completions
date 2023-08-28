_patch_help() {
    cat <<-'EOF'
  -i, --install <path>...           Install the package.
  --unpack <path>...                Unpack the package, but don't configure it.
  -A, --record-avail <path>...      Unpack the package, but don't configure it.
  --configure <package>...          Configure a package which has been unpacked but not yet configured.
  --triggers-only <package>...      Processes only triggers.
  -r, --remove <package>...         Remove an installed package. 
  -P, --purge <package>...          Purge an installed or already removed package. 
  -R, --recursive                   Run command recursively
  -a, --pending                     Work on pending packages only
EOF
    help_text="$($@ --help)"
    {
        echo "$help_text" | sed -n '/^Commands:/,/^\s*$/ {//!p}';
        echo "$help_text" | sed -n '/^Options:/,/^\S/ {//!p}';
    } | \
    sed \
        -e '/| -\S|--/ d' \
        -e '/-Dh|--/ d' \
        -e 's/|--/, --/' \
        -e 's/\[,\.\.\.\]/.../' \

}

_patch_table() {
    _patch_table_edit_options \
        '--audit*;[`_choice_package`]' \
        '--configure;[`_choice_package`]' \
        '--listfiles*;[`_choice_package`]' \
        '--print-avail*;[`_choice_package`]' \
        '--purge;[`_choice_package`]' \
        '--remove;[`_choice_package`]' \
        '--status*;[`_choice_package`]' \
        '--verify;[`_choice_package`]' \

}

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}
