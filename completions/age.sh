#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --encrypt                      Encrypt the input to the output.
# @flag -d --decrypt                      Decrypt the input to the output.
# @option -o --output <OUTPUT_DIR>        Write the result to the file at path OUTPUT.
# @flag -a --armor                        Encrypt to a PEM encoded format.
# @flag -p --passphrase                   Encrypt with a passphrase.
# @option -r --recipient*                 Encrypt to the specified RECIPIENT.
# @option -R --recipients-file* <PATH>    Encrypt to recipients listed at PATH.
# @option -i --identity* <PATH>           Use the identity file at PATH.
# @arg input

command eval "$(argc --argc-eval "$0" "$@")"