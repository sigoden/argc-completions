#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    output the version number
# @flag -h --help       display help for command

# {{ newman run
# @cmd Initiate a Postman Collection run from a given URL or path
# @option -e --environment <path>                 Specify a URL or path to a Postman Environment
# @option -g --globals <path>                     Specify a URL or path to a file containing Postman Globals
# @option -r --reporters <reporters>              Specify the reporters to use for this run (default: ["cli"])
# @option -n --iteration-count <n>                Define the number of iterations to run
# @option -d --iteration-data <path>              Specify a data file to use for iterations (either JSON or CSV)
# @option --folder <path>                         Specify the folder to run from a collection.
# @option --global-var <value>                    Allows the specification of global variables via the command line, in a key=value format (default: [])
# @option --env-var <value>                       Allows the specification of environment variables via the command line, in a key=value format (default: [])
# @option --export-environment <path>             Exports the final environment to a file after completing the run
# @option --export-globals <path>                 Exports the final globals to a file after completing the run
# @option --export-collection <path>              Exports the executed collection to a file after completing the run
# @option --postman-api-key <apiKey>              API Key used to load the resources from the Postman API
# @option --bail <modifiers>                      Specify whether or not to gracefully stop a collection run on encountering an error and whether to end the run with an error based on the optional modifier
# @flag --ignore-redirects                        Prevents Newman from automatically following 3XX redirect responses
# @flag -x --suppress-exit-code                   Specify whether or not to override the default exit code for the current run
# @flag --silent                                  Prevents Newman from showing output to CLI
# @flag --disable-unicode                         Forces Unicode compliant symbols to be replaced by their plain text equivalents
# @option --color <value>                         Enable/Disable colored output (auto|on|off) (default: "auto")
# @option --delay-request <n>                     Specify the extent of delay between requests (milliseconds) (default: 0)
# @option --timeout <n>                           Specify a timeout for collection run (milliseconds) (default: 0)
# @option --timeout-request <n>                   Specify a timeout for requests (milliseconds) (default: 0)
# @option --timeout-script <n>                    Specify a timeout for scripts (milliseconds) (default: 0)
# @option --working-dir <path>                    Specify the path to the working directory
# @flag --no-insecure-file-read                   Prevents reading the files situated outside of the working directory
# @flag -k --insecure                             Disables SSL validations
# @option --ssl-client-cert-list <path>           Specify the path to a client certificates configurations (JSON)
# @option --ssl-client-cert <path>                Specify the path to a client certificate (PEM)
# @option --ssl-client-key <path>                 Specify the path to a client certificate private key
# @option --ssl-client-passphrase <passphrase>    Specify the client certificate passphrase (for protected key)
# @option --ssl-extra-ca-certs <path>             Specify additionally trusted CA certificates (PEM)
# @option --cookie-jar <path>                     Specify the path to a custom cookie jar (serialized tough-cookie JSON)
# @option --export-cookie-jar <path>              Exports the cookie jar to a file after completing the run
# @flag --verbose                                 Show detailed information of collection run and each request sent
# @flag -h --help                                 display help for command
# @arg file
run() {
    :;
}
# }} newman run

command eval "$(argc --argc-eval "$0" "$@")"