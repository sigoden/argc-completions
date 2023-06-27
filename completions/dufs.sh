#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
# @version 0.34.2

# @option -b --bind <addrs>                      Specify bind address or unix socket
# @option -p --port <port>                       Specify port to listen on [default: 5000]
# @option --path-prefix <path>                   Specify a path prefix
# @option --hidden <value>                       Hide paths from directory listings, separated by `,`
# @option -a --auth <rules>                      Add auth role
# @option --auth-method[basic|digest] <value>    Select auth method [default: digest]
# @flag -A --allow-all                           Allow all operations
# @flag --allow-upload                           Allow upload files/folders
# @flag --allow-delete                           Allow delete files/folders
# @flag --allow-search                           Allow search files/folders
# @flag --allow-symlink                          Allow symlink to files/folders outside root directory
# @flag --allow-archive                          Allow zip archive generation
# @flag --enable-cors                            Enable CORS, sets `Access-Control-Allow-Origin: *`
# @flag --render-index                           Serve index.html when requesting a directory, returns 404 if not found index.html
# @flag --render-try-index                       Serve index.html when requesting a directory, returns directory listing if not found index.html
# @flag --render-spa                             Serve SPA(Single Page Application)
# @option --assets <path>                        Use custom assets to override builtin assets
# @option --tls-cert <path>                      Path to an SSL/TLS certificate to serve with HTTPS
# @option --tls-key <path>                       Path to the SSL/TLS certificate's private key
# @option --log-format <format>                  Customize http log format
# @option --completions[bash|elvish|fish|powershell|zsh] <shell>  Print shell completion script for <shell>
# @flag -h --help                                Print help
# @flag -V --version                             Print version
# @arg serve_path                                Specific path to serve [default: .]

command eval "$(argc --argc-eval "$0" "$@")"