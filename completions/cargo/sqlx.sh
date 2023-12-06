#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ cargo sqlx database
# @cmd Group of commands for creating and dropping your database
# @flag -h --help    Print help
database() {
    :;
}

# {{{ cargo sqlx database create
# @cmd Creates the database specified in your DATABASE_URL
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -h --help                                Print help (see a summary with '-h')
database::create() {
    :;
}
# }}} cargo sqlx database create

# {{{ cargo sqlx database drop
# @cmd Drops the database specified in your DATABASE_URL
# @flag -y                                       Automatic confirmation.
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -f --force                               PostgreSQL only: force drops the database
# @flag -h --help                                Print help (see a summary with '-h')
database::drop() {
    :;
}
# }}} cargo sqlx database drop

# {{{ cargo sqlx database reset
# @cmd Drops the database specified in your DATABASE_URL, re-creates it, and runs any pending migrations
# @flag -y                                       Automatic confirmation.
# @option --source                               Path to folder containing migrations
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -f --force                               PostgreSQL only: force drops the database
# @flag -h --help                                Print help (see a summary with '-h')
database::reset() {
    :;
}
# }}} cargo sqlx database reset

# {{{ cargo sqlx database setup
# @cmd Creates the database specified in your DATABASE_URL and runs any pending migrations
# @option --source                               Path to folder containing migrations
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -h --help                                Print help (see a summary with '-h')
database::setup() {
    :;
}
# }}} cargo sqlx database setup
# }} cargo sqlx database

# {{ cargo sqlx prepare
# @cmd Generate query metadata to support offline compile-time verification
# @flag --check                                  Run in 'check' mode.
# @flag --workspace                              Generate a single workspace-level `.sqlx` folder.
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -h --help                                Print help (see a summary with '-h')
# @arg args*                                     Arguments to be passed to `cargo rustc ...`
prepare() {
    :;
}
# }} cargo sqlx prepare

# {{ cargo sqlx migrate
# @cmd Group of commands for creating and running migrations
# @flag -h --help    Print help
migrate() {
    :;
}

# {{{ cargo sqlx migrate add
# @cmd Create a new migration with the given description
# @option --source         Path to folder containing migrations
# @flag -r                 If true, creates a pair of up and down migration files with same version else creates a single sql file
# @flag -t --timestamp     If set, use timestamp versioning for the new migration.
# @flag -s --sequential    If set, use sequential versioning for the new migration.
# @flag -h --help          Print help (see a summary with '-h')
# @arg description!
migrate::add() {
    :;
}
# }}} cargo sqlx migrate add

# {{{ cargo sqlx migrate run
# @cmd Run all pending migrations
# @option --source                               Path to folder containing migrations
# @flag --dry-run                                List all the migrations to be run without applying
# @flag --ignore-missing                         Ignore applied migrations that are missing in the resolved migrations
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @option --target-version <TARGET_VERSION>      Apply migrations up to the specified version.
# @flag -h --help                                Print help (see a summary with '-h')
migrate::run() {
    :;
}
# }}} cargo sqlx migrate run

# {{{ cargo sqlx migrate revert
# @cmd Revert the latest migration with a down file
# @option --source                               Path to folder containing migrations
# @flag --dry-run                                List the migration to be reverted without applying
# @flag --ignore-missing                         Ignore applied migrations that are missing in the resolved migrations
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @option --target-version <TARGET_VERSION>      Revert migrations down to the specified version.
# @flag -h --help                                Print help (see a summary with '-h')
migrate::revert() {
    :;
}
# }}} cargo sqlx migrate revert

# {{{ cargo sqlx migrate info
# @cmd List all available migrations
# @option --source                               Path to folder containing migrations
# @option -D --database-url <DATABASE_URL>       Location of the DB, by default will be read from the DATABASE_URL env var or `.env` files
# @option --connect-timeout <CONNECT_TIMEOUT>    The maximum time, in seconds, to try connecting to the database server before returning an error
# @option --sqlite-create-db-wal[true|false] <SQLITE_CREATE_DB_WAL>  Set whether or not to create SQLite databases in Write-Ahead Log (WAL) mode: https://www.sqlite.org/wal.html
# @flag -h --help                                Print help (see a summary with '-h')
migrate::info() {
    :;
}
# }}} cargo sqlx migrate info

# {{{ cargo sqlx migrate build-script
# @cmd Generate a `build.rs` to trigger recompilation when a new migration is added
# @option --source    Path to folder containing migrations
# @flag --force       Overwrite the build script if it already exists
# @flag -h --help     Print help (see a summary with '-h')
migrate::build-script() {
    :;
}
# }}} cargo sqlx migrate build-script
# }} cargo sqlx migrate

# {{ cargo sqlx completions
# @cmd Generate shell completions for the specified shell
# @flag -h --help    Print help
# @arg shell![bash|elvish|fish|powershell|zsh]
completions() {
    :;
}
# }} cargo sqlx completions

command eval "$(argc --argc-eval "$0" "$@")"