#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --debug <num>               Enable debugging - it must be in the range:
# @option --sni-hostname <str>           Server's hostname for server name extension
# @flag --sni-hostname-fatal             Send fatal alert on sni-hostname mismatch
# @option --alpn <str>                   Specify ALPN protocol to be enabled by the server
# @flag --alpn-fatal                     Send fatal alert on non-matching ALPN name
# @flag --noticket                       Don't accept session tickets
# @flag --earlydata                      Accept early data
# @option --maxearlydata <num>           The maximum early data size to accept - it must be in the range:
# @flag --nocookie                       Don't require cookie on DTLS sessions
# @flag -g --generate                    Generate Diffie-Hellman parameters
# @flag -q --quiet                       Suppress some messages
# @flag --nodb                           Do not use a resumption database
# @flag --http                           Act as an HTTP server
# @flag --echo                           Act as an Echo server
# @flag --crlf                           Do not replace CRLF by LF in Echo server mode
# @flag -u --udp                         Use DTLS (datagram TLS) over UDP
# @option --mtu <num>                    Set MTU for datagram TLS - it must be in the range:
# @option --srtp-profiles <str>          Offer SRTP profiles
# @flag -a --disable-client-cert         Do not request a client certificate - prohibits the option 'require-client-cert'
# @flag -r --require-client-cert         Require a client certificate
# @flag --verify-client-cert             If a client certificate is sent then verify it
# @option --compress-cert <str>          Compress certificate
# @flag -b --heartbeat                   Activate heartbeat support
# @flag --x509fmtder                     Use DER format for certificates to read from
# @option --priority <str>               Priorities string
# @option --dhparams <file>              DH params file to use - file must pre-exist
# @option --x509cafile <str>             Certificate file or PKCS ♯11 URL to use
# @option --x509crlfile <file>           CRL file to use - file must pre-exist
# @option --x509keyfile <str>            X.509 key file or PKCS ♯11 URL to use
# @option --x509certfile <str>           X.509 Certificate file or PKCS ♯11 URL to use
# @option --rawpkkeyfile <str>           Private key file (PKCS ♯8 or PKCS ♯12) or PKCS ♯11 URL to use
# @option --rawpkfile <str>              Raw public-key file to use - requires the option 'rawpkkeyfile'
# @option --srppasswd <file>             SRP password file to use - file must pre-exist
# @option --srppasswdconf <file>         SRP password configuration file to use - file must pre-exist
# @option --pskpasswd <file>             PSK password file to use - file must pre-exist
# @option --pskhint <str>                PSK identity hint to use
# @option --ocsp-response <str>          The OCSP response to send to client
# @flag --ignore-ocsp-response-errors    Ignore any errors when setting the OCSP response
# @option -p --port <num>                The port to connect to
# @flag -l --list                        Print a list of the supported algorithms and modes
# @option --provider <file>              Specify the PKCS ♯11 provider library - file must pre-exist
# @option --keymatexport <str>           Label used for exporting keying material
# @option --keymatexportsize <num>       Size of the exported keying material
# @option --recordsize <num>             The maximum record size to advertise - it must be in the range:
# @option --httpdata <file>              The data used as HTTP response - file must pre-exist
# @option --timeout <num>                The timeout period for server
# @option --attime <str>                 Perform validation at the timestamp instead of the system time
# @option -v --version <arg>             output version information and exit
# @flag -h --help                        display extended usage information and exit
# @flag -! --more-help                   extended usage information passed thru pager

command eval "$(argc --argc-eval "$0" "$@")"