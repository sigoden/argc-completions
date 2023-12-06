#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --print-defaults                        Print the program argument list and exit.
# @flag --no-defaults                           Don't read default options from any option file.
# @option --defaults-file <file>                Only read default options from the given file ♯.
# @option --defaults-extra-file <file>          Read this file after the global files are read.
# @option --defaults-group-suffix <#>           Additionally read default groups with ♯ appended as a suffix.
# @flag -? --help                               Display this help and exit.
# @flag --abort-source-on-error                 Abort 'source filename' operations in case of errors
# @flag --auto-rehash                           Enable automatic rehashing.
# @flag -A --no-auto-rehash                     No automatic rehashing.
# @flag --auto-vertical-output                  Automatically switch to vertical output mode if the result is wider than the terminal width.
# @flag -B --batch                              Don't use history file.
# @flag --binary-as-hex                         Print binary data as hex
# @option --character-sets-dir <dir>            Directory for character set files.
# @flag --column-type-info                      Display column type information.
# @flag -c --comments                           Preserve comments.
# @flag -C --compress                           Use compression in server/client protocol.
# @option -# --debug <#>                        This is a non-debug version.
# @flag --debug-check                           Check memory and open file usage at exit.
# @flag -T --debug-info                         Print some debug info at exit.
# @option -D --database <name>                  Database to use.
# @option --default-character-set <name>        Set the default character set.
# @option --delimiter <name>                    Delimiter to be used.
# @option -e --execute <name>                   Execute command and quit.
# @flag --enable-cleartext-plugin               Obsolete option.
# @flag -E --vertical                           Print the output of a query (rows) vertically.
# @flag -f --force                              Continue even if we get an SQL error.
# @flag -G --named-commands                     Enable named commands.
# @flag -i --ignore-spaces                      Ignore space after function names.
# @option --init-command <name>                 SQL Command to execute when connecting to MariaDB server.
# @option --local-infile[0|1]                   Enable/disable LOAD DATA LOCAL INFILE.
# @flag -b --no-beep                            Turn off beep on error.
# @option -h --host[`_module_os_hostname`] <name>  Connect to host.
# @flag -H --html                               Produce HTML output.
# @flag -X --xml                                Produce XML output.
# @flag --line-numbers                          Write line numbers for errors.
# @flag -L --skip-line-numbers                  Don't write line number for errors.
# @flag -n --unbuffered                         Flush buffer after each query.
# @flag --column-names                          Write column names in results.
# @flag -N --skip-column-names                  Don't write column names in results.
# @flag --sigint-ignore                         Ignore SIGINT (CTRL-C).
# @flag -o --one-database                       Ignore statements except those that occur while the default database is the one named at the command line.
# @option --pager <name>                        Pager to use to display results.
# @option -p --password <name>                  Password to use when connecting to server.
# @option -P --port <#>                         Port number to use for connection or 0 for default to, in order of preference, my.cnf, $MYSQL_TCP_PORT, /etc/services, built-in default (3306).
# @flag --progress-reports                      Get progress reports for long running commands (like ALTER TABLE) (Defaults to on; use --skip-progress-reports to disable.)
# @option --prompt <name>                       Set the command line prompt to this value.
# @option --protocol[tcp|socket|pipe] <name>    The protocol to use for connection.
# @flag -q --quick                              Don't cache result, print it row by row.
# @flag -r --raw                                Write fields without conversion.
# @flag --reconnect                             Reconnect if the connection is lost.
# @flag -s --silent                             Be more silent.
# @option -S --socket <name>                    The socket file to use for connection.
# @flag --ssl                                   Enable SSL for connection (automatically enabled with other flags).
# @option --ssl-ca <name>                       CA file in PEM format (check OpenSSL docs, implies --ssl).
# @option --ssl-capath <path>                   CA directory (check OpenSSL docs, implies --ssl).
# @option --ssl-cert <name>                     X509 cert in PEM format (implies --ssl).
# @option --ssl-cipher <name>                   SSL cipher to use (implies --ssl).
# @option --ssl-key <name>                      X509 key in PEM format (implies --ssl).
# @option --ssl-crl <name>                      Certificate revocation list (implies --ssl).
# @option --ssl-crlpath <path>                  Certificate revocation list path (implies --ssl).
# @option --tls-version <name>                  TLS protocol version for secure connection.
# @flag --ssl-verify-server-cert                Verify server's "Common Name" in its cert against hostname used when connecting.
# @flag -t --table                              Output in table format.
# @option --tee <name>                          Append everything into outfile.
# @option -u --user <name>                      User for login if not current user.
# @flag -U --safe-updates                       Only allow UPDATE and DELETE that uses keys.
# @flag -v --verbose                            Write more.
# @flag -V --version                            Output version information and exit.
# @flag -w --wait                               Wait and retry if connection is down.
# @option --connect-timeout <#>                 Number of seconds before connection timeout.
# @option --max-allowed-packet <#>              The maximum packet length to send to or receive from server.
# @option --net-buffer-length <#>               The buffer size for TCP/IP and socket communication.
# @option --select-limit <#>                    Automatic limit for SELECT when using --safe-updates.
# @option --max-join-size <#>                   Automatic limit for rows in a join when using --safe-updates.
# @flag --secure-auth                           Refuse client connecting to server if it uses old (pre-4.1.1) protocol.
# @option --server-arg <name>                   Send embedded server this as a parameter.
# @flag --show-warnings                         Show warnings after every statement.
# @option --plugin-dir <dir>                    Directory for client-side plugins.
# @option --default-auth <name>                 Default authentication client-side plugin to use.
# @flag --binary-mode                           Binary mode allows certain character sequences to be processed as data that would otherwise be treated with a special meaning by the parser.
# @flag --connect-expired-password              Notify the server that this client is prepared to handle expired password sandbox mode even if --batch was specified.
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