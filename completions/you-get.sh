#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                          Print version and exit
# @flag -h --help                             Print this help message and exit
# @flag -i --info                             Print extracted information
# @flag -u --url                              Print extracted information with URLs
# @flag --json                                Print extracted URLs in JSON format
# @flag -n --no-merge                         Do not merge video parts
# @flag --no-caption                          Do not download captions (subtitles, lyrics, danmaku, ...)
# @flag --postfix                             Postfix downloaded files with unique identifiers
# @flag -f --force                            Force overwriting existing files
# @flag --skip-existing-file-size-check       Skip existing file without checking file size
# @option -F --format <STREAM_ID>             Set video format to STREAM_ID
# @option -O --output-filename <FILE>         Set output filename
# @option -o --output-dir <DIR>               Set output directory
# @option -p --player                         Stream extracted URL to a PLAYER
# @option -c --cookies <COOKIES_FILE>         Load cookies.txt or cookies.sqlite
# @option -t --timeout <SECONDS>              Set socket timeout
# @flag -d --debug                            Show traceback and other debug info
# @option -I --input-file <FILE>              Read non-playlist URLs from FILE
# @option -P --password                       Set video visit password to PASSWORD
# @flag -l --playlist                         Prefer to download a playlist
# @flag -a --auto-rename                      Auto rename same name different files
# @flag -k --insecure                         ignore ssl errors
# @flag -m --m3u8                             download video using an m3u8 url
# @option --first                             the first number
# @option --last                              the last number
# @option --size <PAGE_SIZE>                  the page size number
# @option --page-size <PAGE_SIZE>             the page size number
# @option -x --http-proxy <HOST:PORT>         Use an HTTP proxy for downloading
# @option -y --extractor-proxy <HOST:PORT>    Use an HTTP proxy for extracting only
# @flag --no-proxy                            Never use a proxy
# @option -s --socks-proxy <HOST:PORT>        HOST:PORT or USERNAME:PASSWORD@HOST:PORT Use an SOCKS5 proxy for downloading
# @arg url*

command eval "$(argc --argc-eval "$0" "$@")"