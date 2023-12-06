#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -4                              Force the use of IPv4 only.
# @flag -6                              Force the use of IPv6 only.
# @flag -U --unixsock                   Use Unix domain sockets rather than network sockets.
# @flag -u --udp                        Use UDP for the connection (the default is TCP).
# @flag --sctp                          Use SCTP for the connection (the default is TCP).
# @flag --vsock                         Use AF_VSOCK sockets rather than the default TCP sockets (Linux only).
# @option -g <hop1[,hop2,...]>          Sets hops for IPv4 loose source routing.
# @option -G <ptr>                      Sets the IPv4 source route “pointer” for use with -g.
# @option -p --source-port <port>       Set the port number for Ncat to bind to.
# @option -s --source <host>            Set the address for Ncat to bind to.
# @flag -l --listen                     Listen for connections rather than connecting to a remote machine
# @option -m --max-conns <numconns>     The maximum number of simultaneous connections accepted by an Ncat instance.
# @flag -k --keep-open                  Normally a listening server accepts only one connection and then quits when the connection is closed.
# @flag --broker                        Allow multiple parties to connect to a centralised Ncat server and communicate with each other.
# @flag --chat                          The --chat option enables chat mode, intended for the exchange of text between several users.
# @flag --ssl                           In connect mode, this option transparently negotiates an SSL session with an SSL server to securely encrypt the connection.
# @flag --ssl-verify                    In client mode, --ssl-verify is like --ssl except that it also requires verification of the server certificate.
# @option --ssl-cert <certfile.pem>     This option gives the location of a PEM-encoded certificate files used to authenticate the server (in listen mode) or the client (in connect mode).
# @option --ssl-key <keyfile.pem>       This option gives the location of the PEM-encoded private key file that goes with the certificate named with --ssl-cert.
# @option --ssl-trustfile <file>        This option sets a list of certificates that are trusted for purposes of certificate verification.
# @option --ssl-ciphers <cipherlist>    This option sets the list of ciphersuites that Ncat will use when connecting to servers or when accepting SSL connections from clients.
# @option --ssl-servername <name>       In client mode, this option sets the TLS SNI (Server Name Indication) extension, which tells the server the name of the logical server Ncat is contacting.
# @flag --ssl-alpn                      ALPN list This option allows you to specify a comma-separated list of protocols to send via the Application-Layer Protocol Negotiation (ALPN) TLS extension.
# @option --proxy <host[:port]>         Requests proxying through host:port, using the protocol specified by --proxy-type.
# @option --proxy-type[`_choice_proxy_type`] <proto>  In connect mode, this option requests the protocol proto to connect through the proxy host specified by --proxy.
# @option --proxy-auth <user[:pass]>    In connect mode, gives the credentials that will be used to connect to the proxy server.
# @option --proxy-dns[`_choice_proxy_dns`] <type>  In connect mode, it provides control over whether proxy destination hostnames are resolved by the remote proxy server or locally, by Ncat itself.
# @option -e --exec[`_module_os_command`] <command>  Execute the specified command after a connection has been established.
# @option -c --sh-exec[`_module_os_command`] <command>  Same as -e, except it tries to execute the command via /bin/sh.
# @option --lua-exec <file>             Runs the specified file as a Lua script after a connection has been established, using a built-in interpreter.
# @option --allow*,[`_module_os_hostname`] <host[,host,...]>  The list of hosts specified will be the only hosts allowed to connect to the Ncat process.
# @option --allowfile <file>            This has the same functionality as --allow, except that the allowed hosts are provided in a new-line delimited allow file, rather than directly on the command line.
# @option --deny*,[`_module_os_hostname`] <host[,host,...]>  Issue Ncat with a list of hosts that will not be allowed to connect to the listening Ncat process.
# @option --denyfile <file>             This is the same functionality as --deny, except that excluded hosts are provided in a new-line delimited deny file, rather than directly on the command line.
# @option -d --delay <time>             Set the delay interval for lines sent.
# @option -i --idle-timeout <time>      Set a fixed timeout for idle connections.
# @option -w --wait <time>              Set a fixed timeout for connection attempts.
# @option -o --output <file>            Dump session data to a file
# @option -x --hex-dump <file>          Dump session data in hex to a file.
# @flag --append-output                 Issue Ncat with --append-ouput along with -o and/or -x and it will append the resulted output rather than truncating the specified output files.
# @flag -v --verbose                    Issue Ncat with -v and it will be verbose and display all kinds of useful connection based information.
# @flag -C --crlf                       This option tells Ncat to convert LF line endings to CRLF when taking input from standard input.
# @flag -h --help                       Displays a short help screen with common options and parameters, and then exits.
# @flag --recv-only                     If this option is passed, Ncat will only receive data and will not try to send anything.
# @flag --send-only                     If this option is passed, then Ncat will only send data and will ignore anything received.
# @flag --no-shutdown                   If this option is passed, Ncat will not invoke shutdown on a socket after seeing EOF on stdin.
# @flag -n --nodns                      Completely disable hostname resolution across all Ncat options, such as the destination, source address, source routing hops, and the proxy.
# @flag -t --telnet                     Handle DO/DONT WILL/WONT Telnet negotiations.
# @flag --version                       Displays the Ncat version number and exits.
# @arg hostname[`_module_os_hostname`]
# @arg port

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_proxy_type() {
    printf "%s\n" http socks4 socks5
}

_choice_proxy_dns() {
    printf "%s\n" local remote both none
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_hostname() {
    _etc_hosts() {
        if [[ -f "/etc/hosts" ]]; then
            cat /etc/hosts | sed -e '/^\s*#/ d' -e '/^\s*$/ d'
        elif command -v getent >/dev/null; then
            getent hosts 
        fi
    }
    _etc_hosts | sed -e '/^\s*\(127\.0\.\|ff0\|fe0\|::1\)/ d' -e 's/^\s*\S\+\s*\(\S\+\)$/\1/'

    if [[ -r ~/.ssh/config ]]; then
        cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
    fi
    if [[ -r ~/.ssh/known_hosts ]]; then
        cat ~/.ssh/known_hosts | \
        sed \
            -e '/^\s*[!*|@#]/ d' \
            -e 's/^\s*\(\S\+\).*/\1/' \
            -e 's/,/\n/' \
            -e 's/\[\(\S\+\)\].*/\1/' \

    fi
}

command eval "$(argc --argc-eval "$0" "$@")"