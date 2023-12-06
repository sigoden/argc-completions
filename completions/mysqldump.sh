#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --print-defaults                        Print the program argument list and exit.
# @flag --no-defaults                           Don't read default options from any option file.
# @option --defaults-file <file>                Only read default options from the given file ♯.
# @option --defaults-extra-file <file>          Read this file after the global files are read.
# @option --defaults-group-suffix <#>           Additionally read default groups with ♯ appended as a suffix.
# @flag -A --all-databases                      Dump all the databases.
# @flag -Y --all-tablespaces                    Dump all the tablespaces.
# @flag -y --no-tablespaces                     Do not dump any tablespace information.
# @flag --add-drop-database                     Add a DROP DATABASE before each create.
# @flag --add-drop-table                        Add a DROP TABLE before each create.
# @flag --add-drop-trigger                      Add a DROP TRIGGER before each create.
# @flag --add-locks                             Add locks around INSERT statements.
# @flag --allow-keywords                        Allow creation of column names that are keywords.
# @flag --apply-slave-statements                Adds 'STOP SLAVE' prior to 'CHANGE MASTER' and 'START SLAVE' to bottom of dump.
# @option --as-of <name>                        Dump system versioned table(s) as of specified timestamp.
# @option --character-sets-dir <dir>            Directory for character set files.
# @flag -i --comments                           Write additional information.
# @option --compatible[ansi|mysql323|mysql40|postgresql|oracle|mssql|db2|maxdb|no_key_options|no_table_options|no_field_options] <name>  Change the dump to be compatible with a given mode.
# @flag --compact                               Give less verbose output (useful for debugging).
# @flag -c --complete-insert                    Use complete insert statements.
# @flag -C --compress                           Use compression in server/client protocol.
# @flag --copy-s3-tables                        If 'no' S3 tables will be ignored, otherwise S3 tables will be copied as  Aria tables and then altered to S3
# @flag -a --create-options                     Include all MariaDB specific create options.
# @flag -B --databases                          Dump several databases.
# @option -# --debug <#>                        This is a non-debug version.
# @flag --debug-check                           Check memory and open file usage at exit.
# @flag --debug-info                            Print some debug info at exit.
# @option --default-character-set <name>        Set the default character set.
# @flag --delayed-insert                        Insert rows with INSERT DELAYED.
# @flag --delete-master-logs                    Delete logs on master after backup.
# @flag -K --disable-keys                       '/*!40000 ALTER TABLE tb_name DISABLE KEYS */; and '/*!40000 ALTER TABLE tb_name ENABLE KEYS */; will be put in the output.
# @flag --dump-date                             Put a dump date to the end of the output.
# @flag -H --dump-history                       Dump system-versioned tables with history (only for timestamp based versioning)
# @option --dump-slave <#>                      This causes the binary log position and filename of the master to be appended to the dumped data output.
# @flag -E --events                             Dump events.
# @flag -e --extended-insert                    Use multiple-row INSERT syntax that include several VALUES lists.
# @option --fields-terminated-by <name>         Fields in the output file are terminated by the given string.
# @option --fields-enclosed-by <name>           Fields in the output file are enclosed by the given character.
# @option --fields-optionally-enclosed-by <name>  Fields in the output file are optionally enclosed by the given character.
# @option --fields-escaped-by <name>            Fields in the output file are escaped by the given character.
# @flag -F --flush-logs                         Flush logs file in server before starting dump.
# @flag --flush-privileges                      Emit a FLUSH PRIVILEGES statement after dumping the mysql database.
# @flag -f --force                              Continue even if we get an SQL error.
# @flag --gtid                                  Used together with --master-data=1 or --dump-slave=1.When enabled, the output from those options will set the GTID position instead of the binlog file and offset; the file/offset will appear only as a comment.
# @flag --header                                Used together with --tab.
# @flag -? --help                               Display this help message and exit.
# @option --hex-blob[BINARY|VARBINARY|BLOB]     Dump binary strings in hexadecimal format.
# @option -h --host[`_module_os_hostname`] <name>  Connect to host.
# @option --ignore-database <name>              Do not dump the specified database.
# @option --ignore-table-data <name>            Do not dump the specified table data.
# @option --ignore-table <name>                 Do not dump the specified table.
# @flag --include-master-host-port              Adds 'MASTER_HOST=<host>, MASTER_PORT=<port>' to 'CHANGE MASTER TO..' in dump produced with --dump-slave.
# @flag --insert-ignore                         Insert rows with INSERT IGNORE.
# @option --lines-terminated-by <name>          Lines in the output file are terminated by the given string.
# @flag -x --lock-all-tables                    Locks all tables across all databases.
# @flag -l --lock-tables                        Lock all tables for read.
# @option --log-error <name>                    Append warnings and errors to given file.
# @flag --log-queries                           When restoring the dump, the server will, if logging turned on, log the queries to the general and slow query log.
# @option --master-data <#>                     This causes the binary log position and filename to be appended to the output.
# @option --max-allowed-packet <#>              The maximum packet length to send to or receive from server.
# @option --max-statement-time <#>              Max statement execution time.
# @option --net-buffer-length <#>               The buffer size for TCP/IP and socket communication.
# @flag --no-autocommit                         Wrap tables with autocommit/commit statements.
# @flag -n --no-create-db                       Suppress the CREATE DATABASE ... IF EXISTS statement that normally is output for each dumped database if --all-databases or --databases is given.
# @flag -t --no-create-info                     Don't write table creation info.
# @flag -d --no-data                            No row information.
# @option --no-data-med[MRG_MyISAM|MRG_ISAM|CONNECT|OQGRAPH|SPIDER|VP|FEDERATED]  No row information for engines that Manage External Data.
# @flag -N --no-set-names                       Same as --skip-set-charset.
# @flag --opt                                   Same as --add-drop-table, --add-locks, --create-options, --quick, --extended-insert, --lock-tables, --set-charset, and --disable-keys.
# @flag --order-by-primary                      Sorts each table's rows by primary key, or first unique key, if such a key exists.
# @flag --order-by-size                         Dump tables in the order of their size, smaller first.
# @option -p --password <name>                  Password to use when connecting to server.
# @option -P --port <#>                         Port number to use for connection.
# @option --protocol[tcp|socket|pipe] <name>    The protocol to use for connection.
# @flag -q --quick                              Don't buffer query, dump directly to stdout.
# @flag -Q --quote-names                        Quote table and column names with backticks (`).
# @flag --replace                               Use REPLACE INTO instead of INSERT INTO.
# @option -r --result-file <file>               Direct output to a given file.
# @flag -R --routines                           Dump stored routines (functions and procedures).
# @flag --set-charset                           Add 'SET NAMES default_character_set' to the output.
# @flag --single-transaction                    Creates a consistent snapshot by dumping all tables in a single transaction.
# @flag --skip-opt                              Disable --opt.
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
# @option --system[all|users|plugins|udfs|servers|stats|timezones] <name>  Dump system tables as portable SQL.
# @option -T --tab <name>                       Create tab-separated textfile for each table to given path.
# @flag --tables                                Overrides option --databases (-B).
# @flag --triggers                              Dump triggers for each dumped table.
# @flag --tz-utc                                Set connection time zone to UTC before commencing the dump and add SET TIME_ZONE=´+00:00´ to the top of the dump file.
# @option -u --user <name>                      User for login if not current user.
# @flag -v --verbose                            Print info about the various stages.
# @flag -V --version                            Output version information and exit.
# @option -w --where <name>                     Dump only selected records.
# @flag -X --xml                                Dump a database as well formed XML.
# @option --plugin-dir <dir>                    Directory for client-side plugins.
# @option --default-auth <name>                 Default authentication client-side plugin to use.
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