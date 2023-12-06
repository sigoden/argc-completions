#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --file <FILENAME>                    output file or directory name
# @option -F --format[`_choice_format`] <c|d|t|p>  output file format (custom, directory, tar, plain text (default))
# @option -j --jobs <NUM>                         use this many parallel jobs to dump
# @flag -v --verbose                              verbose mode
# @flag -V --version                              output version information, then exit
# @option -Z --compress <0-9>                     compression level for compressed formats
# @option --lock-wait-timeout <TIMEOUT>           fail after waiting TIMEOUT for a table lock
# @flag --no-sync                                 do not wait for changes to be written safely to disk
# @flag -? --help                                 show this help, then exit
# @flag -a --data-only                            dump only the data, not the schema
# @flag -b --blobs                                include large objects in dump
# @flag -B --no-blobs                             exclude large objects in dump
# @flag -c --clean                                clean (drop) database objects before recreating
# @flag -C --create                               include commands to create database in dump
# @option -e --extension <PATTERN>                dump the specified extension(s) only
# @option -E --encoding                           dump the data in encoding ENCODING
# @option -n --schema <PATTERN>                   dump the specified schema(s) only
# @option -N --exclude-schema <PATTERN>           do NOT dump the specified schema(s)
# @flag -O --no-owner                             skip restoration of object ownership in plain-text format
# @flag -s --schema-only                          dump only the schema, no data
# @option -S --superuser <NAME>                   superuser user name to use in plain-text format
# @option -t --table <PATTERN>                    dump the specified table(s) only
# @option -T --exclude-table <PATTERN>            do NOT dump the specified table(s)
# @flag -x --no-privileges                        do not dump privileges (grant/revoke)
# @flag --binary-upgrade                          for use by upgrade utilities only
# @flag --column-inserts                          dump data as INSERT commands with column names
# @flag --disable-dollar-quoting                  disable dollar quoting, use SQL standard quoting
# @flag --disable-triggers                        disable triggers during data-only restore
# @flag --enable-row-security                     enable row security (dump only content user has access to)
# @option --exclude-table-data <PATTERN>          do NOT dump data for the specified table(s)
# @option --extra-float-digits <NUM>              override default setting for extra_float_digits
# @flag --if-exists                               use IF EXISTS when dropping objects
# @option --include-foreign-data <PATTERN>        include data of foreign tables on foreign servers matching PATTERN
# @flag --inserts                                 dump data as INSERT commands, rather than COPY
# @flag --load-via-partition-root                 load partitions via the root table
# @flag --no-comments                             do not dump comments
# @flag --no-publications                         do not dump publications
# @flag --no-security-labels                      do not dump security label assignments
# @flag --no-subscriptions                        do not dump subscriptions
# @flag --no-table-access-method                  do not dump table access methods
# @flag --no-tablespaces                          do not dump tablespace assignments
# @flag --no-toast-compression                    do not dump TOAST compression methods
# @flag --no-unlogged-table-data                  do not dump unlogged table data
# @flag --on-conflict-do-nothing                  add ON CONFLICT DO NOTHING to INSERT commands
# @flag --quote-all-identifiers                   quote all identifiers, even if not key words
# @option --rows-per-insert <NROWS>               number of rows per INSERT; implies --inserts
# @option --section[pre-data|data|post-data]      dump named section (pre-data, data, or post-data)
# @flag --serializable-deferrable                 wait until the dump can run without anomalies
# @option --snapshot                              use given snapshot for the dump
# @flag --strict-names                            require table and/or schema include patterns to match at least one entity each
# @flag --use-set-session-authorization           use SET SESSION AUTHORIZATION commands instead of ALTER OWNER commands to set ownership
# @option -d --dbname[`_choice_database`]         database to dump
# @option -h --host[`_module_os_hostname`] <HOSTNAME>  database server host or socket directory
# @option -p --port                               database server port number
# @option -U --username[`_choice_user`] <NAME>    connect as specified database user
# @flag -w --no-password                          never prompt for password
# @flag -W --password                             force password prompt (should happen automatically)
# @option --role <ROLENAME>                       do SET ROLE before dump
# @arg dbname[`_choice_database`]

_choice_format() {
    cat <<-'EOF'
c	custom
d	directory
t	tar
p	plain text
EOF
}

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
}

_choice_user() {
    psql -Atqwc 'select usename from pg_user' template1 2>/dev/null
}

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