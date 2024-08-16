#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --command                run only single command (SQL or internal) and exit
# @option -f --file                   execute commands from file and exit
# @flag -w --no-password              never prompt for password
# @flag -X --no-init                  do not execute initialization scripts (aliases: --no-rc --no-psqlrc --no-usqlrc)
# @option -o --out <FILE>             output file
# @flag -W --password                 force password prompt (should happen automatically)
# @flag -1 --single-transaction       execute as a single transaction (if non-interactive)
# @option -v --set <NAME=VALUE>       set variable NAME to VALUE (see \set command, aliases: --var --variable)
# @option -N --cset <NAME=DSN>        set named connection NAME to DSN (see \cset command)
# @option -P --pset <VAR=ARG>         set printing option VAR to ARG (see \pset command)
# @option -F --field-separator        field separator for unaligned and CSV output (default "|" and ",")
# @option -R --record-separator       record separator for unaligned and CSV output (default \n)
# @option -T --table-attr             set HTML table tag attributes (e.g., width, border)
# @flag -A --no-align                 unaligned table output mode
# @flag -H --html                     HTML table output mode
# @flag -t --tuples-only              print rows only
# @flag -x --expanded                 turn on expanded table output
# @flag -z --field-separator-zero     set field separator for unaligned and CSV output to zero byte
# @flag -0 --record-separator-zero    set record separator for unaligned and CSV output to zero byte
# @flag -J --json                     JSON output mode
# @flag -C --csv                      CSV output mode
# @flag -G --vertical                 vertical output mode
# @flag -q --quiet                    run quietly (no messages, only query output)
# @option --config <string>           config file
# @flag -V --version                  output version information, then exit
# @flag -? --help                     show this help, then exit
# @arg dsn[`_choice_dsn`]             database url or connection name

_choice_dsn() {
    cat <<-'EOF' | sed 's|:|://\x00\t|'
postgres:PostgreSQL
mysql:MySQL
sqlserver:Microsoft SQL Server
oracle:Oracle Database
sqlite3:SQLite3
csvq:CSVQ
maxcompute:Alibaba MaxCompute
ots:Alibaba Tablestore
avatica:Apache Avatica
h2:Apache H2
ignite:Apache Ignite
athena:AWS Athena
cosmos:Azure CosmosDB
cassandra:Cassandra
clickhouse:ClickHouse
couchbase:Couchbase
ql:Cznic QL
databend:Databend
exasol:Exasol
firebird:Firebird
flightsql:FlightSQL
bigquery:Google BigQuery
spanner:Google Spanner
adodb:Microsoft ADODB
moderncsqlite:ModernC SQLite3
mymysql:MySQL MyMySQL
netezza:Netezza
pgx:PostgreSQL PGX
presto:Presto
sapase:SAP ASE
saphana:SAP HANA
snowflake:Snowflake
trino:Trino
vertica:Vertica
voltdb:VoltDB
godror:GO DRiver for ORacle
odbc:ODBC
postgres:Amazon Redshift
postgres:CockroachDB
adodb:OLE ODBC
mysql:SingleStore MemSQL
mysql:TiDB
mysql:Vitess Database
hive:Apache Hive
impala:Apache Impala
genji:Genji
no_base:NO DRIVERS
most:MOST DRIVERS
all:ALL DRIVERS
bad:BAD DRIVERS
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"