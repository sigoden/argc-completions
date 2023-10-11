#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --flat         Print the cryptographic hash of the contents of each regular file path.
# @flag --base16       Print the hash in a hexadecimal representation (default).
# @flag --base32       Print the hash in a base-32 representation rather than hexadecimal.
# @flag --base64       Similar to –base32, but print the hash in a base-64 representation, which is more compact than the base-32 one.
# @flag --sri          Print the hash in SRI format with base-64 encoding.
# @flag --truncate     Truncate hashes longer than 160 bits (such as SHA-256) to 160 bits.
# @option --type[md5|sha1|sha256|sha512] <hashAlgo>  Use the specified cryptographic hash algorithm, which can be one of md5, sha1, sha256, and sha512.
# @flag --to-base16    Don’t hash anything, but convert the base-32 hash representation hash to hexadecimal.
# @flag --to-base32    Don’t hash anything, but convert the hexadecimal hash representation hash to base-32.
# @flag --to-base64    Don’t hash anything, but convert the hexadecimal hash representation hash to base-64.
# @flag --to-sri       Don’t hash anything, but convert the hexadecimal hash representation hash to SRI.
# @arg path*

command eval "$(argc --argc-eval "$0" "$@")"