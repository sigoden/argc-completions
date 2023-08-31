#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Print help information

# {{ surreal start
# @cmd Start the database server
# @option --addr <addr>          The allowed networks for master authentication [env: SURREAL_ADDR=] [default: 127.0.0.1/32]
# @option -b --bind <bind>       The hostname or ip address to listen for connections on [env: SURREAL_BIND=] [default: 0.0.0.0:8000]
# @flag -h --help                Print help information
# @option -k --key <key>         Encryption key to use for on-disk encryption [env: SURREAL_KEY=]
# @option --kvs-ca <kvs-ca>      Path to the CA file used when connecting to the remote KV store [env: SURREAL_KVS_CA=]
# @option --kvs-crt <kvs-crt>    Path to the certificate file used when connecting to the remote KV store [env: SURREAL_KVS_CRT=]
# @option --kvs-key <kvs-key>    Path to the private key file used when connecting to the remote KV store [env: SURREAL_KVS_KEY=]
# @option -l --log <log>         The logging level for the database server.
# @flag --no-banner              Whether to hide the startup banner [env: SURREAL_NO_BANNER=]
# @option -p --pass <pass>       The master password for the database [env: SURREAL_PASS=]
# @flag -s --strict              Whether strict mode is enabled on this database instance [env: SURREAL_STRICT=]
# @option -u --user <user>       The master username for the database [env: SURREAL_USER=] [default: root]
# @option --web-crt <web-crt>    Path to the certificate file for encrypted client connections [env: SURREAL_WEB_CRT=]
# @option --web-key <web-key>    Path to the private key file for encrypted client connections [env: SURREAL_WEB_KEY=]
# @arg path!                     Database path used for storing data [env: SURREAL_PATH=] [default: memory]
start() {
    :;
}
# }} surreal start

# {{ surreal backup
# @cmd Backup data to or from an existing database
# @flag -h --help             Print help information
# @option -p --pass <pass>    Database authentication password to use when connecting [default: root]
# @option -u --user <user>    Database authentication username to use when connecting [default: root]
# @arg from!                  Path to the remote database or file from which to export
# @arg into!                  Path to the remote database or file into which to import
backup() {
    :;
}
# }} surreal backup

# {{ surreal import
# @cmd Import a SurrealQL script into an existing database
# @option -c --conn <conn>    Remote database server url to connect to [default: https://cloud.surrealdb.com]
# @option --db <db>           The database to import the data into
# @flag -h --help             Print help information
# @option --ns <ns>           The namespace to import the data into
# @option -p --pass <pass>    Database authentication password to use when connecting [default: root]
# @option -u --user <user>    Database authentication username to use when connecting [default: root]
# @arg file!                  Path to the sql file to import
import() {
    :;
}
# }} surreal import

# {{ surreal export
# @cmd Export an existing database as a SurrealQL script
# @option -c --conn <conn>    Remote database server url to connect to [default: https://cloud.surrealdb.com]
# @option --db <db>           The database to export the data from
# @flag -h --help             Print help information
# @option --ns <ns>           The namespace to export the data from
# @option -p --pass <pass>    Database authentication password to use when connecting [default: root]
# @option -u --user <user>    Database authentication username to use when connecting [default: root]
# @arg file!                  Path to the sql file to export.
export() {
    :;
}
# }} surreal export

# {{ surreal version
# @cmd Output the command-line tool version information
# @flag -h --help    Print help information
version() {
    :;
}
# }} surreal version

# {{ surreal sql
# @cmd Start an SQL REPL in your terminal with pipe support
# @option -c --conn <conn>    Remote database server url to connect to [default: wss://cloud.surrealdb.com]
# @option --db <db>           The database to export the data from
# @flag -h --help             Print help information
# @option --ns <ns>           The namespace to export the data from
# @option -p --pass <pass>    Database authentication password to use when connecting [default: root]
# @flag --pretty              Whether database responses should be pretty printed
# @option -u --user <user>    Database authentication username to use when connecting [default: root]
sql() {
    :;
}
# }} surreal sql

# {{ surreal isready
# @cmd Check if the SurrealDB server is ready to accept connections
# @option -c --conn <conn>    Remote database server url to connect to [default: http://localhost:8000]
# @flag -h --help             Print help information
isready() {
    :;
}
# }} surreal isready

command eval "$(argc --argc-eval "$0" "$@")"