#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       help for caddy
# @flag -v --version    version for caddy

# {{ caddy adapt
# @cmd Adapts a configuration to Caddy's native JSON
# @option -a --adapter <file>    Name of config adapter (default "caddyfile")
# @option -c --config <file>     Configuration file to adapt (required)
# @option --envfile* <file>      Environment file(s) to load
# @flag -h --help                help for adapt
# @flag -p --pretty              Format the output for human readability
# @flag --validate               Validate the output
adapt() {
    :;
}
# }} caddy adapt

# {{ caddy add-package
# @cmd Adds Caddy packages (EXPERIMENTAL)
# @flag -h --help           help for add-package
# @flag -k --keep-backup    Keep the backed up binary, instead of deleting it
add-package() {
    :;
}
# }} caddy add-package

# {{ caddy build-info
# @cmd Prints information about this build
# @flag -h --help    help for build-info
build-info() {
    :;
}
# }} caddy build-info

# {{ caddy completion
# @cmd Generate completion script
# @flag -h --help    help for completion
# @arg enum[bash|zsh|fish|powershell]
completion() {
    :;
}
# }} caddy completion

# {{ caddy environ
# @cmd Prints the environment
# @option --envfile* <file>    Environment file(s) to load
# @flag -h --help              help for environ
environ() {
    :;
}
# }} caddy environ

# {{ caddy file-server
# @cmd Spins up a production-ready file server
# @flag -a --access-log           Enable the access log
# @flag -b --browse               Enable directory browsing
# @flag -v --debug                Enable verbose debug logs
# @option -d --domain <file>      Domain name at which to serve the files
# @flag -h --help                 help for file-server
# @option -l --listen <string>    The address to which to bind the listener
# @option -r --root <path>        The path to the root of the site
# @flag -t --templates            Enable template rendering
file-server() {
    :;
}

# {{{ caddy file-server export-template
# @cmd Exports the default file browser template
# @flag -h --help    help for export-template
file-server::export-template() {
    :;
}
# }}} caddy file-server export-template
# }} caddy file-server

# {{ caddy fmt
# @cmd Formats a Caddyfile
# @flag -d --diff         Print the differences between the input file and the formatted output
# @flag -h --help         help for fmt
# @flag -w --overwrite    Overwrite the input file with the results
fmt() {
    :;
}
# }} caddy fmt

# {{ caddy hash-password
# @cmd Hashes a password and writes base64
# @option -a --algorithm <string>    Name of the hash algorithm (default "bcrypt")
# @flag -h --help                    help for hash-password
# @option -p --plaintext <string>    The plaintext password
# @option -s --salt <string>         The password salt
hash-password() {
    :;
}
# }} caddy hash-password

# {{ caddy list-modules
# @cmd Lists the installed Caddy modules
# @flag -h --help             help for list-modules
# @flag --packages            Print package paths
# @flag -s --skip-standard    Skip printing standard modules
# @flag --versions            Print version information
list-modules() {
    :;
}
# }} caddy list-modules

# {{ caddy manpage
# @cmd Generates the manual pages for Caddy commands
# @option -o --directory <dir>    The output directory where the manpages are generated
# @flag -h --help                 help for manpage
manpage() {
    :;
}
# }} caddy manpage

# {{ caddy reload
# @cmd Changes the config of the running Caddy instance
# @option -a --adapter <string>    Name of config adapter to apply
# @option --address <string>       Address of the administration listener, if different from config
# @option -c --config <file>       Configuration file (required)
# @flag -f --force                 Force config reload, even if it is the same
# @flag -h --help                  help for reload
reload() {
    :;
}
# }} caddy reload

# {{ caddy remove-package
# @cmd Removes Caddy packages (EXPERIMENTAL)
# @flag -h --help           help for remove-package
# @flag -k --keep-backup    Keep the backed up binary, instead of deleting it
remove-package() {
    :;
}
# }} caddy remove-package

# {{ caddy respond
# @cmd Simple, hard-coded HTTP responses for development and testing
# @flag --access-log               Enable the access log
# @option -b --body <string>       The body of the HTTP response
# @flag -v --debug                 Enable more verbose debug-level logging
# @option -H --header* <string>    Set a header on the response (format: "Field: value")
# @flag -h --help                  help for respond
# @option -l --listen <string>     The address to which to bind the listener (default ":0")
# @option -s --status <int>        The response status code (default 200)
respond() {
    :;
}
# }} caddy respond

# {{ caddy reverse-proxy
# @cmd A quick and production-ready reverse proxy
# @flag --access-log                    Enable the access log
# @flag -c --change-host-header         Set upstream Host header to address of upstream
# @flag -v --debug                      Enable verbose debug logs
# @flag -r --disable-redirects          Disable HTTP->HTTPS redirects
# @option -f --from <string>            Address on which to receive traffic (default "localhost")
# @option -d --header-down* <string>    Set a response header to send back to the client (format: "Field: value")
# @option -H --header-up* <string>      Set a request header to send to the upstream (format: "Field: value")
# @flag -h --help                       help for reverse-proxy
# @flag --insecure                      Disable TLS verification (WARNING: DISABLES SECURITY BY NOT VERIFYING TLS CERTIFICATES!)
# @flag -i --internal-certs             Use internal CA for issuing certs
# @option -t --to* <string>             Upstream address(es) to which traffic should be sent
reverse-proxy() {
    :;
}
# }} caddy reverse-proxy

# {{ caddy run
# @cmd Starts the Caddy process and blocks indefinitely
# @option -a --adapter <string>    Name of config adapter to apply
# @option -c --config <file>       Configuration file
# @option --envfile* <file>        Environment file(s) to load
# @flag -e --environ               Print environment
# @flag -h --help                  help for run
# @option --pidfile <file>         Path of file to which to write process ID
# @option --pingback <string>      Echo confirmation bytes to this address on success
# @flag -r --resume                Use saved config, if any (and prefer over --config file)
# @flag -w --watch                 Watch config file for changes and reload it automatically
run() {
    :;
}
# }} caddy run

# {{ caddy start
# @cmd Starts the Caddy process in the background and then returns
# @option -a --adapter <string>    Name of config adapter to apply
# @option -c --config <file>       Configuration file
# @option --envfile* <file>        Environment file(s) to load
# @flag -h --help                  help for start
# @option --pidfile <file>         Path of file to which to write process ID
# @flag -w --watch                 Reload changed config file automatically
start() {
    :;
}
# }} caddy start

# {{ caddy stop
# @cmd Gracefully stops a started Caddy process
# @option -a --adapter <string>    Name of config adapter to apply (when --config is used)
# @option --address <string>       The address to use to reach the admin API endpoint, if not the default
# @option -c --config <file>       Configuration file to use to parse the admin address, if --address is not used
# @flag -h --help                  help for stop
stop() {
    :;
}
# }} caddy stop

# {{ caddy storage
# @cmd Commands for working with Caddy's storage (EXPERIMENTAL)
# @flag -h --help    help for storage
storage() {
    :;
}

# {{{ caddy storage export
# @cmd Exports storage assets as a tarball
# @option -c --config <file>    Input configuration file (required)
# @flag -h --help               help for export
# @option -o --output <path>    Output path
# @arg path!
storage::export() {
    :;
}
# }}} caddy storage export

# {{{ caddy storage import
# @cmd Imports storage assets from a tarball.
# @option -c --config <file>     Configuration file to load (required)
# @flag -h --help                help for import
# @option -i --input <string>    Tar of assets to load (required)
# @arg path!
storage::import() {
    :;
}
# }}} caddy storage import
# }} caddy storage

# {{ caddy trust
# @cmd Installs a CA certificate into local trust stores
# @option -a --adapter <string>    Name of config adapter to apply (if --config is used)
# @option --address <string>       Address of the administration API listener (if --config is not used)
# @option --ca <string>            The ID of the CA to trust (defaults to 'local')
# @option -c --config <file>       Configuration file (if --address is not used)
# @flag -h --help                  help for trust
trust() {
    :;
}
# }} caddy trust

# {{ caddy untrust
# @cmd Untrusts a locally-trusted CA certificate
# @option -a --adapter <string>    Name of config adapter to apply (if --config is used)
# @option --address <string>       Address of the administration API listener (if --config is not used)
# @option --ca <string>            The ID of the CA to untrust (defaults to 'local')
# @option -p --cert <path>         The path to the CA certificate to untrust
# @option -c --config <file>       Configuration file (if --address is not used)
# @flag -h --help                  help for untrust
untrust() {
    :;
}
# }} caddy untrust

# {{ caddy upgrade
# @cmd Upgrade Caddy (EXPERIMENTAL)
# @flag -h --help           help for upgrade
# @flag -k --keep-backup    Keep the backed up binary, instead of deleting it
upgrade() {
    :;
}
# }} caddy upgrade

# {{ caddy validate
# @cmd Tests whether a configuration file is valid
# @option -a --adapter <string>    Name of config adapter
# @option -c --config <file>       Input configuration file
# @option --envfile* <file>        Environment file(s) to load
# @flag -h --help                  help for validate
validate() {
    :;
}
# }} caddy validate

# {{ caddy version
# @cmd Prints the version
# @flag -h --help    help for version
version() {
    :;
}
# }} caddy version

command eval "$(argc --argc-eval "$0" "$@")"