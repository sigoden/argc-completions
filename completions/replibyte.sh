#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <configuration file>    Replibyte configuration file
# @flag -h --help                             Print help information
# @flag -n --no-telemetry                     disable telemetry
# @flag -V --version                          Print version information
# @arg configuration-file! <configuration file>
# @arg subcommand!

# {{ replibyte dump
# @cmd all dump commands
# @flag -h --help       Print help information
# @flag -V --version    Print version information
dump() {
    :;
}

# {{{ replibyte dump create
# @cmd launch dump -- use `-h` to show all the options
# @option -f --file <dump file>    dump file
# @flag -h --help                  Print help information
# @flag -i --input                 import dump from stdin
# @option -n --name                dump name
# @option -s --source_type[postgresql|mysql|mongodb] <postgresql | mysql | mongodb>  database source type to import
# @flag -V --version               Print version information
dump::create() {
    :;
}
# }}} replibyte dump create

# {{{ replibyte dump delete
# @cmd delete a dump from the defined datastore
# @flag -h --help                      Print help information
# @option --keep-last <KEEP_LAST>      Keep only the last N dumps
# @option --older-than <OLDER_THAN>    Remove all dumps older than the specified number of days.
# @flag -V --version                   Print version information
# @arg dump!                           Name of the dump to delete
dump::delete() {
    :;
}
# }}} replibyte dump delete

# {{{ replibyte dump list
# @cmd list available dumps
# @flag -h --help       Print help information
# @flag -V --version    Print version information
dump::list() {
    :;
}
# }}} replibyte dump list

# {{{ replibyte dump restore
# @cmd all restore commands
# @flag -h --help       Print help information
# @flag -V --version    Print version information
dump::restore() {
    :;
}

# {{{{ replibyte dump restore local
# @cmd Restore dump inside a local Docker container
# @flag -h --help                            Print help information
# @option -i --image <postgresql | mysql | mongodb>  Docker image type
# @flag -o --output                          stream output on stdout
# @option -p --port                          Docker container port to map on the host
# @flag -r --remove                          Remove the Docker container on Ctrl-c
# @option -t --tag                           Docker image tag for the container to spawn
# @option -v --value <latest | dump name>    restore dump -- set `latest` or `<dump name>` - use `dump list` command to list all dumps available
# @flag -V --version                         Print version information
# @arg latest-dump-name! <latest|dump name>
dump::restore::local() {
    :;
}
# }}}} replibyte dump restore local

# {{{{ replibyte dump restore remote
# @cmd Restore dump inside the configured destination
# @flag -h --help                            Print help information
# @flag -o --output                          stream output on stdout
# @option -v --value <latest | dump name>    restore dump -- set `latest` or `<dump name>` - use `dump list` command to list all dumps available
# @flag -V --version                         Print version information
# @arg latest-dump-name! <latest|dump name>
dump::restore::remote() {
    :;
}
# }}}} replibyte dump restore remote
# }}} replibyte dump restore
# }} replibyte dump

# {{ replibyte source
# @cmd all source commands
# @flag -h --help       Print help information
# @flag -V --version    Print version information
source() {
    :;
}

# {{{ replibyte source schema
# @cmd Show the database schema.
# @flag -h --help       Print help information
# @flag -V --version    Print version information
source::schema() {
    :;
}
# }}} replibyte source schema
# }} replibyte source

# {{ replibyte transformer
# @cmd all transformer commands
# @flag -h --help       Print help information
# @flag -V --version    Print version information
transformer() {
    :;
}

# {{{ replibyte transformer list
# @cmd list available transformers
# @flag -h --help       Print help information
# @flag -V --version    Print version information
transformer::list() {
    :;
}
# }}} replibyte transformer list
# }} replibyte transformer

command eval "$(argc --argc-eval "$0" "$@")"