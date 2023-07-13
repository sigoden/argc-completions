#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -4                                      Forces tnftp to only use IPv4 addresses.
# @flag -6                                      Forces tnftp to only use IPv6 addresses.
# @flag -A                                      Force active mode FTP.
# @flag -a                                      Causes tnftp to bypass normal login procedure, and use an anonymous login instead.
# @flag -d                                      Enables debugging.
# @flag -e                                      Disables command line editing.
# @flag -f                                      Forces a cache reload for transfers that go through the FTP or HTTP proxies.
# @flag -g                                      Disables file name globbing.
# @flag -i                                      Turns off interactive prompting during multiple file transfers.
# @option -N <netrc-file>                       Use netrc instead of ~/.netrc.
# @flag -n                                      Restrains tnftp from attempting “auto-login” upon initial connection for non auto-fetch transfers.
# @option -o <output>                           When auto-fetching files, save the contents in output.
# @option -P <port>                             Sets the port number to port.
# @flag -p                                      Enable passive mode operation for use behind connection filtering firewalls.
# @option -q <quittime>                         Quit if the connection has stalled for quittime seconds.
# @flag -R                                      Restart all non-proxied auto-fetches.
# @option -r <wait>                             Retry the connection attempt if it failed, pausing for wait seconds.
# @option -s <srcaddr>                          Uses srcaddr as the local IP address for all connections.
# @flag -t                                      Enables packet tracing.
# @option -T <direction,maximum[,increment]>    Set the maximum transfer rate for direction to maximum bytes/second, and if specified, the increment to increment bytes/second.
# @flag -u                                      url file ... Upload files on the command line to url where url is one of the ‘ftp://’ URL types as supported by auto-fetch (with an optional target filename for single file uploads), and file is one or more local files to be uploaded.
# @flag -V                                      Disable verbose and progress, overriding the default of enabled when output is to a terminal.
# @flag -v                                      Enable verbose and progress.
# @option -x <xfersize>                         Set the size of the socket send and receive buffers to xfersize.
# @flag -?                                      Display help to stdout, and exit.
# @arg host

command eval "$(argc --argc-eval "$0" "$@")"