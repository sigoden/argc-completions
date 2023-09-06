#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option --component[database|webservice]    Component used with provided command (default: database)
# @flag -d --debug                            Enable debug output
# @flag -h --help                             Show this help message
# @flag --use-defaults                        Accept all defaults and do not prompt for options during an init
# @option --msf-db-name <NAME>                Database name (default: msf)
# @option --msf-db-user-name <USER>           Database username (default: msf)
# @option --msf-test-db-name <NAME>           Test database name (default: msftest)
# @option --msf-test-db-user-name <USER>      Test database username (default: msftest)
# @option --db-port <PORT>                    Database port (default: 5433)
# @option --db-pool <MAX>                     Database connection pool size (default: 200)
# @option --connection-string <URI>           Use a pre-existing database cluster for initialization Example: --connection-string=postgresql://postgres:mysecretpassword@localhost:5432/postgres
# @option -a --address                        Bind to host address (default: localhost)
# @option -p --port                           Web service port (default: 5443)
# @flag --daemon                              Enable daemon
# @flag --no-daemon                           Enable daemon
# @flag --ssl                                 Enable SSL (default: true)
# @flag --no-ssl                              Enable SSL (default: true)
# @option --ssl-key-file <PATH>               Path to private key (default: /home/sigo/.msf4/msf-ws-key.pem)
# @option --ssl-cert-file <PATH>              Path to certificate (default: /home/sigo/.msf4/msf-ws-cert.pem)
# @flag --ssl-disable-verify                  Disables (optional) client cert requests (default: true)
# @flag --no-ssl-disable-verify               Disables (optional) client cert requests (default: true)
# @option --environment[production|development] <ENV>  Web service framework environment (default: production)
# @option --retry-max <MAX>                   Maximum number of web service connect attempts (default: 10)
# @option --retry-delay <DELAY>               Delay in seconds between web service connect attempts (default: 5.0)
# @option --user                              Initial web service admin username
# @option --pass                              Initial web service admin password
# @option --msf-data-service <NAME>           Local msfconsole data service connection name
# @option --no-msf-data-service <NAME>        Local msfconsole data service connection name

# {{ msfdb init
# @cmd initialize the component
init() {
    :;
}
# }} msfdb init

# {{ msfdb reinit
# @cmd delete and reinitialize the component
reinit() {
    :;
}
# }} msfdb reinit

# {{ msfdb delete
# @cmd delete and stop the component
delete() {
    :;
}
# }} msfdb delete

# {{ msfdb status
# @cmd check component status
status() {
    :;
}
# }} msfdb status

# {{ msfdb start
# @cmd start the component
start() {
    :;
}
# }} msfdb start

# {{ msfdb stop
# @cmd stop the component
stop() {
    :;
}
# }} msfdb stop

# {{ msfdb restart
# @cmd restart the component
restart() {
    :;
}
# }} msfdb restart

command eval "$(argc --argc-eval "$0" "$@")"