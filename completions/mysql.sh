#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                                  Display this help and exit.
# @flag --auto-rehash                              Enable automatic rehashing.
# @flag -A --no-auto-rehash                        No automatic rehashing.
# @flag --auto-vertical-output                     Automatically switch to vertical output mode if the result is wider than the terminal width.
# @flag -B --batch                                 Don't use history file.
# @option --bind-address <name>                    IP address to bind to.
# @flag --binary-as-hex                            Print binary data as hex.
# @option --character-sets-dir <dir>               Directory for character set files.
# @flag --column-type-info                         Display column type information.
# @flag -c --comments                              Preserve comments.
# @flag -C --compress                              Use compression in server/client protocol.
# @option -# --debug <#>                           This is a non-debug version.
# @flag --debug-check                              This is a non-debug version.
# @flag -T --debug-info                            This is a non-debug version.
# @option -D --database <name>                     Database to use.
# @option --default-character-set <name>           Set the default character set.
# @option --delimiter <name>                       Delimiter to be used.
# @flag --enable-cleartext-plugin                  Enable/disable the clear text authentication plugin.
# @option -e --execute <name>                      Execute command and quit.
# @flag -E --vertical                              Print the output of a query (rows) vertically.
# @flag -f --force                                 Continue even if we get an SQL error.
# @option --histignore <name>                      A colon-separated list of patterns to keep statements from getting logged into syslog and mysql history.
# @flag -G --named-commands                        Enable named commands.
# @flag -i --ignore-spaces                         Ignore space after function names.
# @option --init-command <name>                    SQL Command to execute when connecting to MySQL server.
# @option --local-infile[0|1]                      Enable/disable LOAD DATA LOCAL INFILE.
# @flag -b --no-beep                               Turn off beep on error.
# @option -h --host[`_module_os_hostname`] <name>  Connect to host.
# @option --dns-srv-name <name>                    Connect to a DNS SRV resource
# @flag -H --html                                  Produce HTML output.
# @flag -X --xml                                   Produce XML output.
# @flag --line-numbers                             Write line numbers for errors.
# @flag -L --skip-line-numbers                     Don't write line number for errors.
# @flag -n --unbuffered                            Flush buffer after each query.
# @flag --column-names                             Write column names in results.
# @flag -N --skip-column-names                     Don't write column names in results.
# @flag --sigint-ignore                            Ignore SIGINT (CTRL-C).
# @flag -o --one-database                          Ignore statements except those that occur while the default database is the one named at the command line.
# @option --pager <name>                           Pager to use to display results.
# @option -p --password <name>                     Password to use when connecting to server.
# @option -P --port <#>                            Port number to use for connection or 0 for default to, in order of preference, my.cnf, $MYSQL_TCP_PORT, /etc/services, built-in default (3306).
# @option --prompt <name>                          Set the mysql prompt to this value.
# @option --protocol[tcp|socket|pipe|memory] <name>  The protocol to use for connection.
# @flag -q --quick                                 Don't cache result, print it row by row.
# @flag -r --raw                                   Write fields without conversion.
# @flag --reconnect                                Reconnect if the connection is lost.
# @flag -s --silent                                Be more silent.
# @option -S --socket <name>                       The socket file to use for connection.
# @option --server-public-key-path <path>          File path to the server public RSA key in PEM format.
# @flag --get-server-public-key                    Get server public key
# @option --ssl-mode <name>                        SSL connection mode.
# @option --ssl-ca <name>                          CA file in PEM format.
# @option --ssl-capath <path>                      CA directory.
# @option --ssl-cert <name>                        X509 cert in PEM format.
# @option --ssl-cipher <name>                      SSL cipher to use.
# @option --ssl-key <name>                         X509 key in PEM format.
# @option --ssl-crl <name>                         Certificate revocation list.
# @option --ssl-crlpath <path>                     Certificate revocation list path.
# @option --tls-version <name>                     TLS version to use, permitted values are: TLSv1.2, TLSv1.3
# @option --ssl-fips-mode[OFF|ON|STRICT] <name>    SSL FIPS mode (applies only for OpenSSL); permitted values are: OFF, ON, STRICT
# @option --tls-ciphersuites <name>                TLS v1.3 cipher to use.
# @option --ssl-session-data <name>                Session data file to use to enable ssl session reuse
# @flag --ssl-session-data-continue-on-failed-reuse  If set to ON, this option will allow connection to succeed even if session data cannot be reused.
# @flag -t --table                                 Output in table format.
# @option --tee <name>                             Append everything into outfile.
# @option -u --user <name>                         User for login if not current user.
# @flag -U --safe-updates                          Only allow UPDATE and DELETE that uses keys.
# @flag -v --verbose                               Write more.
# @flag -V --version                               Output version information and exit.
# @flag -w --wait                                  Wait and retry if connection is down.
# @option --connect-timeout <#>                    Number of seconds before connection timeout.
# @option --max-allowed-packet <#>                 The maximum packet length to send to or receive from server.
# @option --net-buffer-length <#>                  The buffer size for TCP/IP and socket communication.
# @option --select-limit <#>                       Automatic limit for SELECT when using --safe-updates.
# @option --max-join-size <#>                      Automatic limit for rows in a join when using --safe-updates.
# @flag --show-warnings                            Show warnings after every statement.
# @flag -j --syslog                                Log filtered interactive commands to syslog.
# @option --plugin-dir <dir>                       Directory for client-side plugins.
# @option --default-auth <name>                    Default authentication client-side plugin to use.
# @flag --binary-mode                              By default, ASCII '\0' is disallowed and '\r\n' is translated to '\n'.
# @flag --connect-expired-password                 Notify the server that this client is prepared to handle expired password sandbox mode.
# @option --network-namespace <name>               Network namespace to use for connection via tcp with a server.
# @option --compression-algorithms <name>          Use compression algorithm in server/client protocol.
# @option --zstd-compression-level <#>             Use this compression level in the client/server protocol, in case --compression-algorithms=zstd.
# @option --load-data-local-dir <dir>              Directory path safe for LOAD DATA LOCAL INFILE to read from.
# @option --fido-register-factor <name>            Specifies authentication factor, for which registration needs to be done.
# @option --authentication-oci-client-config-profile <name>  Specifies the configuration profile whose configuration options are to be read from the OCI configuration file.
# @option --oci-config-file <name>                 Specifies the location of the OCI configuration file.
# @flag --print-defaults                           Print the program argument list and exit.
# @flag --no-defaults                              Don't read default options from any option file, except for login file.
# @option --defaults-file <file>                   Only read default options from the given file ♯.
# @option --defaults-extra-file <file>             Read this file after the global files are read.
# @option --defaults-group-suffix[group|suffix] <#>  Also read groups with concat
# @option --login-path <path>                      Read this path from the login file.
# @arg database

_module_os_hostname() {
    _etc_hosts() {
        if [[ -f "/etc/hosts" ]]; then
            cat /etc/hosts | sed -e '/^\s*#/ d' -e '/^\s*$/ d'
        elif command -v getent >/dev/null; then
            getent hosts 
        fi
    }
    _etc_hosts | sed -e '/^\s*\(127\.0\.\|ff0\|fe0\|::1\)/ d' -e 's/^\s*\S\+\s*\(\S\+\)$/\1/'

    if [[ -r ~/.ssh/config ]]; then
        cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
    fi
    if [[ -r ~/.ssh/known_hosts ]]; then
        cat ~/.ssh/known_hosts | \
        sed \
            -e '/^\s*[!*|@#]/ d' \
            -e 's/^\s*\(\S\+\).*/\1/' \
            -e 's/,/\n/' \
            -e 's/\[\(\S\+\)\].*/\1/' \

    fi
}

command eval "$(argc --argc-eval "$0" "$@")"