#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -u --url <value>               specify the database URL
# @option -e --env <value>               specify an environment variable containing the database URL (default: "DATABASE_URL")
# @option --env-file <file>              specify a file to load environment variables from (default: ".env")
# @option -d --migrations-dir <value>    specify the directory containing migration files (default: "./db/migrations") [$DBMATE_MIGRATIONS_DIR]
# @option --migrations-table <value>     specify the database table to record migrations in (default: "schema_migrations") [$DBMATE_MIGRATIONS_TABLE]
# @option -s --schema-file <value>       specify the schema file location (default: "./db/schema.sql") [$DBMATE_SCHEMA_FILE]
# @flag --no-dump-schema                 don't update the schema file on migrate/rollback (default: false) [$DBMATE_NO_DUMP_SCHEMA]
# @flag --wait                           wait for the db to become available before executing the subsequent command (default: false) [$DBMATE_WAIT]
# @option --wait-timeout <value>         timeout for --wait flag (default: 1m0s) [$DBMATE_WAIT_TIMEOUT]
# @flag -h --help                        show help
# @flag -v --version                     print the version

# {{ dbmate new
# @cmd Generate a new migration file
# @alias n
# @flag -h --help    show help
new() {
    :;
}
# }} dbmate new

# {{ dbmate up
# @cmd Create database (if necessary) and migrate to the latest version
# @flag --strict        fail if migrations would be applied out of order (default: false) [$DBMATE_STRICT]
# @flag -v --verbose    print the result of each statement execution (default: false) [$DBMATE_VERBOSE]
# @flag -h --help       show help
up() {
    :;
}
# }} dbmate up

# {{ dbmate create
# @cmd Create database
# @flag -h --help    show help
create() {
    :;
}
# }} dbmate create

# {{ dbmate drop
# @cmd Drop database (if it exists)
# @flag -h --help    show help
drop() {
    :;
}
# }} dbmate drop

# {{ dbmate migrate
# @cmd Migrate to the latest version
# @flag --strict        fail if migrations would be applied out of order (default: false) [$DBMATE_STRICT]
# @flag -v --verbose    print the result of each statement execution (default: false) [$DBMATE_VERBOSE]
# @flag -h --help       show help
migrate() {
    :;
}
# }} dbmate migrate

# {{ dbmate rollback
# @cmd Rollback the most recent migration
# @alias down
# @flag -v --verbose    print the result of each statement execution (default: false) [$DBMATE_VERBOSE]
# @flag -h --help       show help
rollback() {
    :;
}
# }} dbmate rollback

# {{ dbmate status
# @cmd List applied and pending migrations
# @flag --exit-code    return 1 if there are pending migrations (default: false)
# @flag --quiet        don't output any text (implies --exit-code) (default: false)
# @flag -h --help      show help
status() {
    :;
}
# }} dbmate status

# {{ dbmate dump
# @cmd Write the database schema to disk
# @flag -h --help    show help
dump() {
    :;
}
# }} dbmate dump

# {{ dbmate load
# @cmd Load schema file to the database
# @flag -h --help    show help
load() {
    :;
}
# }} dbmate load

# {{ dbmate wait
# @cmd Wait for the database to become available
# @flag -h --help    show help
wait() {
    :;
}
# }} dbmate wait

command eval "$(argc --argc-eval "$0" "$@")"