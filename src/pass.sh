_patch_help() {
    if [[ "$*" == "pass" ]]; then
        $@ --help | \
        sed \
            -e 's/^Usage:/Commands:/' \
            -e 's/^    pass \(\S\+\).*$/    \1/' \
            -e 's/\[ls\]/ls/' \
            -e 's/\[show\]/show/'
    else
        cat <<-'EOF' | _patch_help_embed_help $@
# init <gpg-id>...
    -p, --path <subdir>               Secific sub folder of the password store.
# ls [subdir]
# find <pass-string>...
# show <pass-name>
    -c, --clip <line-number>          Do not print the password but instead copy the first(or otherwise specified) line to the clipboard 
    -q, --qrcode <line-number>        Do not print the password but instead display a QR code
# grep <search-string>
# insert <pass-name>
    -e, --echo                        Echo the password back to the console
    -m, --multiline                   Lines will be read until EOF or Ctrl+D is reached
    -f, --force                       Forcely overwriting an existing password
# edit <pass-name>
# generate <pass-name> [pass-length]
    -n, --no-symbols                  Do not use any non-alphanumeric characters in the generated password.
    -c, --clip                        Do not print the password but instead copy it to the clipboard
    -i, --in-place                    Do not interactively prompt
    -f, --force                       Forcely overwriting an existing password
# rm <pass-name>
    -r, --recursive                   Delete pass-name recursively.
    -f, --force                       Do not interactively prompt before removal.
# mv <old-path> <new-path>
    -f, --force                       Silently overwrite new-path if it exists
# cp <old-path> <new-path>
    -f, --force                       Silently overwrite new-path if it exists
# git <args>...
EOF
    fi
}

_patch_table() { 
    if [[ "$*" == "pass init" ]]; then
        _patch_table_edit_arguments 'gpg-id;[`_choice_gpg_id`]'

    elif [[ "$*" == "pass ls" ]]; then
        _patch_table_edit_arguments 'subdir;[`_choice_pass_dir`]'

    elif [[ "$*" == "pass mv" ]] \
      || [[ "$*" == "pass cp" ]] \
    ; then
        _patch_table_edit_arguments 'old-path;[`_choice_pass_name`]' 'new-path;[`_choice_pass_name`]'

    elif [[ "$*" == "pass git" ]]; then
        _patch_table_edit_arguments 'args;~[`_choice_git`]'

    else
        _patch_table_edit_arguments 'pass-name;[`_choice_pass_name`]'
    fi
}

_choice_gpg_id() {
    gpg --list-keys --with-colons | grep '^pub\|^uid' | grep -A1 'pub' | gawk -F: '/^pub:|^uid:/ {print $5 $10}'
}

_choice_pass_dir() {
    _helper_find_root_dir
    command ls -a1dp "$root_dir$ARGC_CWORD"* | grep /$ | sed "s|$root_dir||" | _argc_util_comp_parts /
}

_choice_pass_name() {
    _helper_find_root_dir
    command ls -a1dp "$root_dir$ARGC_CWORD"* | sed -e "s|$root_dir||" -e 's/\.gpg$//' | _argc_util_comp_parts /
}

_choice_git() {
    _helper_find_root_dir
    (cd "$root_dir" && _argc_util_comp_subcommand 0 git)
}

_helper_find_root_dir() {
    if [[ -d "$PASSWORD_STORE_DIR" ]]; then
        if [[ "$PASSWORD_STORE_DIR" =~ "/"$ ]]; then
            root_dir="$PASSWORD_STORE_DIR"
        else
            root_dir="$PASSWORD_STORE_DIR/"
        fi
    elif [[ -d "$HOME/.password-store" ]]; then
        root_dir="$HOME/.password-store/"
    fi
}
