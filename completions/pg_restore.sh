#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --dbname[`_choice_database`] <NAME>   connect to database name
# @option -f --file <FILENAME>                     output file name (- for stdout)
# @option -F --format[`_choice_format`] <c|d|t>    backup file format (should be automatic)
# @flag -l --list                                  print summarized TOC of the archive
# @flag -v --verbose                               verbose mode
# @flag -V --version                               output version information, then exit
# @flag -? --help                                  show this help, then exit
# @flag -a --data-only                             restore only the data, no schema
# @flag -c --clean                                 clean (drop) database objects before recreating
# @flag -C --create                                create the target database
# @flag -e --exit-on-error                         exit on error, default is to continue
# @option -I --index <NAME>                        restore named index
# @option -j --jobs <NUM>                          use this many parallel jobs to restore
# @option -L --use-list <FILENAME>                 use table of contents from this file for selecting/ordering output
# @option -n --schema <NAME>                       restore only objects in this schema
# @option -N --exclude-schema <NAME>               do not restore objects in this schema
# @flag -O --no-owner                              skip restoration of object ownership
# @option -P --function <NAME(args)>               restore named function
# @flag -s --schema-only                           restore only the schema, no data
# @option -S --superuser <NAME>                    superuser user name to use for disabling triggers
# @option -t --table <NAME>                        restore named relation (table, view, etc.)
# @option -T --trigger <NAME>                      restore named trigger
# @flag -x --no-privileges                         skip restoration of access privileges (grant/revoke)
# @flag -1 --single-transaction                    restore as a single transaction
# @flag --disable-triggers                         disable triggers during data-only restore
# @flag --enable-row-security                      enable row security
# @flag --if-exists                                use IF EXISTS when dropping objects
# @flag --no-comments                              do not restore comments
# @flag --no-data-for-failed-tables                do not restore data of tables that could not be created
# @flag --no-publications                          do not restore publications
# @flag --no-security-labels                       do not restore security labels
# @flag --no-subscriptions                         do not restore subscriptions
# @flag --no-table-access-method                   do not restore table access methods
# @flag --no-tablespaces                           do not restore tablespace assignments
# @option --section[pre-data|data|post-data]       restore named section (pre-data, data, or post-data)
# @flag --strict-names                             require table and/or schema include patterns to match at least one entity each
# @flag --use-set-session-authorization            use SET SESSION AUTHORIZATION commands instead of ALTER OWNER commands to set ownership
# @option -h --host[`_module_os_hostname`] <HOSTNAME>  database server host or socket directory
# @option -p --port                                database server port number
# @option -U --username[`_choice_user`] <NAME>     connect as specified database user
# @flag -w --no-password                           never prompt for password
# @flag -W --password                              force password prompt (should happen automatically)
# @option --role <ROLENAME>                        do SET ROLE before restore
# @arg file

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
}

_choice_format() {
    cat <<-'EOF'
c	custom
d	directory
t	tar
EOF
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