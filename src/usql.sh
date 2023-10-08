_patch_help() {
    $@ --help 2>&1 | sed '/--\[no-\]no-password/ d'
}

_patch_table() {
    _patch_table_edit_arguments 'dsn;[`_choice_dsn`]'
}

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
