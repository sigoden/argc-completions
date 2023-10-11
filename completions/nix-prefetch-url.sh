#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --type[md5|sha1|sha256|sha512] <hashAlgo>  Use the specified cryptographic hash algorithm, which can be one of md5, sha1, sha256, and sha512.
# @flag --print-path       Print the store path of the downloaded file on standard output.
# @flag --unpack           Unpack the archive (which must be a tarball or zip file) and add the result to the Nix store.
# @flag --executable       Set the executable bit on the downloaded file.
# @option --name <name>    Override the name of the file in the Nix store.
# @arg url
# @arg hash

command eval "$(argc --argc-eval "$0" "$@")"