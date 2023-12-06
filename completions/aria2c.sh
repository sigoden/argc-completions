#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --dir                                 The directory to store the downloaded file.
# @option -i --input-file <FILE>                   Downloads the URIs listed in FILE.
# @option -l --log                                 The file name of the log file.
# @option -j --max-concurrent-downloads <N>        Set the maximum number of parallel downloads for every queue item.
# @option -V --check-integrity[true|false]         Check file integrity by validating piece hashes or a hash of entire file.
# @option -c --continue[true|false]                Continue downloading a partially downloaded file.
# @option -h --help <<TAG>|<KEYWORD>>              The help messages are classified with tags.
# @option --all-proxy <PROXY>                      Use a proxy server for all protocols.
# @option --all-proxy-passwd <PASSWD>              Set password for --all-proxy option.
# @option --all-proxy-user <USER>                  Set user for --all-proxy option.
# @option --checksum <<TYPE>=<DIGEST>>             Set checksum.
# @option --connect-timeout <SEC>                  Set the connect timeout in seconds to establish connection to HTTP/FTP/proxy server.
# @option --dry-run[true|false]                    If true is given, aria2 just checks whether the remote file is available and doesn't download data.
# @option --lowest-speed-limit <SPEED>             Close connection if download speed is lower than or equal to this value(bytes per sec).
# @option -x --max-connection-per-server <NUM>     The maximum number of connections to one server for each download.
# @option --max-file-not-found <NUM>               If aria2 receives "file not found" status from the remote HTTP/FTP servers NUM times without getting a single byte, then force the download to fail.
# @option -m --max-tries <N>                       Set number of tries.
# @option -k --min-split-size <SIZE>               aria2 does not split less than 2*SIZE byte range.
# @option --netrc-path <FILE>                      Specify the path to the netrc file.
# @option -n --no-netrc[true|false]                Disables netrc support.
# @option --no-proxy <DOMAINS>                     Specify a comma separated list of host names, domains and network addresses with or without a subnet mask where no proxy should be used.
# @option -o --out <FILE>                          The file name of the downloaded file.
# @option --proxy-method <METHOD>                  Set the method to use in proxy request.
# @option -R --remote-time[true|false]             Retrieve timestamp of the remote file from the remote HTTP/FTP server and if it is available, apply it to the local file.
# @option --reuse-uri[true|false]                  Reuse already used URIs if no unused URIs are left.
# @option --retry-wait <SEC>                       Set the seconds to wait between retries.
# @option --server-stat-of <FILE>                  Specify the file name to which performance profile of the servers is saved.
# @option --server-stat-if <FILE>                  Specify the file name to load performance profile of the servers.
# @option --server-stat-timeout <SEC>              Specifies timeout in seconds to invalidate performance profile of the servers since the last contact to them.
# @option -s --split <N>                           Download a file using N connections.
# @option --stream-piece-selector <SELECTOR>       Specify piece selection algorithm used in HTTP/FTP download.
# @option -t --timeout <SEC>                       Set timeout in seconds.
# @option --uri-selector <SELECTOR>                Specify URI selection algorithm.
# @option --ca-certificate <FILE>                  Use the certificate authorities in FILE to verify the peers.
# @option --certificate <FILE>                     Use the client certificate in FILE.
# @option --check-certificate[true|false]          Verify the peer using certificates specified in --ca-certificate option.
# @option --http-accept-gzip[true|false]           Send Accept-Encoding: deflate, gzip request header and inflate response if remote server responds with Content-Encoding: gzip or Content-Encoding: deflate.
# @option --http-auth-challenge[true|false]        Send HTTP authorization header only when it is requested by the server.
# @option --http-no-cache[true|false]              Send Cache-Control: no-cache and Pragma: no-cache header to avoid cached content.
# @option --http-user <USER>                       Set HTTP user.
# @option --http-passwd <PASSWD>                   Set HTTP password.
# @option --http-proxy <PROXY>                     Use a proxy server for HTTP.
# @option --http-proxy-passwd <PASSWD>             Set password for --http-proxy.
# @option --http-proxy-user <USER>                 Set user for --http-proxy.
# @option --https-proxy <PROXY>                    Use a proxy server for HTTPS.
# @option --https-proxy-passwd <PASSWD>            Set password for --https-proxy.
# @option --https-proxy-user <USER>                Set user for --https-proxy.
# @option --private-key <FILE>                     Use the private key in FILE.
# @option --referer                                Set an http referrer (Referer).
# @option --enable-http-keep-alive[true|false]     Enable HTTP/1.1 persistent connection.
# @option --enable-http-pipelining[true|false]     Enable HTTP/1.1 pipelining.
# @option --header                                 Append HEADER to HTTP request header.
# @option --load-cookies <FILE>                    Load Cookies from FILE using the Firefox3 format (SQLite3), Chromium/Google Chrome (SQLite3) and the Mozilla/Firefox(1.x/2.x)/Netscape format.
# @option --save-cookies <FILE>                    Save Cookies to FILE in Mozilla/Firefox(1.x/2.x)/ Netscape format.
# @option --use-head[true|false]                   Use HEAD method for the first request to the HTTP server.
# @option --no-want-digest-header[true|false]      Whether to disable Want-Digest header when doing requests.
# @option -U --user-agent <USER_AGENT>             Set user agent for HTTP(S) downloads.
# @option --ftp-user <USER>                        Set FTP user.
# @option --ftp-passwd <PASSWD>                    Set FTP password.
# @option -p --ftp-pasv[true|false]                Use the passive mode in FTP.
# @option --ftp-proxy <PROXY>                      Use a proxy server for FTP.
# @option --ftp-proxy-passwd <PASSWD>              Set password for --ftp-proxy option.
# @option --ftp-proxy-user <USER>                  Set user for --ftp-proxy option.
# @option --ftp-type <TYPE>                        Set FTP transfer type.
# @option --ftp-reuse-connection[true|false]       Reuse connection in FTP.
# @option --ssh-host-key-md <<TYPE>=<DIGEST>>      Set checksum for SSH host public key.
# @option --select-file* <INDEX>                   Set file to download by specifying its index.
# @option -S --show-files[true|false]              Print file listing of ".torrent", ".meta4" and ".metalink" file and exit.
# @option --bt-detach-seed-only[true|false]        Exclude seed only downloads when counting concurrent active downloads (See -j option).
# @option --bt-enable-hook-after-hash-check[true|false]  Allow hook command invocation after hash check (see -V option) in BitTorrent download.
# @option --bt-enable-lpd[true|false]              Enable Local Peer Discovery.
# @option --bt-exclude-tracker <<URI>[,...]>       Comma separated list of BitTorrent tracker's announce URI to remove.
# @option --bt-external-ip <IPADDRESS>             Specify the external IP address to use in BitTorrent download and DHT.
# @option --bt-force-encryption[true|false]        Requires BitTorrent message payload encryption with arc4.
# @option --bt-hash-check-seed[true|false]         If true is given, after hash check using --check-integrity option and file is complete, continue to seed file.
# @option --bt-load-saved-metadata[true|false]     Before getting torrent metadata from DHT when downloading with magnet link, first try to read file saved by --bt-save-metadata option.
# @option --bt-lpd-interface <INTERFACE>           Use given interface for Local Peer Discovery.
# @option --bt-max-open-files <NUM>                Specify maximum number of files to open in multi-file BitTorrent/Metalink download globally.
# @option --bt-max-peers <NUM>                     Specify the maximum number of peers per torrent.
# @option --bt-metadata-only[true|false]           Download metadata only.
# @option --bt-min-crypto-level <plain|arc4>       Set minimum level of encryption method.
# @option --bt-prioritize-piece <head[=<SIZE>],tail[=<SIZE>]>  Try to download first and last pieces of each file first.
# @option --bt-remove-unselected-file[true|false]  Removes the unselected files when download is completed in BitTorrent.
# @option --bt-require-crypto[true|false]          If true is given, aria2 doesn't accept and establish connection with legacy BitTorrent handshake(\19BitTorrent protocol).
# @option --bt-request-peer-speed-limit <SPEED>    If the whole download speed of every torrent is lower than SPEED, aria2 temporarily increases the number of peers to try for more download speed.
# @option --bt-save-metadata[true|false]           Save metadata as ".torrent" file.
# @option --bt-seed-unverified[true|false]         Seed previously downloaded files without verifying piece hashes.
# @option --bt-stop-timeout <SEC>                  Stop BitTorrent download if download speed is 0 in consecutive SEC seconds.
# @option --bt-tracker <<URI>[,...]>               Comma separated list of additional BitTorrent tracker's announce URI.
# @option --bt-tracker-connect-timeout <SEC>       Set the connect timeout in seconds to establish connection to tracker.
# @option --bt-tracker-interval <SEC>              Set the interval in seconds between tracker requests.
# @option --bt-tracker-timeout <SEC>               Set timeout in seconds.
# @option --dht-entry-point <<HOST>:<PORT>>        Set host and port as an entry point to IPv4 DHT network.
# @option --dht-entry-point6 <<HOST>:<PORT>>       Set host and port as an entry point to IPv6 DHT network.
# @option --dht-file-path <PATH>                   Change the IPv4 DHT routing table file to PATH.
# @option --dht-file-path6 <PATH>                  Change the IPv6 DHT routing table file to PATH.
# @option --dht-listen-addr6 <ADDR>                Specify address to bind socket for IPv6 DHT.
# @option --dht-listen-port*[IPv4|IPv6] <PORT>     Set UDP listening port used by DHT and UDP tracker.
# @option --dht-message-timeout <SEC>              Set timeout in seconds.
# @option --enable-dht[true|false]                 Enable IPv4 DHT functionality.
# @option --enable-dht6[true|false]                Enable IPv6 DHT functionality.
# @option --enable-peer-exchange[true|false]       Enable Peer Exchange extension.
# @option --follow-torrent[true|false|mem]         If true or mem is specified, when a file whose suffix is .torrent or content type is application/x-bittorrent is downloaded, aria2 parses it as a torrent file and downloads files mentioned in it.
# @option -O --index-out <<INDEX>=<PATH>>          Set file path for file with index=INDEX.
# @option --listen-port* <PORT>                    Set TCP port number for BitTorrent downloads.
# @option --max-overall-upload-limit <SPEED>       Set max overall upload speed in bytes/sec.
# @option -u --max-upload-limit <SPEED>            Set max upload speed per each torrent in bytes/sec.
# @option --peer-id-prefix <PEER_ID_PREFIX>        Specify the prefix of peer ID.
# @option --peer-agent <PEER_AGENT>                Specify the string used during the bitorrent extended handshake for the peer's client version.
# @option --seed-ratio <RATIO>                     Specify share ratio.
# @option --seed-time <MINUTES>                    Specify seeding time in (fractional) minutes.
# @option -T --torrent-file <TORRENT_FILE>         The path to the ".torrent" file.
# @option --follow-metalink[true|false|mem]        If true or mem is specified, when a file whose suffix is .meta4 or .metalink or content type of application/metalink4+xml or application/metalink+xml is downloaded, aria2 parses it as a metalink file and downloads files mentioned in it.
# @option --metalink-base-uri <URI>                Specify base URI to resolve relative URI in metalink:url and metalink:metaurl element in a metalink file stored in local disk.
# @option -M --metalink-file <METALINK_FILE>       The file path to ".meta4" and ".metalink" file.
# @option --metalink-language <LANGUAGE>           The language of the file to download.
# @option --metalink-location <<LOCATION>[,...]>   The location of the preferred server.
# @option --metalink-os <OS>                       The operating system of the file to download.
# @option --metalink-version <VERSION>             The version of the file to download.
# @option --metalink-preferred-protocol <PROTO>    Specify preferred protocol.
# @option --metalink-enable-unique-protocol[true|false]  If true is given and several protocols are available for a mirror in a metalink file, aria2 uses one of them.
# @option --enable-rpc[true|false]                 Enable JSON-RPC/XML-RPC server.
# @option --pause[true|false]                      Pause download after added.
# @option --pause-metadata[true|false]             Pause downloads created as a result of metadata download.
# @option --rpc-allow-origin-all[true|false]       Add Access-Control-Allow-Origin header field with value * to the RPC response.
# @option --rpc-certificate <FILE>                 Use the certificate in FILE for RPC server.
# @option --rpc-listen-all[true|false]             Listen incoming JSON-RPC/XML-RPC requests on all network interfaces.
# @option --rpc-listen-port <PORT>                 Specify a port number for JSON-RPC/XML-RPC server to listen to.
# @option --rpc-max-request-size <SIZE>            Set max size of JSON-RPC/XML-RPC request.
# @option --rpc-passwd <PASSWD>                    Set JSON-RPC/XML-RPC password.
# @option --rpc-private-key <FILE>                 Use the private key in FILE for RPC server.
# @option --rpc-save-upload-metadata[true|false]   Save the uploaded torrent or metalink metadata in the directory specified by --dir option.
# @option --rpc-secret <TOKEN>                     Set RPC secret authorization token.
# @option --rpc-secure[true|false]                 RPC transport will be encrypted by SSL/TLS.
# @option --rpc-user <USER>                        Set JSON-RPC/XML-RPC user.
# @option --allow-overwrite[true|false]            Restart download from scratch if the corresponding control file doesn't exist.
# @option --allow-piece-length-change[true|false]  If false is given, aria2 aborts download when a piece length is different from one in a control file.
# @option --always-resume[true|false]              Always resume download.
# @option --async-dns[true|false]                  Enable asynchronous DNS.
# @option --async-dns-server <<IPADDRESS>[,...]>   Comma separated list of DNS server address used in asynchronous DNS resolver.
# @option --auto-file-renaming[true|false]         Rename file name if the same file already exists.
# @option --auto-save-interval <SEC>               Save a control file(*.aria2) every SEC seconds.
# @option --conditional-get[true|false]            Download file only when the local file is older than remote file.
# @option --conf-path <PATH>                       Change the configuration file path to PATH.
# @option --console-log-level <LEVEL>              Set log level to output to console.
# @option --content-disposition-default-utf8[true|false]  Handle quoted string in Content-Disposition header as UTF-8 instead of ISO-8859-1, for example, the filename parameter, but not the extended version filename*.
# @option -D --daemon[true|false]                  Run as daemon.
# @option --deferred-input[true|false]             If true is given, aria2 does not read all URIs and options from file specified by --input-file option at startup, but it reads one by one when it needs later.
# @option --disable-ipv6[true|false]               Disable IPv6.
# @option --disk-cache <SIZE>                      Enable disk cache.
# @option --download-result <OPT>                  This option changes the way Download Results is formatted.
# @option --dscp                                   Set DSCP value in outgoing IP packets of BitTorrent traffic for QoS.
# @option --rlimit-nofile <NUM>                    Set the soft limit of open file descriptors.
# @option --enable-color[true|false]               Enable color output for a terminal.
# @option --enable-mmap[true|false]                Map files into memory.
# @option --event-poll <POLL>                      Specify the method for polling events.
# @option --file-allocation <METHOD>               Specify file allocation method.
# @option --force-save[true|false]                 Save download with --save-session option even if the download is completed or removed.
# @option --save-not-found[true|false]             Save download with --save-session option even if the file was not found on the server.
# @option --gid                                    Set GID manually.
# @option --hash-check-only[true|false]            If true is given, after hash check using --check-integrity option, abort download whether or not download is complete.
# @option --human-readable[true|false]             Print sizes and speed in human readable format (e.g., 1.2Ki, 3.4Mi) in the console readout.
# @option --interface                              Bind sockets to given interface.
# @option --keep-unfinished-download-result[true|false]  Keep unfinished download results even if doing so exceeds --max-download-result.
# @option --max-download-result <NUM>              Set maximum number of download result kept in memory.
# @option --max-mmap-limit <SIZE>                  Set the maximum file size to enable mmap (see --enable-mmap option).
# @option --max-resume-failure-tries <N>           When used with --always-resume=false, aria2 downloads file from scratch when aria2 detects N number of URIs that does not support resume.
# @option --min-tls-version <VERSION>              Specify minimum SSL/TLS version to enable.
# @option --multiple-interface <INTERFACES>        Comma separated list of interfaces to bind sockets to.
# @option --log-level <LEVEL>                      Set log level to output.
# @option --on-bt-download-complete <COMMAND>      For BitTorrent, a command specified in --on-download-complete is called after download completed and seeding is over.
# @option --on-download-complete <COMMAND>         Set the command to be executed after download completed.
# @option --on-download-error <COMMAND>            Set the command to be executed after download aborted due to error.
# @option --on-download-pause <COMMAND>            Set the command to be executed after download was paused.
# @option --on-download-start <COMMAND>            Set the command to be executed after download got started.
# @option --on-download-stop <COMMAND>             Set the command to be executed after download stopped.
# @option --optimize-concurrent-downloads <true|false|<A>:<B>>  Optimizes the number of concurrent downloads according to the bandwidth available.
# @option --piece-length <LENGTH>                  Set a piece length for HTTP/FTP downloads.
# @option --show-console-readout[true|false]       Show console readout.
# @option --stderr[true|false]                     Redirect all console output that would be otherwise printed in stdout to stderr.
# @option --summary-interval <SEC>                 Set interval in seconds to output download progress summary.
# @option -Z --force-sequential[true|false]        Fetch URIs in the command-line sequentially and download each URI in a separate session, like the usual command-line download utilities.
# @option --max-overall-download-limit <SPEED>     Set max overall download speed in bytes/sec.
# @option --max-download-limit <SPEED>             Set max download speed per each download in bytes/sec.
# @option --no-conf[true|false]                    Disable loading aria2.conf file.
# @option --no-file-allocation-limit <SIZE>        No file allocation is made for files whose size is smaller than SIZE.
# @option -P --parameterized-uri[true|false]       Enable parameterized URI support.
# @option -q --quiet[true|false]                   Make aria2 quiet (no console output).
# @option --realtime-chunk-checksum[true|false]    Validate chunk of data by calculating checksum while downloading a file if chunk checksums are provided.
# @option --remove-control-file[true|false]        Remove control file before download.
# @option --save-session <FILE>                    Save error/unfinished downloads to FILE on exit.
# @option --save-session-interval <SEC>            Save error/unfinished downloads to a file specified by --save-session option every SEC seconds.
# @option --socket-recv-buffer-size <SIZE>         Set the maximum socket receive buffer in bytes.
# @option --stop <SEC>                             Stop application after SEC seconds has passed.
# @option --stop-with-process <PID>                Stop application when process PID is not running.
# @option --truncate-console-readout[true|false]   Truncate console readout to fit in a single line.
# @flag -v --version                               Print the version number, copyright and the configuration information and exit.
# @arg uri-magnet-torrent_file-metalink_file* <<URI>|<MAGNET>|<TORRENT_FILE>|<METALINK_FILE>>

command eval "$(argc --argc-eval "$0" "$@")"