#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                                     print usage
# @flag --version                                  print the tool version and exit
# @option --config                                 path to a configuration file
# @option -v --verbose <level>                     more detailed log output (include multiple times for more verbosity, e.g. -vvvvv, or specify a numeric value, e.g. --verbose=N)
# @flag --quiet                                    hide all log output
# @option -h --host <hostname>                     mongodb host to connect to (setname/host1,host2 for replica sets)
# @option --port <port>                            server port (can also use --host hostname:port)
# @flag --ssl                                      connect to a mongod or mongos that has ssl enabled
# @option --sslCAFile <filename>                   the .pem file containing the root certificate chain from the certificate authority
# @option --sslPEMKeyFile <filename>               the .pem file containing the certificate and key
# @option --sslPEMKeyPassword <password>           the password to decrypt the sslPEMKeyFile, if necessary
# @option --sslCRLFile <filename>                  the .pem file containing the certificate revocation list
# @flag --sslFIPSMode                              use FIPS mode of the installed openssl library
# @flag --tlsInsecure                              bypass the validation for server's certificate chain and host name
# @option -u --username <username>                 username for authentication
# @option -p --password <password>                 password for authentication
# @option --authenticationDatabase <database-name>  database that holds the user's credentials
# @option --authenticationMechanism <mechanism>    authentication mechanism to use
# @option --awsSessionToken <aws-session-token>    session token to authenticate via AWS IAM
# @option --gssapiServiceName <service-name>       service name to use when authenticating using GSSAPI/Kerberos (default: mongodb)
# @option --gssapiHostName <host-name>             hostname to use when authenticating using GSSAPI/Kerberos (default: <remote server's address>)
# @option -d --db <database-name>                  database to use
# @option -c --collection <collection-name>        collection to use
# @option --uri <mongodb-uri>                      mongodb uri connection string
# @option -f --fields <<field>[,<field>]*>         comma separated list of fields, e.g. -f name,age
# @option --fieldFile <filename>                   file with field names - 1 per line
# @option --file <filename>                        file to import from; if not specified, stdin is used
# @flag --headerline                               use first line in input source as the field list (CSV and TSV only)
# @flag --jsonArray                                treat input source as a JSON array
# @option --parseGrace <grace>                     controls behavior when type coercion fails - one of: autoCast, skipField, skipRow, stop (default: stop)
# @option --type <type>                            input format to import: json, csv, or tsv
# @option --columnsHaveTypes[auto|binary|boolean|date|date_go|date_ms|date_oracle|decimal|double|int32|int64|string]  indicates that the field list (from --fields, --fieldsFile, or --headerline) specifies types; They must be in the form of '<colName>.<type>(<arg>)'.
# @flag --legacy                                   use the legacy extended JSON format
# @flag --useArrayIndexFields                      indicates that field names may include array indexes that should be used to construct arrays during import (e.g. foo.0,foo.1).
# @flag --drop                                     drop collection before inserting documents
# @flag --ignoreBlanks                             ignore fields with empty values in CSV and TSV
# @flag --maintainInsertionOrder                   insert the documents in the order of their appearance in the input source.
# @option -j --numInsertionWorkers <number>        number of insert operations to run concurrently
# @flag --stopOnError                              halt after encountering any error during importing.
# @option --mode[insert|upsert|merge|delete]       insert: insert only, skips matching documents.
# @option --upsertFields <<field>[,<field>]*>      comma-separated fields for the query part when --mode is set to upsert or merge
# @option --writeConcern <write-concern-specifier>  write concern options e.g. --writeConcern majority, --writeConcern '{w: 3, wtimeout: 500, fsync: true, j: true}'
# @flag --bypassDocumentValidation                 bypass document validation
# @arg connection-string!
# @arg file!

command eval "$(argc --argc-eval "$0" "$@")"