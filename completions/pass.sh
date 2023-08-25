#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ pass init
# @cmd Initialize new password storage and use gpg-id for encryption.
# @option -p --path <subdir>    Secific sub folder of the password store.
# @arg gpg-id+[`_choice_gpg_id`]
init() {
    :;
}
# }} pass init

# {{ pass ls
# @cmd List passwords.
# @arg subdir[`_choice_pass_dir`]
ls() {
    :;
}
# }} pass ls

# {{ pass find
# @cmd List passwords that match pass-names.
# @arg pass-string+
find() {
    :;
}
# }} pass find

# {{ pass show
# @cmd Show existing password and optionally put it on the clipboard.
# @option -c --clip <line-number>      Do not print the password but instead copy the first(or otherwise specified) line to the clipboard
# @option -q --qrcode <line-number>    Do not print the password but instead display a QR code
# @arg pass-name![`_choice_pass_name`]
show() {
    :;
}
# }} pass show

# {{ pass grep
# @cmd Search for password files containing search-string when decrypted.
# @arg search-string!
grep() {
    :;
}
# }} pass grep

# {{ pass insert
# @cmd Insert new password.
# @flag -e --echo         Echo the password back to the console
# @flag -m --multiline    Lines will be read until EOF or Ctrl+D is reached
# @flag -f --force        Forcely overwriting an existing password
# @arg pass-name![`_choice_pass_name`]
insert() {
    :;
}
# }} pass insert

# {{ pass edit
# @cmd Insert a new password or edit an existing password using vim.
# @arg pass-name![`_choice_pass_name`]
edit() {
    :;
}
# }} pass edit

# {{ pass generate
# @cmd Generate a new password of pass-length (or 25 if unspecified) with optionally no symbols.
# @flag -n --no-symbols    Do not use any non-alphanumeric characters in the generated password.
# @flag -c --clip          Do not print the password but instead copy it to the clipboard
# @flag -i --in-place      Do not interactively prompt
# @flag -f --force         Forcely overwriting an existing password
# @arg pass-name![`_choice_pass_name`]
# @arg pass-length
generate() {
    :;
}
# }} pass generate

# {{ pass rm
# @cmd Remove existing password or directory, optionally forcefully.
# @flag -r --recursive    Delete pass-name recursively.
# @flag -f --force        Do not interactively prompt before removal.
# @arg pass-name![`_choice_pass_name`]
rm() {
    :;
}
# }} pass rm

# {{ pass mv
# @cmd Renames or moves old-path to new-path, optionally forcefully, selectively reencrypting.
# @flag -f --force    Silently overwrite new-path if it exists
# @arg old-path![`_choice_pass_name`]
# @arg new-path![`_choice_pass_name`]
mv() {
    :;
}
# }} pass mv

# {{ pass cp
# @cmd Copies old-path to new-path, optionally forcefully, selectively reencrypting.
# @flag -f --force    Silently overwrite new-path if it exists
# @arg old-path![`_choice_pass_name`]
# @arg new-path![`_choice_pass_name`]
cp() {
    :;
}
# }} pass cp

# {{ pass git
# @cmd If the password store is a git repository, execute a git command specified by git-command-args.
# @arg args~[`_choice_git`]
git() {
    :;
}
# }} pass git

# {{ pass version
# @cmd Show version information.
version() {
    :;
}
# }} pass version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"