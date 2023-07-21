#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -s --sign                make a signature
# @flag --clear-sign             make a clear text signature
# @flag -b --detach-sign         make a detached signature
# @flag -e --encrypt             encrypt data
# @flag -c --symmetric           encryption only with symmetric cipher
# @flag -d --decrypt             decrypt data (default)
# @flag --verify                 verify a signature
# @flag -k --list-keys           list keys
# @flag --list-signatures        list keys and signatures
# @flag --check-signatures       list and check key signatures
# @flag --fingerprint            list keys and fingerprints
# @flag -K --list-secret-keys    list secret keys
# @flag --generate-key           generate a new key pair
# @flag --quick-generate-key     quickly generate a new key pair
# @flag --quick-add-uid          quickly add a new user-id
# @flag --quick-revoke-uid       quickly revoke a user-id
# @flag --quick-set-expire       quickly set a new expiration date
# @flag --full-generate-key      full featured key pair generation
# @flag --generate-revocation    generate a revocation certificate
# @flag --delete-keys            remove keys from the public keyring
# @flag --delete-secret-keys     remove keys from the secret keyring
# @flag --quick-sign-key         quickly sign a key
# @flag --quick-lsign-key        quickly sign a key locally
# @flag --quick-revoke-sig       quickly revoke a key signature
# @flag --sign-key               sign a key
# @flag --lsign-key              sign a key locally
# @flag --edit-key               sign or edit a key
# @flag --change-passphrase      change a passphrase
# @flag --export                 export keys
# @flag --send-keys              export keys to a keyserver
# @flag --receive-keys           import keys from a keyserver
# @flag --search-keys            search for keys on a keyserver
# @flag --refresh-keys           update all keys from a keyserver
# @flag --import                 import/merge keys
# @flag --card-status            print the card status
# @flag --edit-card              change data on a card
# @flag --change-pin             change a card's PIN
# @flag --update-trustdb         update the trust database
# @flag --print-md               print message digests
# @flag --server                 run in server mode
# @option --tofu-policy[auto|good|unknown|bad|ask] <VALUE>  set the TOFU policy for a key
# @flag -a --armor               create ascii armored output
# @option -r --recipient[`_module_os_user`] <USER-ID>  encrypt for USER-ID
# @option -u --local-user[`_module_os_user`] <USER-ID>  use USER-ID to sign or decrypt
# @option -z <N>                 set compress level to N (0 disables)
# @flag --textmode               use canonical text mode
# @option -o --output <FILE>     write output to FILE
# @flag -v --verbose             verbose
# @flag -n --dry-run             do not make any changes
# @flag -i --interactive         prompt before overwriting
# @flag --openpgp                use strict OpenPGP behavior
# @arg files*

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"