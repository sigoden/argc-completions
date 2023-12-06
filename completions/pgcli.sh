#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -h --host[`_module_os_hostname`] <TEXT>  Host address of the postgres database.
# @option -p --port <INTEGER>                     Port number at which the postgres instance is listening.
# @option -U --username[`_choice_user`] <TEXT>    Username to connect to the postgres database.
# @option -u --user <TEXT>                        Username to connect to the postgres database.
# @flag -W --password                             Force password prompt.
# @flag -w --no-password                          Never prompt for password.
# @flag --single-connection                       Do not use a separate connection for completions.
# @flag -v --version                              Version of pgcli.
# @option -d --dbname[`_choice_database`] <TEXT>  database name to connect to.
# @option --pgclirc <FILE>                        Location of pgclirc file.
# @option -D --dsn <TEXT>                         Use DSN configured into the [alias_dsn] section of pgclirc file.
# @flag --list-dsn                                list of DSN configured into the [alias_dsn] section of pgclirc file.
# @option --row-limit <INTEGER>                   Set threshold for row limit prompt.
# @flag --less-chatty                             Skip intro on startup and goodbye on exit.
# @option --prompt <TEXT>                         Prompt format (Default: "\u@\h:\d> ").
# @option --prompt-dsn <TEXT>                     Prompt format for connections using DSN aliases (Default: "\u@\h:\d> ").
# @flag -l --list                                 list available databases, then exit.
# @flag --auto-vertical-output                    Automatically switch to vertical output mode if the result is wider than the terminal width.
# @option --warn <TEXT>                           Warn before running a destructive query.
# @option --ssh-tunnel <TEXT>                     Open an SSH tunnel to the given address and connect to the database from it.
# @flag --help                                    Show this message and exit.
# @arg dbname[`_choice_database`]
# @arg username[`_choice_user`]

_choice_user() {
    psql -Atqwc 'select usename from pg_user' template1 2>/dev/null
}

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
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