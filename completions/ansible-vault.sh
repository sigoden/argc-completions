#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version       show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -h --help       show this help message and exit
# @flag -v --verbose    Causes Ansible to print more debug messages.
# @arg create-decrypt-edit-view-encrypt-encrypt_string-rekey* <create,decrypt,edit,view,encrypt,encrypt_string,rekey>

# {{ ansible-vault create
# @cmd Create new vault encrypted file
# @flag -h --help                                  show this help message and exit
# @option --encrypt-vault-id <ENCRYPT_VAULT_ID>    the vault id used to encrypt (required if more than one vault-id is provided)
# @option --vault-id <VAULT_IDS>                   the vault identity to use.
# @flag -J                                         ask for vault password
# @flag --ask-vault-password                       ask for vault password
# @flag --ask-vault-pass                           ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @flag --skip-tty-check                           allows editor to be opened when no tty attached
# @arg file_name                                   Filename
create() {
    :;
}
# }} ansible-vault create

# {{ ansible-vault decrypt
# @cmd Decrypt vault encrypted file
# @flag -h --help                   show this help message and exit
# @option --output <OUTPUT_FILE>    output file name for encrypt or decrypt; use - for stdout
# @option --vault-id <VAULT_IDS>    the vault identity to use.
# @flag -J                          ask for vault password
# @flag --ask-vault-password        ask for vault password
# @flag --ask-vault-pass            ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                Causes Ansible to print more debug messages.
# @arg file_name                    Filename
decrypt() {
    :;
}
# }} ansible-vault decrypt

# {{ ansible-vault edit
# @cmd Edit vault encrypted file
# @flag -h --help                                  show this help message and exit
# @option --encrypt-vault-id <ENCRYPT_VAULT_ID>    the vault id used to encrypt (required if more than one vault-id is provided)
# @option --vault-id <VAULT_IDS>                   the vault identity to use.
# @flag -J                                         ask for vault password
# @flag --ask-vault-password                       ask for vault password
# @flag --ask-vault-pass                           ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @arg file_name                                   Filename
edit() {
    :;
}
# }} ansible-vault edit

# {{ ansible-vault view
# @cmd View vault encrypted file
# @flag -h --help                   show this help message and exit
# @option --vault-id <VAULT_IDS>    the vault identity to use.
# @flag -J                          ask for vault password
# @flag --ask-vault-password        ask for vault password
# @flag --ask-vault-pass            ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                Causes Ansible to print more debug messages.
# @arg file_name                    Filename
view() {
    :;
}
# }} ansible-vault view

# {{ ansible-vault encrypt
# @cmd Encrypt YAML file
# @flag -h --help                                  show this help message and exit
# @option --vault-id <VAULT_IDS>                   the vault identity to use.
# @flag -J                                         ask for vault password
# @flag --ask-vault-password                       ask for vault password
# @flag --ask-vault-pass                           ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @option --output <OUTPUT_FILE>                   output file name for encrypt or decrypt; use - for stdout
# @option --encrypt-vault-id <ENCRYPT_VAULT_ID>    the vault id used to encrypt (required if more than one vault-id is provided)
# @arg file_name                                   Filename
encrypt() {
    :;
}
# }} ansible-vault encrypt

# {{ ansible-vault encrypt_string
# @cmd Encrypt a string
# @flag -h --help                                  show this help message and exit
# @option --vault-id <VAULT_IDS>                   the vault identity to use.
# @flag -J                                         ask for vault password
# @flag --ask-vault-password                       ask for vault password
# @flag --ask-vault-pass                           ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @option --output <OUTPUT_FILE>                   output file name for encrypt or decrypt; use - for stdout
# @option --encrypt-vault-id <ENCRYPT_VAULT_ID>    the vault id used to encrypt (required if more than one vault-id is provided)
# @flag -p --prompt                                Prompt for the string to encrypt
# @flag --show-input                               Do not hide input when prompted for the string to encrypt
# @option -n --name <ENCRYPT_STRING_NAMES>         Specify the variable name.
# @option --stdin-name <ENCRYPT_STRING_STDIN_NAME>  Specify the variable name for stdin
# @arg string_to_encrypt                           String to encrypt
encrypt_string() {
    :;
}
# }} ansible-vault encrypt_string

# {{ ansible-vault rekey
# @cmd Re-key a vault encrypted file
# @flag -h --help                                  show this help message and exit
# @option --vault-id <VAULT_IDS>                   the vault identity to use.
# @flag -J                                         ask for vault password
# @flag --ask-vault-password                       ask for vault password
# @flag --ask-vault-pass                           ask for vault password
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @option --encrypt-vault-id <ENCRYPT_VAULT_ID>    the vault id used to encrypt (required if more than one vault-id is provided)
# @option --new-vault-password-file <NEW_VAULT_PASSWORD_FILE>  new vault password file for rekey
# @option --new-vault-id <NEW_VAULT_ID>            the new vault identity to use for rekey
# @arg file_name                                   Filename
rekey() {
    :;
}
# }} ansible-vault rekey

command eval "$(argc --argc-eval "$0" "$@")"