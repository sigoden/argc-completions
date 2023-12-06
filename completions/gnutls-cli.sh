#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --debug <num>                  Enable debugging - it must be in the range:
# @flag -V --verbose                        More verbose output
# @flag --tofu                              Enable trust on first use authentication
# @flag --strict-tofu                       Fail to connect if a certificate is unknown or a known certificate has changed
# @flag --dane                              Enable DANE certificate verification (DNSSEC)
# @flag --local-dns                         Use the local DNS server for DNSSEC resolving
# @flag --ca-verification                   Enable CA certificate verification - enabled by default - disabled as '--no-ca-verification'
# @flag --ocsp                              Enable OCSP certificate verification
# @flag -r --resume                         Establish a session and resume
# @option --earlydata <str>                 Send early data on resumption from the specified file
# @flag -e --rehandshake                    Establish a session and rehandshake
# @option --sni-hostname <str>              Server's hostname for server name indication extension
# @option --verify-hostname <str>           Server's hostname to use for validation
# @flag -s --starttls                       Connect, establish a plain session and start TLS
# @option --app-proto[`_choice_proto`]      an alias for the 'starttls-proto' option
# @option --starttls-proto[`_choice_proto`] <str>  The application protocol to be used to obtain the server's certificate - prohibits the option 'starttls'
# @flag -u --udp                            Use DTLS (datagram TLS) over UDP
# @option --mtu <num>                       Set MTU for datagram TLS - it must be in the range:
# @flag --crlf                              Send CR LF instead of LF
# @flag --fastopen                          Enable TCP Fast Open
# @flag --x509fmtder                        Use DER format for certificates to read from
# @flag --print-cert                        Print peer's certificate in PEM format
# @option --save-cert <str>                 Save the peer's certificate chain in the specified file in PEM format
# @option --save-ocsp <str>                 Save the peer's OCSP status response in the provided file - prohibits the option 'save-ocsp-multi'
# @option --save-ocsp-multi <str>           Save all OCSP responses provided by the peer in this file - prohibits the option 'save-ocsp'
# @option --save-server-trace <str>         Save the server-side TLS message trace in the provided file
# @option --save-client-trace <str>         Save the client-side TLS message trace in the provided file
# @option --dh-bits <num>                   The minimum number of bits allowed for DH
# @option --priority <str>                  Priorities string
# @option --x509cafile <str>                Certificate file or PKCS ♯11 URL to use
# @option --x509crlfile <file>              CRL file to use - file must pre-exist
# @option --x509keyfile <str>               X.509 key file or PKCS ♯11 URL to use
# @option --x509certfile <str>              X.509 Certificate file or PKCS ♯11 URL to use - requires the option 'x509keyfile'
# @option --rawpkkeyfile <str>              Private key file (PKCS ♯8 or PKCS ♯12) or PKCS ♯11 URL to use
# @option --rawpkfile <str>                 Raw public-key file to use - requires the option 'rawpkkeyfile'
# @option --srpusername <str>               SRP username to use
# @option --srppasswd <str>                 SRP password to use
# @option --pskusername <str>               PSK username to use
# @option --pskkey <str>                    PSK key (in hex) to use
# @option -p --port <str>                   The port or service to connect to
# @flag --insecure                          Don't abort program if server certificate can't be validated
# @flag --verify-allow-broken               Allow broken algorithms, such as MD5 for certificate verification
# @flag --benchmark-ciphers                 Benchmark individual ciphers
# @flag --benchmark-tls-kx                  Benchmark TLS key exchange methods
# @flag --benchmark-tls-ciphers             Benchmark TLS ciphers
# @flag -l --list                           Print a list of the supported algorithms and modes - prohibits the option 'port'
# @flag --priority-list                     Print a list of the supported priority strings
# @flag --noticket                          Don't allow session tickets
# @option --srtp-profiles <str>             Offer SRTP profiles
# @option --alpn <str>                      Application layer protocol
# @option --compress-cert <str>             Compress certificate
# @flag -b --heartbeat                      Activate heartbeat support
# @option --recordsize <num>                The maximum record size to advertise - it must be in the range:
# @flag --disable-sni                       Do not send a Server Name Indication (SNI)
# @flag --single-key-share                  Send a single key share under TLS1.3
# @flag --post-handshake-auth               Enable post-handshake authentication under TLS1.3
# @flag --inline-commands                   Inline commands of the form ^<cmd>^
# @option --inline-commands-prefix <str>    Change the default delimiter for inline commands
# @option --provider <file>                 Specify the PKCS ♯11 provider library - file must pre-exist
# @flag --fips140-mode                      Reports the status of the FIPS140-2 mode in gnutls library
# @flag --list-config                       Reports the configuration of the library
# @option --logfile <str>                   Redirect informational messages to a specific file
# @option --keymatexport <str>              Label used for exporting keying material
# @option --keymatexportsize <num>          Size of the exported keying material
# @flag --waitresumption                    Block waiting for the resumption data under TLS1.3
# @flag --ca-auto-retrieve                  Enable automatic retrieval of missing CA certificates
# @option --attime <str>                    Perform validation at the timestamp instead of the system time
# @option -v --version <arg>                output version information and exit
# @flag -h --help                           display extended usage information and exit
# @flag -! --more-help                      extended usage information passed thru pager
# @arg hostname

_choice_proto() {
    printf "%s\n" https ftp smtp imap ldap xmpp lmtp pop3 nntp sieve postgres
}

command eval "$(argc --argc-eval "$0" "$@")"