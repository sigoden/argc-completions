#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --print-defaults                           Print the program argument list and exit.
# @flag --no-defaults                              Don't read default options from any option file, except for login file.
# @option --defaults-file <file>                   Only read default options from the given file ♯.
# @option --defaults-extra-file <file>             Read this file after the global files are read.
# @option --defaults-group-suffix[group|suffix] <#>  Also read groups with concat
# @option --login-path <path>                      Read this path from the login file.
# @flag -A --all-databases                         Dump all the databases.
# @flag -Y --all-tablespaces                       Dump all the tablespaces.
# @flag -y --no-tablespaces                        Do not dump any tablespace information.
# @flag --add-drop-database                        Add a DROP DATABASE before each create.
# @flag --add-drop-table                           Add a DROP TABLE before each create.
# @flag --add-drop-trigger                         Add a DROP TRIGGER before each create.
# @flag --add-locks                                Add locks around INSERT statements.
# @flag --allow-keywords                           Allow creation of column names that are keywords.
# @flag --apply-replica-statements                 Adds 'STOP SLAVE' prior to 'CHANGE MASTER' and 'START SLAVE' to bottom of dump.
# @flag --apply-slave-statements                   This option is deprecated and will be removed in a future version.
# @option --bind-address <name>                    IP address to bind to.
# @option --character-sets-dir <dir>               Directory for character set files.
# @flag --column-statistics                        Add an ANALYZE TABLE statement to regenerate any existing column statistics.
# @flag -i --comments                              Write additional information.
# @option --compatible <name>                      Change the dump to be compatible with a given mode.
# @flag --compact                                  Give less verbose output (useful for debugging).
# @flag -c --complete-insert                       Use complete insert statements.
# @flag -C --compress                              Use compression in server/client protocol.
# @flag -a --create-options                        Include all MySQL specific create options.
# @flag -B --databases                             Dump several databases.
# @option -# --debug <#>                           This is a non-debug version.
# @flag --debug-check                              This is a non-debug version.
# @flag --debug-info                               This is a non-debug version.
# @option --default-character-set <name>           Set the default character set.
# @flag --delete-source-logs                       Rotate logs before the backup, equivalent to FLUSH LOGS, and purge all old binary logs after the backup, equivalent to PURGE LOGS.
# @flag --delete-master-logs                       This option is deprecated and will be removed in a future version.
# @flag -K --disable-keys                          '/*!40000 ALTER TABLE tb_name DISABLE KEYS */; and '/*!40000 ALTER TABLE tb_name ENABLE KEYS */; will be put in the output.
# @option --dump-replica <#>                       This causes the binary log position and filename of the source to be appended to the dumped data output.
# @option --dump-slave <#>                         This option is deprecated and will be removed in a future version.
# @flag -E --events                                Dump events.
# @flag -e --extended-insert                       Use multiple-row INSERT syntax that include several VALUES lists.
# @option --fields-terminated-by <name>            Fields in the output file are terminated by the given string.
# @option --fields-enclosed-by <name>              Fields in the output file are enclosed by the given character.
# @option --fields-optionally-enclosed-by <name>   Fields in the output file are optionally enclosed by the given character.
# @option --fields-escaped-by <name>               Fields in the output file are escaped by the given character.
# @flag -F --flush-logs                            Flush logs file in server before starting dump.
# @flag --flush-privileges                         Emit a FLUSH PRIVILEGES statement after dumping the mysql database.
# @flag -f --force                                 Continue even if we get an SQL error.
# @flag -? --help                                  Display this help message and exit.
# @option --hex-blob[BINARY|VARBINARY|BLOB]        Dump binary strings in hexadecimal format.
# @option -h --host[`_module_os_hostname`] <name>  Connect to host.
# @option --ignore-error <name>                    A comma-separated list of error numbers to be ignored if encountered during dump.
# @option --ignore-table <name>                    Do not dump the specified table.
# @flag --include-source-host-port                 Adds 'MASTER_HOST=<host>, MASTER_PORT=<port>' to 'CHANGE MASTER TO..' in dump produced with --dump-replica.
# @flag --include-master-host-port                 This option is deprecated and will be removed in a future version.
# @flag --insert-ignore                            Insert rows with INSERT IGNORE.
# @option --lines-terminated-by <name>             Lines in the output file are terminated by the given string.
# @flag -x --lock-all-tables                       Locks all tables across all databases.
# @flag -l --lock-tables                           Lock all tables for read.
# @option --log-error <name>                       Append warnings and errors to given file.
# @option --mysqld-long-query-time <#>             Set long_query_time for the session of this dump.
# @option --source-data <#>                        This causes the binary log position and filename to be appended to the output.
# @option --master-data <#>                        This option is deprecated and will be removed in a future version.
# @option --max-allowed-packet <#>                 The maximum packet length to send to or receive from server.
# @option --net-buffer-length <#>                  The buffer size for TCP/IP and socket communication.
# @flag --no-autocommit                            Wrap tables with autocommit/commit statements.
# @flag -n --no-create-db                          Suppress the CREATE DATABASE ... IF EXISTS statement that normally is output for each dumped database if --all-databases or --databases is given.
# @flag -t --no-create-info                        Don't write table creation info.
# @flag -d --no-data                               No row information.
# @flag -N --no-set-names                          Same as --skip-set-charset.
# @flag --opt                                      Same as --add-drop-table, --add-locks, --create-options, --quick, --extended-insert, --lock-tables, --set-charset, and --disable-keys.
# @flag --order-by-primary                         Sorts each table's rows by primary key, or first unique key, if such a key exists.
# @option -p --password <name>                     Password to use when connecting to server.
# @option -P --port <#>                            Port number to use for connection.
# @option --protocol[tcp|socket|pipe|memory] <name>  The protocol to use for connection.
# @flag -q --quick                                 Don't buffer query, dump directly to stdout.
# @flag -Q --quote-names                           Quote table and column names with backticks (`).
# @flag --replace                                  Use REPLACE INTO instead of INSERT INTO.
# @option -r --result-file <file>                  Direct output to a given file.
# @flag -R --routines                              Dump stored routines (functions and procedures).
# @flag --set-charset                              Add 'SET NAMES default_character_set' to the output.
# @option --set-gtid-purged <name>                 Add 'SET @@GLOBAL.GTID_PURGED' to the output.
# @flag --single-transaction                       Creates a consistent snapshot by dumping all tables in a single transaction.
# @flag --dump-date                                Put a dump date to the end of the output.
# @flag --skip-opt                                 Disable --opt.
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
# @option -T --tab <name>                          Create tab-separated textfile for each table to given path.
# @flag --tables                                   Overrides option --databases (-B).
# @flag --triggers                                 Dump triggers for each dumped table.
# @flag --tz-utc                                   SET TIME_ZONE='+00:00' at top of dump to allow dumping of TIMESTAMP data when a server has data in different time zones or data is being moved between servers with different time zones.
# @option -u --user <name>                         User for login if not current user.
# @flag -v --verbose                               Print info about the various stages.
# @flag -V --version                               Output version information and exit.
# @option -w --where <name>                        Dump only selected records.
# @flag -X --xml                                   Dump a database as well formed XML.
# @option --plugin-dir <dir>                       Directory for client-side plugins.
# @option --default-auth <name>                    Default authentication client-side plugin to use.
# @flag --enable-cleartext-plugin                  Enable/disable the clear text authentication plugin.
# @flag -M --network-timeout                       Allows huge tables to be dumped by setting max_allowed_packet to maximum value and net_read_timeout/net_write_timeout to large value.
# @flag --show-create-table-skip-secondary-engine  Controls whether SECONDARY_ENGINE CREATE TABLE clause should be dumped or not.
# @option --compression-algorithms <name>          Use compression algorithm in server/client protocol.
# @option --zstd-compression-level <#>             Use this compression level in the client/server protocol, in case --compression-algorithms=zstd.
# @flag --skip-generated-invisible-primary-key     Controls whether generated invisible primary key and key column should be dumped or not.
# @arg database
# @arg tables*

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