#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --crypt-method[`_choice_crypt_method`] <METHOD>  the crypt method (one of NONE DES MD5 SHA256 SHA512)
# @flag -e --encrypted              supplied passwords are encrypted
# @flag -h --help                   display this help message and exit
# @flag -m --md5                    encrypt the clear text password using the MD5 algorithm
# @option -R --root <CHROOT_DIR>    directory to chroot into
# @flag -s --sha-rounds             number of rounds for the SHA or BCRYPT crypt algorithms

_choice_crypt_method() {
    printf "%s\n" DES MD5 NONE SHA256 SHA512
}

command eval "$(argc --argc-eval "$0" "$@")"