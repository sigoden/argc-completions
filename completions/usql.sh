#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --command*               run only single command (SQL or internal) and exit
# @option -f --file*                  execute commands from file and exit
# @flag -X                            do not read start up file
# @flag --no-rc                       do not read start up file
# @flag --no-no-rc                    do not read start up file
# @option -o --out                    output file
# @flag -W                            force password prompt (should happen automatically)
# @flag --password                    force password prompt (should happen automatically)
# @flag --no-password                 force password prompt (should happen automatically)
# @flag -1                            execute as a single transaction (if non-interactive)
# @flag --single-transaction          execute as a single transaction (if non-interactive)
# @flag --no-single-transaction       execute as a single transaction (if non-interactive)
# @option -v* <NAME=VALUE>            set variable NAME to VALUE
# @option --set* <NAME=VALUE>         set variable NAME to VALUE
# @option --variable* <NAME=VALUE>    set variable NAME to VALUE
# @option -P --pset* <VAR[=ARG]>      set printing option VAR to ARG (see \pset command)
# @option -F --field-separator*       field separator for unaligned and CSV output (default "|" and ",")
# @option -R --record-separator*      record separator for unaligned and CSV output (default \n)
# @option -T --table-attr*            set HTML table tag attributes (e.g., width, border)
# @flag -A                            unaligned table output mode
# @flag --no-align                    unaligned table output mode
# @flag --no-no-align                 unaligned table output mode
# @flag -H                            HTML table output mode
# @flag --html                        HTML table output mode
# @flag --no-html                     HTML table output mode
# @flag -t                            print rows only
# @flag --tuples-only                 print rows only
# @flag --no-tuples-only              print rows only
# @flag -x                            turn on expanded table output
# @flag --expanded                    turn on expanded table output
# @flag --no-expanded                 turn on expanded table output
# @flag -z                            set field separator for unaligned and CSV output to zero byte
# @flag --field-separator-zero        set field separator for unaligned and CSV output to zero byte
# @flag --no-field-separator-zero     set field separator for unaligned and CSV output to zero byte
# @flag -0                            set record separator for unaligned and CSV output to zero byte
# @flag --record-separator-zero       set record separator for unaligned and CSV output to zero byte
# @flag --no-record-separator-zero    set record separator for unaligned and CSV output to zero byte
# @flag -J                            JSON output mode
# @flag --json                        JSON output mode
# @flag --no-json                     JSON output mode
# @flag -C                            CSV output mode
# @flag --csv                         CSV output mode
# @flag --no-csv                      CSV output mode
# @flag -G                            vertical output mode
# @flag --vertical                    vertical output mode
# @flag --no-vertical                 vertical output mode
# @flag -q                            run quietly (no messages, only query output)
# @flag --quiet                       run quietly (no messages, only query output)
# @flag --no-quiet                    run quietly (no messages, only query output)
# @flag --version                     display version and exit
# @flag --no-version                  display version and exit
# @arg dsn[`_choice_dsn`]             database url

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