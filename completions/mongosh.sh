#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                               Show this usage information
# @option -f --file <file>                      Load the specified mongosh script
# @option --host <string>                       Server to connect to
# @option --port <string>                       Port to connect to
# @flag --version                               Show version information
# @flag --quiet                                 Silence output from the shell during the connection process
# @flag --shell                                 Run the shell after executing files
# @flag --nodb                                  Don't connect to mongod on startup - no 'db address' string expected
# @flag --norc                                  Will not run the '.mongoshrc.js' file on start up
# @option --eval <string>                       Evaluate javascript
# @option --json[canonical|relaxed] <canonical|relaxed>  Print result of --eval as Extended JSON, including errors
# @option --retryWrites[true|false] <true|false>  Automatically retry write operations upon transient network errors (Default: true)
# @option -u --username <string>                Username for authentication
# @option -p --password <string>                Password for authentication
# @option --authenticationDatabase <string>     User source (defaults to dbname)
# @option --authenticationMechanism <string>    Authentication mechanism
# @option --awsIamSessionToken <string>         AWS IAM Temporary Session Token ID
# @option --gssapiServiceName <string>          Service name to use when authenticating using GSSAPI/Kerberos
# @option --sspiHostnameCanonicalization <string>  Specify the SSPI hostname canonicalization (none or forward, available on Windows)
# @option --sspiRealmOverride <string>          Specify the SSPI server realm (available on Windows)
# @flag --tls                                   Use TLS for all connections
# @option --tlsCertificateKeyFile <file>        PEM certificate/key file for TLS
# @option --tlsCertificateKeyFilePassword <file>  Password for key in PEM file for TLS
# @option --tlsCAFile <file>                    Certificate Authority file for TLS
# @flag --tlsAllowInvalidHostnames              Allow connections to servers with non-matching hostnames
# @flag --tlsAllowInvalidCertificates           Allow connections to servers with invalid certificates
# @option --tlsCertificateSelector <string>     TLS Certificate in system store (Windows and macOS only)
# @option --tlsCRLFile <file>                   Specifies the .pem file that contains the Certificate Revocation List
# @option --tlsDisabledProtocols[TLS1_0|TLS1_1|TLS1_2] <string>  Comma separated list of TLS protocols to disable
# @flag --tlsUseSystemCA                        Load the operating system trusted certificate list
# @flag --tlsFIPSMode                           Enable the system TLS library's FIPS mode
# @option --apiVersion <string>                 Specifies the API version to connect with
# @flag --apiStrict                             Use strict API version mode
# @flag --apiDeprecationErrors                  Fail deprecated commands for the specified API version
# @option --awsAccessKeyId <string>             AWS Access Key for FLE Amazon KMS
# @option --awsSecretAccessKey <string>         AWS Secret Key for FLE Amazon KMS
# @option --awsSessionToken <string>            Optional AWS Session Token ID
# @option --keyVaultNamespace <string>          database.collection to store encrypted FLE parameters
# @option --kmsURL <string>                     Test parameter to override the URL of the KMS endpoint

command eval "$(argc --argc-eval "$0" "$@")"