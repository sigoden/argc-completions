#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                         display the version of Wget and exit
# @flag -h --help                            print this help
# @flag -b --background                      go to background after startup
# @option -e --execute <COMMAND>             execute a `.wgetrc'-style command
# @option -o --output-file <FILE>            log messages to FILE
# @option -a --append-output <FILE>          append messages to FILE
# @flag -d --debug                           print lots of debugging information
# @flag -q --quiet                           quiet (no output)
# @flag -v --verbose                         be verbose (this is the default)
# @flag -nv                                  turn off verboseness, without being quiet
# @flag --no-verbose                         turn off verboseness, without being quiet
# @option --report-speed <TYPE>              output bandwidth as TYPE.
# @option -i --input-file <FILE>             download URLs found in local or external FILE
# @flag -F --force-html                      treat input file as HTML
# @option -B --base <URL>                    resolves HTML input-file links (-i -F) relative to URL
# @option --config <FILE>                    specify config file to use
# @flag --no-config                          do not read any config file
# @option --rejected-log <FILE>              log reasons for URL rejection to FILE
# @option -t --tries <NUMBER>                set number of retries to NUMBER (0 unlimits)
# @flag --retry-connrefused                  retry even if connection is refused
# @flag --retry-on-host-error                consider host errors as non-fatal, transient errors
# @option --retry-on-http-error <ERRORS>     comma-separated list of HTTP errors to retry
# @option -O --output-document <FILE>        write documents to FILE
# @flag -nc                                  skip downloads that would download to existing files (overwriting them)
# @flag --no-clobber                         skip downloads that would download to existing files (overwriting them)
# @flag --no-netrc                           don't try to obtain credentials from .netrc
# @flag -c --continue                        resume getting a partially-downloaded file
# @option --start-pos <OFFSET>               start downloading from zero-based position OFFSET
# @option --progress <TYPE>                  select progress gauge type
# @flag --show-progress                      display the progress bar in any verbosity mode
# @flag -N --timestamping                    don't re-retrieve files unless newer than local
# @flag --no-if-modified-since               don't use conditional if-modified-since get requests in timestamping mode
# @flag --no-use-server-timestamps           don't set the local file's timestamp by the one on the server
# @flag -S --server-response                 print server response
# @flag --spider                             don't download anything
# @option -T --timeout <SECONDS>             set all timeout values to SECONDS
# @option --dns-timeout <SECS>               set the DNS lookup timeout to SECS
# @option --connect-timeout <SECS>           set the connect timeout to SECS
# @option --read-timeout <SECS>              set the read timeout to SECS
# @option -w --wait <SECONDS>                wait SECONDS between retrievals (applies if more then 1 URL is to be retrieved)
# @option --waitretry <SECONDS>              wait 1..SECONDS between retries of a retrieval (applies if more then 1 URL is to be retrieved)
# @flag --random-wait                        wait from 0.5*WAIT...1.5*WAIT secs between retrievals (applies if more then 1 URL is to be retrieved)
# @flag --no-proxy                           explicitly turn off proxy
# @option -Q --quota <NUMBER>                set retrieval quota to NUMBER
# @option --bind-address <ADDRESS>           bind to ADDRESS (hostname or IP) on local host
# @option --limit-rate <RATE>                limit download rate to RATE
# @flag --no-dns-cache                       disable caching DNS lookups
# @option --restrict-file-names <OS>         restrict chars in file names to ones OS allows
# @flag --ignore-case                        ignore case when matching files/directories
# @flag -4 --inet4-only                      connect only to IPv4 addresses
# @flag -6 --inet6-only                      connect only to IPv6 addresses
# @option --prefer-family <FAMILY>           connect first to addresses of specified family, one of IPv6, IPv4, or none
# @option --user                             set both ftp and http user to USER
# @option --password <PASS>                  set both ftp and http password to PASS
# @flag --ask-password                       prompt for passwords
# @option --use-askpass <COMMAND>            specify credential handler for requesting username and password.
# @flag --no-iri                             turn off IRI support
# @option --local-encoding <ENC>             use ENC as the local encoding for IRIs
# @option --remote-encoding <ENC>            use ENC as the default remote encoding
# @flag --unlink                             remove file before clobber
# @flag --xattr                              turn on storage of metadata in extended file attributes
# @flag -nd                                  don't create directories
# @flag --no-directories                     don't create directories
# @flag -x --force-directories               force creation of directories
# @flag -nH                                  don't create host directories
# @flag --no-host-directories                don't create host directories
# @flag --protocol-directories               use protocol name in directories
# @option -P --directory-prefix <PREFIX>     save files to PREFIX/..
# @option --cut-dirs <NUMBER>                ignore NUMBER remote directory components
# @option --http-user <USER>                 set http user to USER
# @option --http-password <PASS>             set http password to PASS
# @flag --no-cache                           disallow server-cached data
# @option --default-page <NAME>              change the default page name (normally this is 'index.html'.)
# @flag -E --adjust-extension                save HTML/CSS documents with proper extensions
# @flag --ignore-length                      ignore 'Content-Length' header field
# @option --header <STRING>                  insert STRING among the headers
# @option --compression <TYPE>               choose compression, one of auto, gzip and none.
# @flag --max-redirect                       maximum redirections allowed per page
# @option --proxy-user <USER>                set USER as proxy username
# @option --proxy-password <PASS>            set PASS as proxy password
# @option --referer <URL>                    include 'Referer: URL' header in HTTP request
# @flag --save-headers                       save the HTTP headers to file
# @option -U --user-agent <AGENT>            identify as AGENT instead of Wget/VERSION
# @flag --no-http-keep-alive                 disable HTTP keep-alive (persistent connections)
# @flag --no-cookies                         don't use cookies
# @option --load-cookies <FILE>              load cookies from FILE before session
# @option --save-cookies <FILE>              save cookies to FILE after session
# @flag --keep-session-cookies               load and save session (non-permanent) cookies
# @option --post-data <STRING>               use the POST method; send STRING as the data
# @option --post-file <FILE>                 use the POST method; send contents of FILE
# @option --method <HTTPMethod>              use method "HTTPMethod" in the request
# @option --body-data <STRING>               send STRING as data.
# @option --body-file <FILE>                 send contents of FILE.
# @flag --content-disposition                honor the Content-Disposition header when choosing local file names (EXPERIMENTAL)
# @flag --content-on-error                   output the received content on server errors
# @flag --auth-no-challenge                  send Basic HTTP authentication information without first waiting for the server's challenge
# @option --secure-protocol <PR>             choose secure protocol, one of auto, SSLv2, SSLv3, TLSv1, TLSv1_1, TLSv1_2, TLSv1_3 and PFS
# @flag --https-only                         only follow secure HTTPS links
# @flag --no-check-certificate               don't validate the server's certificate
# @option --certificate <FILE>               client certificate file
# @option --certificate-type <TYPE>          client certificate type, PEM or DER
# @option --private-key <FILE>               private key file
# @option --private-key-type <TYPE>          private key type, PEM or DER
# @option --ca-certificate <FILE>            file with the bundle of CAs
# @option --ca-directory <DIR>               directory where hash list of CAs is stored
# @option --crl-file <FILE>                  file with bundle of CRLs
# @option --pinnedpubkey <FILE/HASHES>       Public key (PEM/DER) file, or any number of base64 encoded sha256 hashes preceded by 'sha256//' and separated by ';', to verify peer against
# @option --random-file <FILE>               file with random data for seeding the SSL PRNG
# @option --ciphers <STR>                    Set the priority string (GnuTLS) or cipher list string (OpenSSL) directly.
# @flag --no-hsts                            disable HSTS
# @flag --hsts-file                          path of HSTS database (will override default)
# @option --ftp-user <USER>                  set ftp user to USER
# @option --ftp-password <PASS>              set ftp password to PASS
# @flag --no-remove-listing                  don't remove '.listing' files
# @flag --no-glob                            turn off FTP file name globbing
# @flag --no-passive-ftp                     disable the "passive" transfer mode
# @flag --preserve-permissions               preserve remote file permissions
# @flag --retr-symlinks                      when recursing, get linked-to files (not dir)
# @flag --ftps-implicit                      use implicit FTPS (default port is 990)
# @flag --ftps-resume-ssl                    resume the SSL/TLS session started in the control connection when opening a data connection
# @flag --ftps-clear-data-connection         cipher the control channel only; all the data will be in plaintext
# @flag --ftps-fallback-to-ftp               fall back to FTP if FTPS is not supported in the target server
# @option --warc-file <FILENAME>             save request/response data to a .warc.gz file
# @option --warc-header <STRING>             insert STRING into the warcinfo record
# @option --warc-max-size <NUMBER>           set maximum size of WARC files to NUMBER
# @flag --warc-cdx                           write CDX index files
# @option --warc-dedup <FILENAME>            do not store records listed in this CDX file
# @flag --no-warc-compression                do not compress WARC files with GZIP
# @flag --no-warc-digests                    do not calculate SHA1 digests
# @flag --no-warc-keep-log                   do not store the log file in a WARC record
# @option --warc-tempdir <DIRECTORY>         location for temporary files created by the WARC writer
# @flag -r --recursive                       specify recursive download
# @option -l --level <NUMBER>                maximum recursion depth (inf or 0 for infinite)
# @flag --delete-after                       delete files locally after downloading them
# @flag -k --convert-links                   make links in downloaded HTML or CSS point to local files
# @flag --convert-file-only                  convert the file part of the URLs only (usually known as the basename)
# @option --backups <N>                      before writing file X, rotate up to N backup files
# @flag -K --backup-converted                before converting file X, back up as X.orig
# @flag -m --mirror                          shortcut for -N -r -l inf --no-remove-listing
# @flag -p --page-requisites                 get all images, etc.
# @flag --strict-comments                    turn on strict (SGML) handling of HTML comments
# @option -A --accept <LIST>                 comma-separated list of accepted extensions
# @option -R --reject <LIST>                 comma-separated list of rejected extensions
# @option --accept-regex <REGEX>             regex matching accepted URLs
# @option --reject-regex <REGEX>             regex matching rejected URLs
# @option --regex-type <TYPE>                regex type (posix|pcre)
# @option -D --domains <LIST>                comma-separated list of accepted domains
# @option --exclude-domains <LIST>           comma-separated list of rejected domains
# @flag --follow-ftp                         follow FTP links from HTML documents
# @option --follow-tags <LIST>               comma-separated list of followed HTML tags
# @option --ignore-tags <LIST>               comma-separated list of ignored HTML tags
# @flag -H --span-hosts                      go to foreign hosts when recursive
# @flag -L --relative                        follow relative links only
# @option -I --include-directories <LIST>    list of allowed directories
# @flag --trust-server-names                 use the name specified by the redirection URL's last component
# @option -X --exclude-directories <LIST>    list of excluded directories
# @flag -np                                  don't ascend to the parent directory
# @flag --no-parent                          don't ascend to the parent directory
# @arg url*

command eval "$(argc --argc-eval "$0" "$@")"