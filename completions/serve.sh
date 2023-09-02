#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                        Shows this help message
# @flag -v --version                  Displays the current version of serve
# @option -l --listen <listen_uri>    Specify a URI endpoint on which to listen (see below) -more than one may be specified to listen in multiple places
# @flag -p                            Specify custom port
# @flag -s --single                   Rewrite all not-found requests to `index.html`
# @flag -d --debug                    Show debugging information
# @option -c --config <file:.json>    Specify custom path to `serve.json`
# @flag -L --no-request-logging       Do not log any request information to the console.
# @flag -C --cors                     Enable CORS, sets `Access-Control-Allow-Origin` to `*`
# @flag -n --no-clipboard             Do not copy the local address to the clipboard
# @flag -u --no-compression           Do not compress files
# @flag --no-etag                     Send `Last-Modified` header instead of `ETag`
# @flag -S --symlinks                 Resolve symlinks instead of showing 404 errors
# @option --ssl-cert <path>           Optional path to an SSL/TLS certificate to serve with HTTPS Supported formats: PEM (default) and PKCS12 (PFX)
# @option --ssl-key <path>            Optional path to the SSL/TLS certificate's private key Applicable only for PEM certificates
# @option --ssl-pass <path>           Optional path to the SSL/TLS certificate's passphrase
# @flag --no-port-switching           Do not open a port other than the one specified when it's taken.

command eval "$(argc --argc-eval "$0" "$@")"