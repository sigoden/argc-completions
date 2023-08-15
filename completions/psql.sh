#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --command                      run only single command (SQL or internal) and exit
# @option -d --dbname                       database name to connect to
# @option -f --file <FILENAME>              execute commands from file, then exit
# @flag -l --list                           list available databases, then exit
# @option -v <NAME=VALUE>                   set psql variable NAME to VALUE (e.g., -v ON_ERROR_STOP=1)
# @option --set <NAME=VALUE>                set psql variable NAME to VALUE (e.g., -v ON_ERROR_STOP=1)
# @option --variable <NAME=VALUE>           set psql variable NAME to VALUE (e.g., -v ON_ERROR_STOP=1)
# @flag -V --version                        output version information, then exit
# @flag -X --no-psqlrc                      do not read startup file (~/.psqlrc)
# @flag -1 --single-transaction             execute as a single transaction (if non-interactive)
# @option -? --help[options|commands|variables] <options>  show this help, then exit
# @flag -a --echo-all                       echo all input from script
# @flag -b --echo-errors                    echo failed commands
# @flag -e --echo-queries                   echo commands sent to server
# @flag -E --echo-hidden                    display queries that internal commands generate
# @option -L --log-file <FILENAME>          send session log to file
# @flag -n --no-readline                    disable enhanced command line editing (readline)
# @option -o --output <FILENAME>            send query results to file (or |pipe)
# @flag -q --quiet                          run quietly (no messages, only query output)
# @flag -s --single-step                    single-step mode (confirm each query)
# @flag -S --single-line                    single-line mode (end of line terminates SQL command)
# @flag -A --no-align                       unaligned table output mode
# @flag --csv                               CSV (Comma-Separated Values) table output mode
# @option -F --field-separator <STRING>     field separator for unaligned output
# @flag -H --html                           HTML table output mode
# @option -P --pset <VAR[=ARG]>             set printing option VAR to ARG (see \pset command)
# @option -R --record-separator <STRING>    record separator for unaligned output (default: newline)
# @flag -t --tuples-only                    print rows only
# @option -T --table-attr <TEXT>            set HTML table tag attributes (e.g., width, border)
# @flag -x --expanded                       turn on expanded table output
# @flag -z --field-separator-zero           set field separator for unaligned output to zero byte
# @flag -0 --record-separator-zero          set record separator for unaligned output to zero byte
# @option -h --host[`_module_os_hostname`] <HOSTNAME>  database server host or socket directory (default: "local socket")
# @option -p --port                         database server port
# @option -U --username                     database user name
# @flag -w --no-password                    never prompt for password
# @flag -W --password                       force password prompt (should happen automatically)
# @arg database[`_choice_database`]
# @arg user[`_choice_user`]

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