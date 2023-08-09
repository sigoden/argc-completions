#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --base64               same as 'base64' program (RFC4648 section 4)
# @flag --base64url            file- and url-safe base64 (RFC4648 section 5)
# @flag --base32               same as 'base32' program (RFC4648 section 6)
# @flag --base32hex            extended hex alphabet base32 (RFC4648 section 7)
# @flag --base16               hex encoding (RFC4648 section 8)
# @flag --base2msbf            bit string with most significant bit (msb) first
# @flag --base2lsbf            bit string with least significant bit (lsb) first
# @flag -d --decode            decode data
# @flag -i --ignore-garbage    when decoding, ignore non-alphabet characters
# @option -w --wrap <COLS>     wrap encoded lines after COLS character (default 76).
# @flag --z85                  ascii85-like encoding (ZeroMQ spec:32/Z85); when encoding, input length must be a multiple of 4; when decoding, input length must be a multiple of 5
# @flag --help                 display this help and exit
# @flag --version              output version information and exit
# @arg file

command eval "$(argc --argc-eval "$0" "$@")"