#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --online-version-check    Whether to allow web check for client version upgrades at start [env: SURREAL_ONLINE_VERSION_CHECK=]
# @flag -h --help                 Print help
# @flag -V --version              Print version

# {{ surreal start
# @cmd Start the database server
# @option -l --log[none|full|error|warn|info|debug|trace]  The logging level for the database server
# @flag --no-banner                          Whether to hide the startup banner
# @flag -h --help                            Print help (see a summary with '-h')
# @option --tick-interval <TICK_INTERVAL>    The interval at which to run node agent tick (including garbage collection)
# @flag -s --strict                          Whether strict mode is enabled on this database instance
# @option --query-timeout <QUERY_TIMEOUT>    The maximum duration that a set of statements can run for
# @option --transaction-timeout <TRANSACTION_TIMEOUT>  The maximum duration that any single transaction can run for
# @option -u --username                      The username for the initial database root user.
# @option -p --password                      The password for the initial database root user.
# @flag --auth                               Whether to enable authentication
# @flag --auth-level-enabled                 Whether to enable explicit authentication level selection
# @option --kvs-ca <KVS_CA>                  Path to the CA file used when connecting to the remote KV store
# @option --kvs-crt <KVS_CRT>                Path to the certificate file used when connecting to the remote KV store
# @option --kvs-key <KVS_KEY>                Path to the private key file used when connecting to the remote KV store
# @option --web-crt <WEB_CRT>                Path to the certificate file for encrypted client connections
# @option --web-key <WEB_KEY>                Path to the private key file for encrypted client connections
# @option --client-ip <CLIENT_IP>            The method of detecting the client's IP address
# @option -b --bind <LISTEN_ADDRESSES>       The hostname or ip address to listen for connections on
# @flag -A --allow-all                       Allow all capabilities
# @flag --allow-scripting                    Allow execution of embedded scripting functions
# @flag --allow-guests                       Allow guest users to execute queries
# @option --allow-funcs* <ALLOW_FUNCS>       Allow execution of functions.
# @option --allow-net* <ALLOW_NET>           Allow all outbound network access.
# @flag -D --deny-all                        Deny all capabilities
# @flag --deny-scripting                     Deny execution of embedded scripting functions
# @flag --deny-guests                        Deny guest users to execute queries
# @option --deny-funcs* <DENY_FUNCS>         Deny execution of functions.
# @option --deny-net* <DENY_NET>             Deny all outbound network access.
# @arg path                                  Database path used for storing data
start() {
    :;
}
# }} surreal start

# {{ surreal import
# @cmd Import a SurrealQL script into an existing database
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @option -u --username    Database authentication username to use when connecting [env: SURREAL_USER=] [aliases: user]
# @option -p --password    Database authentication password to use when connecting [env: SURREAL_PASS=] [aliases: pass]
# @option --auth-level[root|namespace|ns|database|db] <AUTH_LEVEL>  Authentication level to use when connecting Must be enabled in the server and uses the values of '--namespace' and '--database'
# @option --namespace      The namespace selected for the operation [env: SURREAL_NAMESPACE=] [aliases: ns]
# @option --database       The database selected for the operation [env: SURREAL_DATABASE=] [aliases: db]
# @flag -h --help          Print help
# @arg file!               Path to the SurrealQL file to import
import() {
    :;
}
# }} surreal import

# {{ surreal export
# @cmd Export an existing database as a SurrealQL script
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @option -u --username    Database authentication username to use when connecting [env: SURREAL_USER=] [aliases: user]
# @option -p --password    Database authentication password to use when connecting [env: SURREAL_PASS=] [aliases: pass]
# @option --auth-level[root|namespace|ns|database|db] <AUTH_LEVEL>  Authentication level to use when connecting Must be enabled in the server and uses the values of '--namespace' and '--database'
# @option --namespace      The namespace selected for the operation [env: SURREAL_NAMESPACE=] [aliases: ns]
# @option --database       The database selected for the operation [env: SURREAL_DATABASE=] [aliases: db]
# @flag -h --help          Print help
# @arg file                Path to the SurrealQL file to export.
export() {
    :;
}
# }} surreal export

# {{ surreal version
# @cmd Output the command-line tool and remote server version information
# @option -e --endpoint    Remote database server url to connect to [aliases: conn]
# @flag -h --help          Print help
version() {
    :;
}
# }} surreal version

# {{ surreal upgrade
# @cmd Upgrade to the latest stable version
# @flag --nightly      Install the latest nightly version
# @flag --alpha        Install the latest beta version
# @flag --beta         Install the latest beta version
# @option --version    Install a specific version
# @flag --dry-run      Don't actually replace the executable
# @flag -h --help      Print help
upgrade() {
    :;
}
# }} surreal upgrade

# {{ surreal sql
# @cmd Start an SQL REPL in your terminal with pipe support
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @option -u --username    Database authentication username to use when connecting [env: SURREAL_USER=] [aliases: user]
# @option -p --password    Database authentication password to use when connecting [env: SURREAL_PASS=] [aliases: pass]
# @option --auth-level[root|namespace|ns|database|db] <AUTH_LEVEL>  Authentication level to use when connecting Must be enabled in the server and uses the values of '--namespace' and '--database'
# @option --namespace      The selected namespace [env: SURREAL_NAMESPACE=] [aliases: ns]
# @option --database       The selected database [env: SURREAL_DATABASE=] [aliases: db]
# @flag --pretty           Whether database responses should be pretty printed
# @flag --json             Whether to emit results in JSON
# @flag --multi            Whether omitting semicolon causes a newline
# @flag --hide-welcome     Whether to show welcome message [env: SURREAL_HIDE_WELCOME=]
# @flag -h --help          Print help
sql() {
    :;
}
# }} surreal sql

# {{ surreal ml
# @cmd Manage SurrealML models within an existing database
# @flag -h --help    Print help
ml() {
    :;
}

# {{{ surreal ml import
# @cmd Import a SurrealML model into an existing database
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @option -u --username    Database authentication username to use when connecting [env: SURREAL_USER=] [aliases: user]
# @option -p --password    Database authentication password to use when connecting [env: SURREAL_PASS=] [aliases: pass]
# @option --auth-level[root|namespace|ns|database|db] <AUTH_LEVEL>  Authentication level to use when connecting Must be enabled in the server and uses the values of '--namespace' and '--database'
# @option --namespace      The namespace selected for the operation [env: SURREAL_NAMESPACE=] [aliases: ns]
# @option --database       The database selected for the operation [env: SURREAL_DATABASE=] [aliases: db]
# @flag -h --help          Print help
# @arg file!               Path to the SurrealML file to import
ml::import() {
    :;
}
# }}} surreal ml import

# {{{ surreal ml export
# @cmd Export a SurrealML model from an existing database
# @option --name           The name of the model [env: SURREAL_NAME=]
# @option --version        The version of the model [env: SURREAL_VERSION=]
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @option -u --username    Database authentication username to use when connecting [env: SURREAL_USER=] [aliases: user]
# @option -p --password    Database authentication password to use when connecting [env: SURREAL_PASS=] [aliases: pass]
# @option --auth-level[root|namespace|ns|database|db] <AUTH_LEVEL>  Authentication level to use when connecting Must be enabled in the server and uses the values of '--namespace' and '--database'
# @option --namespace      The namespace selected for the operation [env: SURREAL_NAMESPACE=] [aliases: ns]
# @option --database       The database selected for the operation [env: SURREAL_DATABASE=] [aliases: db]
# @flag -h --help          Print help
# @arg file                Path to the SurrealML file to export.
ml::export() {
    :;
}
# }}} surreal ml export
# }} surreal ml

# {{ surreal is-ready
# @cmd Check if the SurrealDB server is ready to accept connections [aliases: isready]
# @option -e --endpoint    Remote database server url to connect to [default: ws://localhost:8000] [aliases: conn]
# @flag -h --help          Print help
is-ready() {
    :;
}
# }} surreal is-ready

# {{ surreal validate
# @cmd Validate SurrealQL query files
# @flag -h --help    Print help
# @arg pattern       Glob pattern for the files to validate [default: **/*.surql]
validate() {
    :;
}
# }} surreal validate

command eval "$(argc --argc-eval "$0" "$@")"