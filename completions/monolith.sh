#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --no-audio                          Remove audio sources
# @option -b --base-url <http://localhost/>    Set custom base URL
# @flag -B --blacklist-domains                 Treat list of specified domains as blacklist
# @flag -c --no-css                            Remove CSS
# @option -C --cookies <file>                  Specify cookie file
# @option -d --domain <example.com>            Specify domains to use for white/black-listing
# @flag -e --ignore-errors                     Ignore network errors
# @option -E --encoding <UTF-8>                Enforce custom charset
# @flag -f --no-frames                         Remove frames and iframes
# @flag -F --no-fonts                          Remove fonts
# @flag -h --help                              Print help information
# @flag -i --no-images                         Remove images
# @flag -I --isolate                           Cut off document from the Internet
# @flag -j --no-js                             Remove JavaScript
# @flag -k --insecure                          Allow invalid X.509 (TLS) certificates
# @flag -M --no-metadata                       Exclude timestamp and source information
# @flag -n --unwrap-noscript                   Replace NOSCRIPT elements with their contents
# @option -o --output <file>                   Write output to <file>, use - for STDOUT
# @flag -s --silent                            Suppress verbosity
# @option -t --timeout <60>                    Adjust network request timeout
# @option -u --user-agent <Firefox>            Set custom User-Agent string
# @flag -v --no-video                          Remove video sources
# @flag -V --version                           Print version information
# @arg target!                                 URL or file path, use - for STDIN

command eval "$(argc --argc-eval "$0" "$@")"