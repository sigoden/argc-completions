#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <file>       Specify configuration file
# @option -b --bind <addrs>        Specify bind address or unix socket
# @option -p --port <port>         Specify port to listen on [default: 5000]
# @option --path-prefix <path>     Specify a path prefix
# @option --hidden <value>         Hide paths from directory listings, e.g. tmp,*.log,*.lock
# @option -a --auth <rules>        Add auth roles, e.g. user:pass@/dir1:rw,/dir2
# @flag -A --allow-all             Allow all operations
# @flag --allow-upload             Allow upload files/folders
# @flag --allow-delete             Allow delete files/folders
# @flag --allow-search             Allow search files/folders
# @flag --allow-symlink            Allow symlink to files/folders outside root directory
# @flag --allow-archive            Allow zip archive generation
# @flag --enable-cors              Enable CORS, sets `Access-Control-Allow-Origin: *`
# @flag --render-index             Serve index.html when requesting a directory, returns 404 if not found index.html
# @flag --render-try-index         Serve index.html when requesting a directory, returns directory listing if not found index.html
# @flag --render-spa               Serve SPA(Single Page Application)
# @option --assets <path>          Set the path to the assets directory for overriding the built-in assets
# @option --log-format <format>    Customize http log format
# @option --compress[none|low|medium|high] <level>  Set zip compress level [default: low]
# @option --completions[bash|elvish|fish|powershell|zsh] <shell>  Print shell completion script for <shell>
# @option --tls-cert <path>        Path to an SSL/TLS certificate to serve with HTTPS
# @option --tls-key <path>         Path to the SSL/TLS certificate's private key
# @flag -h --help                  Print help
# @flag -V --version               Print version
# @arg serve-path                  Specific path to serve [default: .]

command eval "$(argc --argc-eval "$0" "$@")"