#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ git crypt init
# @cmd generate a key and prepare repo to use git-crypt
# @option -k --key-name <KEY_NAME>
init() {
    :;
}
# }} git crypt init

# {{ git crypt status
# @cmd display which files are encrypted
# @flag -e
# @flag -u
# @flag -f --fix
status() {
    :;
}
# }} git crypt status

# {{ git crypt lock
# @cmd de-configure git-crypt and re-encrypt files in work tree
lock() {
    :;
}
# }} git crypt lock

# {{ git crypt add-gpg-user
# @cmd add the user with the given GPG user ID as a collaborator
# @option -k --key-name <KEY_NAME>
# @flag -n --no-commit
# @flag --trusted
# @arg gpg_user_id*
add-gpg-user() {
    :;
}
# }} git crypt add-gpg-user

# {{ git crypt unlock
# @cmd decrypt this repo using the in-repo GPG-encrypted key
# @arg key_file*
unlock() {
    :;
}
# }} git crypt unlock

# {{ git crypt export-key
# @cmd export this repo's symmetric key to the given file
# @option -k --key-name <KEY_NAME>
# @arg filename
export-key() {
    :;
}
# }} git crypt export-key

# {{ git crypt keygen
# @cmd generate a git-crypt key in the given file
keygen() {
    :;
}
# }} git crypt keygen

# {{ git crypt migrate-key
# @cmd migrate the legacy key file OLD to the new format in NEW
migrate-key() {
    :;
}
# }} git crypt migrate-key

command eval "$(argc --argc-eval "$0" "$@")"