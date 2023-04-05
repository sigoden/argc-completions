#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg _url!                             
# @option --abstract-unix-socket <path>  Connect via abstract Unix domain socket
# @option --alt-svc <file name>          Enable alt-svc with this cache file
# @flag --anyauth                        Pick any authentication method
# @flag -a --append                      Append to target file when uploading
# @option --aws-sigv4 <provider1[:provider2[:region[:service]]]>  Use AWS V4 signature authentication
# @flag --basic                          Use HTTP Basic Authentication
# @option --cacert <file>                CA certificate to verify peer against
# @option --capath <dir>                 CA directory to verify peer against
# @option -E --cert <certificate[:password]>  Client certificate file and password
# @flag --cert-status                    Verify the status of the server cert via OCSP-staple
# @option --cert-type <type>             Certificate type (DER/PEM/ENG)
# @option --ciphers <list of ciphers>    SSL ciphers to use
# @flag --compressed                     Request compressed response
# @flag --compressed-ssh                 Enable SSH compression
# @option -K --config <file>             Read config from a file
# @option --connect-timeout <fractional seconds>  Maximum time allowed for connection
# @option --connect-to <HOST1:PORT1:HOST2:PORT2>  Connect to host
# @option -C --continue-at <offset>      Resumed transfer offset
# @option -b --cookie <data|filename>    Send cookies from string/file
# @option -c --cookie-jar <filename>     Write cookies to <filename> after operation
# @flag --create-dirs                    Create necessary local directory hierarchy
# @option --create-file-mode <mode>      File mode for created files
# @flag --crlf                           Convert LF to CRLF in upload
# @option --crlfile <file>               Use this CRL list
# @option --curves <algorithm list>      (EC) TLS key exchange algorithm(s) to request
# @option -d --data <data>               HTTP POST data
# @option --data-ascii <data>            HTTP POST ASCII data
# @option --data-binary <data>           HTTP POST binary data
# @option --data-raw <data>              HTTP POST data, '@' allowed
# @option --data-urlencode <data>        HTTP POST data url encoded
# @option --delegation <LEVEL>           GSS-API delegation permission
# @flag --digest                         Use HTTP Digest Authentication
# @flag -q --disable                     Disable .curlrc
# @flag --disable-eprt                   Inhibit using EPRT or LPRT
# @flag --disable-epsv                   Inhibit using EPSV
# @flag --disallow-username-in-url       Disallow username in url
# @option --dns-interface <interface>    Interface to use for DNS requests
# @option --dns-ipv4-addr <address>      IPv4 address to use for DNS requests
# @option --dns-ipv6-addr <address>      IPv6 address to use for DNS requests
# @option --dns-servers <addresses>      DNS server addrs to use
# @flag --doh-cert-status                Verify the status of the DoH server cert via OCSP-staple
# @flag --doh-insecure                   Allow insecure DoH server connections
# @option --doh-url <URL>                Resolve host names over DoH
# @option -D --dump-header <filename>    Write the received headers to <filename>
# @option --egd-file <file>              EGD socket path for random data
# @option --engine <name>                Crypto engine to use
# @option --etag-compare <file>          Pass an ETag from a file as a custom header
# @option --etag-save <file>             Parse ETag from a request and save it to a file
# @option --expect100-timeout <seconds>  How long to wait for 100-continue
# @flag -f --fail                        Fail silently (no output at all) on HTTP errors
# @flag --fail-early                     Fail on first transfer error, do not continue
# @flag --fail-with-body                 Fail on HTTP errors but save the body
# @flag --false-start                    Enable TLS False Start
# @option -F --form <name=content>       Specify multipart MIME data
# @flag --form-escape                    Escape multipart form field/file names using backslash
# @option --form-string <name=string>    Specify multipart MIME data
# @option --ftp-account <data>           Account data string
# @option --ftp-alternative-to-user <command>  String to replace USER [name]
# @flag --ftp-create-dirs                Create the remote dirs if not present
# @option --ftp-method <method>          Control CWD usage
# @flag --ftp-pasv                       Use PASV/EPSV instead of PORT
# @option -P --ftp-port <address>        Use PORT instead of PASV
# @flag --ftp-pret                       Send PRET before PASV
# @flag --ftp-skip-pasv-ip               Skip the IP address for PASV
# @flag --ftp-ssl-ccc                    Send CCC after authenticating
# @option --ftp-ssl-ccc-mode[active|passive]  Set CCC mode
# @flag --ftp-ssl-control                Require SSL/TLS for FTP login, clear for transfer
# @flag -G --get                         Put the post data in the URL and use GET
# @flag -g --globoff                     Disable URL sequences and ranges using {} and []
# @option --happy-eyeballs-timeout-ms <milliseconds>  Time for IPv6 before trying IPv4
# @flag --haproxy-protocol               Send HAProxy PROXY protocol v1 header
# @flag -I --head                        Show document info only
# @option -H --header <header/@file>     Pass custom header(s) to server
# @flag -h --help                        Get help for commands
# @option --hostpubmd5 <md5>             Acceptable MD5 hash of the host public key
# @option --hostpubsha256 <sha256>       Acceptable SHA256 hash of the host public key
# @option --hsts <file name>             Enable HSTS with this cache file
# @flag --http0.9                        Allow HTTP 0.9 responses
# @flag -0 --http1.0                     Use HTTP 1.0
# @flag --http1.1                        Use HTTP 1.1
# @flag --http2                          Use HTTP 2
# @flag --http2-prior-knowledge          Use HTTP 2 without HTTP/1.1 Upgrade
# @flag --http3                          Use HTTP v3
# @flag --ignore-content-length          Ignore the size of the remote resource
# @flag -i --include                     Include protocol response headers in the output
# @flag -k --insecure                    Allow insecure server connections
# @option --interface <name>             Use network INTERFACE (or address)
# @flag -4 --ipv4                        Resolve names to IPv4 addresses
# @flag -6 --ipv6                        Resolve names to IPv6 addresses
# @flag -j --junk-session-cookies        Ignore session cookies read from file
# @option --keepalive-time <seconds>     Interval time for keepalive probes
# @option --key <key>                    Private key file name
# @option --key-type <type>              Private key file type (DER/PEM/ENG)
# @option --krb <level>                  Enable Kerberos with security <level>
# @option --libcurl <file>               Dump libcurl equivalent code of this command line
# @option --limit-rate <speed>           Limit transfer speed to RATE
# @flag -l --list-only                   List only mode
# @option --local-port <num/range>       Force use of RANGE for local port numbers
# @flag --location                       Follow redirects
# @flag --location-trusted               Like --location, and send auth to other hosts
# @option --login-options <options>      Server login options
# @option --mail-auth <address>          Originator address of the original email
# @option --mail-from <address>          Mail from this address
# @option --mail-rcpt <address>          Mail to this address
# @flag --mail-rcpt-allowfails           Allow RCPT TO command to fail for some recipients
# @flag -M --manual                      Display the full manual
# @option --max-filesize <bytes>         Maximum file size to download
# @option --max-redirs <num>             Maximum number of redirects allowed
# @option -m --max-time <fractional seconds>  Maximum time allowed for transfer
# @flag --metalink                       Process given URLs as metalink XML file
# @flag --negotiate                      Use HTTP Negotiate (SPNEGO) authentication
# @flag -n --netrc                       Must read .netrc for user name and password
# @option --netrc-file <filename>        Specify FILE for netrc
# @flag --netrc-optional                 Use either .netrc or URL
# @flag -: --next                        Make next URL use its separate set of options
# @flag --no-alpn                        Disable the ALPN TLS extension
# @flag -N --no-buffer                   Disable buffering of the output stream
# @flag --no-keepalive                   Disable TCP keepalive on the connection
# @flag --no-npn                         Disable the NPN TLS extension
# @flag --no-progress-meter              Do not show the progress meter
# @flag --no-sessionid                   Disable SSL session-ID reusing
# @option --noproxy <no-proxy-list>      List of hosts which do not use proxy
# @flag --ntlm                           Use HTTP NTLM authentication
# @flag --ntlm-wb                        Use HTTP NTLM authentication with winbind
# @option --oauth2-bearer <token>        OAuth 2 Bearer Token
# @option -o --output <file>             Write to file instead of stdout
# @option --output-dir <dir>             Directory to save files in
# @flag -Z --parallel                    Perform transfers in parallel
# @flag --parallel-immediate             Do not wait for multiplexing (with --parallel)
# @option --parallel-max <num>           Maximum concurrency for parallel transfers
# @option --pass <phrase>                Pass phrase for the private key
# @flag --path-as-is                     Do not squash .. sequences in URL path
# @option --pinnedpubkey <hashes> <FILE> <HASHES>  Public key to verify peer against
# @flag --post301                        Do not switch to GET after following a 301
# @flag --post302                        Do not switch to GET after following a 302
# @flag --post303                        Do not switch to GET after following a 303
# @option --preproxy <[protocol://]host[:port]>  Use this proxy first
# @flag -# --progress-bar                Display transfer progress as a bar
# @option --proto <protocols>            Enable/disable PROTOCOLS
# @option --proto-default <protocol>     Use PROTOCOL for any URL missing a scheme
# @option --proto-redir <protocols>      Enable/disable PROTOCOLS on redirect
# @option -x --proxy <[protocol://]host[:port]>  Use this proxy
# @flag --proxy-anyauth                  Pick any proxy authentication method
# @flag --proxy-basic                    Use Basic authentication on the proxy
# @option --proxy-cacert <file>          CA certificate to verify peer against for proxy
# @option --proxy-capath <dir>           CA directory to verify peer against for proxy
# @option --proxy-cert <cert[:passwd]>   Set client certificate for proxy
# @option --proxy-cert-type <type>       Client certificate type for HTTPS proxy
# @option --proxy-ciphers <list>         SSL ciphers to use for proxy
# @option --proxy-crlfile <file>         Set a CRL list for proxy
# @flag --proxy-digest                   Use Digest authentication on the proxy
# @option --proxy-header <header/@file>  Pass custom header(s) to proxy
# @flag --proxy-insecure                 Do HTTPS proxy connections without verifying the proxy
# @option --proxy-key <key>              Private key for HTTPS proxy
# @option --proxy-key-type <type>        Private key file type for proxy
# @flag --proxy-negotiate                Use HTTP Negotiate (SPNEGO) authentication on the proxy
# @flag --proxy-ntlm                     Use NTLM authentication on the proxy
# @option --proxy-pass <phrase>          Pass phrase for the private key for HTTPS proxy
# @option --proxy-pinnedpubkey <hashes> <FILE> <HASHES>  public key to verify proxy with
# @option --proxy-service-name <name>    SPNEGO proxy service name
# @flag --proxy-ssl-allow-beast          Allow security flaw for interop for HTTPS proxy
# @flag --proxy-ssl-auto-client-cert     Use auto client certificate for proxy (Schannel)
# @option --proxy-tls13-ciphers <ciphersuite list>  TLS 1.3 proxy cipher suites
# @option --proxy-tlsauthtype <type>     TLS authentication type for HTTPS proxy
# @option --proxy-tlsuser <name>         TLS username for HTTPS proxy
# @option --proxy-tlspassword <string>   TLS password for HTTPS proxy
# @flag --proxy-tlsv1                    Use TLSv1 for HTTPS proxy
# @option -U --proxy-user <user:password>  Proxy user and password
# @option --proxy1.0 <host[:port]>       Use HTTP/1.0 proxy on given port
# @flag -p --proxytunnel                 Operate through an HTTP proxy tunnel (using CONNECT)
# @option --pubkey <key>                 SSH Public key file name
# @option -Q --quote <command>           Send command(s) to server before transfer
# @option --random-file <file>           File for reading random data from
# @option -r --range <range>             Retrieve only the bytes within RANGE
# @flag --raw                            Do HTTP "raw"; no transfer decoding
# @option -e --referer <URL>             Referrer URL
# @flag -J --remote-header-name          Use the header-provided filename
# @flag -O --remote-name                 Write output to a file named as the remote file
# @flag --remote-name-all                Use the remote file name for all URLs
# @flag -R --remote-time                 Set the remote file's time on the local output
# @option -X --request <method>          Specify request method to use
# @option --request-target <path>        Specify the target for this request
# @option --resolve <[+]host:port:addr[,addr]...>  Resolve the host+port to this address
# @option --retry <num>                  Retry request if transient problems occur
# @flag --retry-all-errors               Retry all errors (use with --retry)
# @flag --retry-connrefused              Retry on connection refused (use with --retry)
# @option --retry-delay <seconds>        Wait time between retries
# @option --retry-max-time <seconds>     Retry only within this period
# @option --sasl-authzid <identity>      Identity for SASL PLAIN authentication
# @flag --sasl-ir                        Enable initial response in SASL authentication
# @option --service-name <name>          SPNEGO service name
# @flag -S --show-error                  Show error even when -s is used
# @flag -s --silent                      Silent mode
# @option --socks4 <host[:port]>         SOCKS4 proxy on given host + port
# @option --socks4a <host[:port]>        SOCKS4a proxy on given host + port
# @option --socks5 <host[:port]>         SOCKS5 proxy on given host + port
# @flag --socks5-basic                   Enable username/password auth for SOCKS5 proxies
# @flag --socks5-gssapi                  Enable GSS-API auth for SOCKS5 proxies
# @flag --socks5-gssapi-nec              Compatibility with NEC SOCKS5 server
# @option --socks5-gssapi-service <name>  SOCKS5 proxy service name for GSS-API
# @option --socks5-hostname <host[:port]>  SOCKS5 proxy, pass host name to proxy
# @option -Y --speed-limit <speed>       Stop transfers slower than this
# @option -y --speed-time <seconds>      Trigger 'speed-limit' abort after this time
# @flag --ssl                            Try SSL/TLS
# @flag --ssl-allow-beast                Allow security flaw to improve interop
# @flag --ssl-auto-client-cert           Use auto client certificate (Schannel)
# @flag --ssl-no-revoke                  Disable cert revocation checks (Schannel)
# @flag --ssl-reqd                       Require SSL/TLS
# @flag --ssl-revoke-best-effort         Ignore missing/offline cert CRL dist points
# @flag -2 --sslv2                       Use SSLv2
# @flag -3 --sslv3                       Use SSLv3
# @option --stderr <file>                Where to redirect stderr
# @flag --styled-output                  Enable styled output for HTTP headers
# @flag --suppress-connect-headers       Suppress proxy CONNECT response headers
# @flag --tcp-fastopen                   Use TCP Fast Open
# @flag --tcp-nodelay                    Use the TCP_NODELAY option
# @option -t --telnet-option <opt=val>   Set telnet option
# @option --tftp-blksize <value>         Set TFTP BLKSIZE option
# @flag --tftp-no-options                Do not send any TFTP options
# @option -z --time-cond <time>          Transfer based on a time condition
# @option --tls-max <VERSION>            Set maximum allowed TLS version
# @option --tls13-ciphers <ciphersuite list>  TLS 1.3 cipher suites to use
# @option --tlsauthtype <type>           TLS authentication type
# @option --tlspassword <string>         TLS password
# @option --tlsuser <name>               TLS user name
# @flag -1 --tlsv1                       Use TLSv1.0 or greater
# @flag --tlsv1.0                        Use TLSv1.0 or greater
# @flag --tlsv1.1                        Use TLSv1.1 or greater
# @flag --tlsv1.2                        Use TLSv1.2 or greater
# @flag --tlsv1.3                        Use TLSv1.3 or greater
# @flag --tr-encoding                    Request compressed transfer encoding
# @option --trace <file>                 Write a debug trace to FILE
# @option --trace-ascii <file>           Like --trace, but without hex output
# @flag --trace-time                     Add time stamps to trace/verbose output
# @option --unix-socket <path>           Connect through this Unix domain socket
# @option -T --upload-file <file>        Transfer local FILE to destination
# @option --url <url>                    URL to work with
# @flag -B --use-ascii                   Use ASCII/text transfer
# @option -u --user <user:password>      Server user and password
# @option -A --user-agent <name>         Send User-Agent <name> to server
# @flag -v --verbose                     Make the operation more talkative
# @flag -V --version                     Show version number and quit
# @option -w --write-out <format>        Use output FORMAT after completion
# @flag --xattr                          Store metadata in extended file attributes

eval "$(argc --argc-eval "$0" "$@")"