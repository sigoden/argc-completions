#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --internal-dns                            use a built-in DNS stub resolver rather than the host operating system (default: false)
# @flag --remember                                save these settings to reuse next time (default: false)
# @flag --debug                                   toggle debug mode (default: false)
# @flag --yes                                     automatically agree to all prompts (default: false)
# @flag --stdout                                  redirect file to stdout (default: false)
# @flag --no-compress                             disable compression (default: false)
# @flag --ask                                     make sure sender and recipient are prompted (default: false)
# @flag --local                                   force to use only local connections (default: false)
# @flag --ignore-stdin                            ignore piped stdin (default: false)
# @flag --overwrite                               do not prompt to overwrite (default: false)
# @flag --testing                                 flag for testing purposes (default: false)
# @option --curve[p521|p256|p384|siec] <value>    choose an encryption curve (default: "p256")
# @option --ip <value>                            set sender ip if known e.g. 10.0.0.1:9009, [::1]:9009
# @option --relay <value>                         address of the relay (default: "5.161.69.143:9009") [$CROC_RELAY]
# @option --relay6 <value>                        ipv6 address of the relay (default: "[2a01:4ff:f0:23c2::14c:1]:9009") [$CROC_RELAY6]
# @option --out <value>                           specify an output folder to receive the file (default: ".")
# @option --pass <value>                          password for the relay (default: "pass123") [$CROC_PASS]
# @option --socks5 <value>                        add a socks5 proxy [$SOCKS5_PROXY]
# @option --connect <value>                       add a http proxy [$HTTP_PROXY]
# @option --throttleUpload <value>                Throttle the upload speed e.g. 500k
# @flag -h --help                                 show help (default: false)
# @flag -v --version                              print the version (default: false)

# {{ croc send
# @cmd send file(s), or folder (see options with croc send -h)
# @flag --zip                                   zip folder before sending (default: false)
# @option -c --code <value>                     codephrase used to connect to relay
# @option --hash[xxhash|imohash|md5] <value>    hash algorithm (default: "xxhash")
# @option -t --text <value>                     send some text
# @flag --no-local                              disable local relay when sending (default: false)
# @flag --no-multi                              disable multiplexing (default: false)
# @flag --git                                   enable .gitignore respect / don't send ignored files (default: false)
# @option --ports <value>                       ports of the local relay (optional) (default: "9009,9010,9011,9012,9013")
# @flag -h --help                               show help (default: false)
# @arg paths*
send() {
    :;
}
# }} croc send

# {{ croc relay
# @cmd start your own relay (optional)
# @option --host <value>     host of the relay
# @option --ports <value>    ports of the relay (default: "9009,9010,9011,9012,9013")
# @flag -h --help            show help (default: false)
relay() {
    :;
}
# }} croc relay

command eval "$(argc --argc-eval "$0" "$@")"