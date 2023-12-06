#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -help                                      Print a help screen
# @flag -version                                   Prints the links version number and exit.
# @option -lookup <hostname>                       Does name lookup, like command "host".
# @flag -g                                         Run Links in graphics mode.
# @flag -no-g                                      Run in text mode (overrides previous -g).
# @option -driver[x|svgalib|fb|directfb|pmshell|atheos] <driver name>  Graphics driver to use.
# @option -mode <parameter>                        Pass a parameter to the graphics driver.
# @option -display <x-display>                     Set Xwindow display.
# @flag -force-html                                Treat files with unknown type as html rather than text.
# @option -source <url>                            Write unformatted data stream to stdout.
# @option -dump <url>                              Write formatted document to stdout.
# @option -width <number>                          For dump, document will be formatted to this screen width (but it can still exceed it if lines can't be broken).
# @option -codepage <codepage>                     For dump, convert output to specified character set -- for eaxmple iso-8859-2, windows-1250.
# @flag -anonymous                                 Restrict links so that it can run on an anonymous account.
# @flag -no-connect                                Runs links as a separate instance - instead of connecting to existing instance.
# @option -download-dir <path>                     Default download directory.
# @option -language <language>                     Set user interface language.
# @option -max-connections <max>                   Maximum number of concurrent connections.
# @option -max-connections-to-host <max>           Maximum number of concurrent connection to a given host.
# @option -retries <retry>                         Number of retries.
# @option -receive-timeout <sec>                   Timeout on receive.
# @option -unrestartable-receive-timeout <sec>     Timeout on non restartable connections.
# @option -timeout-when-trying-multiple-addresses <sec>  Timeout for connection when trying multiple addresses or when resuming a keepalive connection.
# @option -bind-address <ip address or interface name>  Use a specific local IP address.
# @option -bind-address-ipv6 <ipv6 address or interface name>  Use a specific local IPv6 address.
# @flag -no-libevent                               Don't use libevent library.
# @flag -no-openmp                                 Don't use OpenMP.
# @option -download-utime[0|1]                     Set time of downloaded files to last modification time reported by server.
# @option -format-cache-size <num>                 Number of formatted document pages cached.
# @option -memory-cache-size <bytes>               Cache memory in bytes.
# @option -image-cache-size <bytes>                Cache memory in bytes.
# @option -font-cache-size <bytes>                 Cache memory in bytes.
# @option -aggressive-cache[0|1]                   Always cache everything regardless of server's caching recomendations.
# @option -address-preference[0|1|2|3|4]           (default 0) 0 - use system default.
# @option -http-proxy <host:port>                  Host and port number of the HTTP proxy, or blank.
# @option -ftp-proxy <host:port>                   Host and port number of the FTP proxy, or blank.
# @option -https-proxy <host:port>                 Host and port number of the HTTPS proxy, or blank.
# @option -socks-proxy <user@host:port>            Userid, host and port of Socks4a, or blank.
# @option -append-text-to-dns-lookups <text>       Append text to dns lookups.
# @option -no-proxy-domains* <domain,domain>       No proxy for specified domains.
# @option -only-proxies[0|1]                       "1" causes that Links won't initiate any non-proxy connection.
# @option -ssl.certificates[0|1|2]                 (default 1) 0 - ignore invalid certificate.
# @option -ssl.builtin-certificates[0|1]           (default 0; on DOS and OpenVMS default 1) Use built-in certificates instead of system certificates.
# @option -ssl.client-cert-key <filename>          Name of the PEM encoded file with the user private key for client certificate authentication.
# @option -ssl.client-cert-crt <filename>          Name of the PEM encoded file with the user certificate for client certificate authentication.
# @option -ssl.client-cert-password <text>         Password for the user private key.
# @option -async-dns[0|1]                          Asynchronous DNS resolver on(1)/off(0).
# @option -dns-over-https <url>                    DNS over HTTPS url.
# @option -http-bugs.http10[0|1]                   (default 0) "1" forces using only HTTP/1.0 protocol.
# @option -http-bugs.allow-blacklist[0|1]          (default 1) "1" defaults to using list of servers that have broken HTTP/1.1 support.
# @option -http-bugs.bug-no-accept-charset[0|1]    (default 0) Do not send Accept-Charset field of HTTP header.
# @option -http-bugs.no-compression[0|1]           (default 0) "1" causes that links won't advertise HTTP compression support (but it will still accept compressed data).
# @option -http-bugs.retry-internal-errors[0|1]    (default 0) Retry on internal server errors (50x).
# @option -http.fake-firefox[0|1]                  (default 0) Fake that the browser is Firefox in the HTTP header.
# @option -http.do-not-track[0|1]                  (default 0) Send "do not track" request in the HTTP header.
# @option -http.referer[0|1|2|3|4]                 (default 0) 0 - do not send referer.
# @option -http.fake-referer <string>              Fake referer value.
# @option -http.fake-user-agent <string>           Fake user agent value.
# @option -http.extra-header <string>              Extra string added to HTTP header.
# @option -ftp.anonymous-password <string>         Password for anonymous ftp access.
# @option -ftp.use-passive[0|1]                    Use ftp PASV command to bypass firewalls.
# @option -ftp.use-erpt-epsv[0|1]                  Use EPRT and EPSV commands instead of PORT and PASV.
# @option -ftp.set-iptos[0|1]                      Set IP Type-of-service to high throughput on ftp connections.
# @option -smb.allow-hyperlinks-to-smb[0|1]        Allow hyperlinks to SMB protocol.
# @option -menu-font-size <size>                   Size of font in menu.
# @option -menu-background-color <0xRRGGBB>        Set menu background color in graphics mode.
# @option -menu-foreground-color <0xRRGGBB>        Set menu foreground color in graphics mode.
# @option -scroll-bar-area-color <0xRRGGBB>        Set color of scroll bar area.
# @option -scroll-bar-bar-color <0xRRGGBB>         Set color of scroll bar.
# @option -scroll-bar-frame-color <0xRRGGBB>       Set color of scroll bar frame.
# @option -bookmarks-file <file>                   File to store bookmarks.
# @option -bookmarks-codepage <codepage>           Character set of bookmarks file.
# @option -save-url-history[0|1]                   Save URL history on exit.
# @option -enable-cookies[0|1]                     Enable cookies.
# @option -save-cookies[0|1]                       Save cookies on exit.
# @option -max-cookie-age <fp-value>               Maximum cookie age in days.
# @option -display-red-gamma <fp-value>            Red gamma of display.
# @option -display-green-gamma <fp-value>          Green gamma of display.
# @option -display-blue-gamma <fp-value>           Blue gamma of display.
# @option -user-gamma <fp-value>                   Additional gamma.
# @option -bfu-aspect <fp-value>                   Display aspect ration.
# @option -dither-letters[0|1]                     Do letter dithering.
# @option -dither-images[0|1]                      Do image dithering.
# @option -display-optimize[0|1|2]                 Optimize for CRT (0), LCD RGB (1), LCD BGR (2).
# @option -gamma-correction[0|1|2]                 Type of gamma correction: (default 2) 0 - 8-bit (fast).
# @option -overwrite-instead-of-scroll[0|1]        Overwrite the screen instead of scrolling it (valid for svgalib and framebuffer).
# @option -font <file>                             Font file for normal text.
# @option -font-bold <file>                        Font file for bold text.
# @option -font-monospaced <file>                  Font file for monospaced text.
# @option -font-monospaced-bold <file>             Font file for monospaced bold text.
# @option -font-italic <file>                      Font file for italic text.
# @option -font-italic-bold <file>                 Font file for italic bold text.
# @option -font-monospaced-italic <file>           Font file for monospaced italic text.
# @option -font-monospaced-italic-bold <file>      Font file for monospaced italc bold text.
# @option -html-assume-codepage <codepage>         Use the given codepage when the webpage did not specify its codepage.
# @option -html-hard-assume[0|1]                   Use always character set from "-html-assume-codepage" no matter what server sent.
# @option -html-tables[0|1]                        Render tables.
# @option -html-frames[0|1]                        Render frames.
# @option -html-break-long-lines[0|1]              Break long lines in <pre> sections.
# @option -html-images[0|1]                        Display links to unnamed images as [IMG]
# @option -html-image-names[0|1]                   Display filename of an image instead of [IMG].
# @option -html-display-images[0|1]                Display images in graphics mode.
# @option -html-image-scale <percent>              Scale images in graphics mode.
# @option -html-bare-image-autoscale[0|1]          Autoscale images displayed in full screen.
# @option -html-numbered-links[0|1]                Number links in text mode.
# @option -html-table-order[0|1]                   In text mode, walk through table by rows (0) or columns (1).
# @option -html-auto-refresh[0|1]                  Process refresh to other page (1), or display link to that page (0).
# @option -html-target-in-new-window[0|1]          Allow opening new windows from html.
# @option -html-margin <number of spaces>          Margin in text mode.
# @option -html-user-font-size <size>              Size of font on pages in graphics mode.
# @option -html-text-color <<0>-<15>>              Text color in text mode.
# @option -html-link-color <<0>-<15>>              Link color in text mode.
# @option -html-background-color <<0>-<7>>         Background color in text mode.
# @option -html-ignore-document-color[0|1]         Ignore colors specified in html document in text mode.
# @option -html-g-text-color <0xRRGGBB>            Text color in graphics mode.
# @option -html-g-link-color <0xRRGGBB>            Link color in graphics mode.
# @option -html-g-background-color <0xRRGGBB>      Background color in graphics mode.
# @option -html-g-ignore-document-color[0|1]       Ignore colors specified in html document in graphics mode.
# @arg url

command eval "$(argc --argc-eval "$0" "$@")"