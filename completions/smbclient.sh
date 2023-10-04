#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -M --message                               NetBIOS name This options allows you to send messages, using the "WinPopup" protocol, to another computer.
# @option -p --port <port>                         This number is the TCP port number that will be used when making connections to the server.
# @flag -g --grepable                              This parameter provides combined with -L easy parseable output that allows processing with utilities such as grep and cut.
# @option -I --ip-address <IP-address>             IP address is the address of the server to connect to.
# @flag -E --stderr                                This parameter causes the client to write messages to the standard error stream (stderr) rather than to the standard output stream.
# @flag -L --list                                  This option allows you to look at what services are available on a server.
# @option -b --send-buffer <buffersize>            When sending or receiving files, smbclient uses an internal buffer sized by the maximum number of allowed requests to the connected server.
# @flag -B --browse                                Browse SMB servers using DNS.
# @option -t --timeout <timeout-seconds>           This allows the user to tune the default timeout used for each SMB request.
# @option -T --tar <tar> <options>                 smbclient may be used to create tar(1) compatible backups of all the files on an SMB/CIFS share.
# @option -D --directory <initial> <directory>     Change to initial directory before starting.
# @option -c --command <command> <string>          command string is a semicolon-separated list of commands to be executed instead of prompting from stdin.
# @flag -? --help                                  Print a summary of command line options.
# @flag --usage                                    Display brief usage message.
# @option -d --debuglevel                          level is an integer from 0 to 10.
# @flag --debug-stdout                             This will redirect debug output to STDOUT.
# @option --configfile <configuration file>        The file specified contains the configuration details required by the client.
# @option --option <<name>=<value>>                Set the smb.conf(5) option "<name>" to value "<value>" from the command line.
# @option -l --log-basename <logdirectory>         Base directory name for log/debug files.
# @flag --leak-report                              Enable talloc leak reporting on exit.
# @flag --leak-report-full                         Enable full talloc leak reporting on exit.
# @flag -V --version                               Prints the program version number.
# @option -R --name-resolve[`_choice_name_resolve`] <NAME-RESOLVE-ORDER>  This option is used to determine what naming services and in what order to resolve host names to IP addresses.
# @option -O --socket-options <SOCKETOPTIONS>      TCP socket options to set on the client socket.
# @option -m --max-protocol <MAXPROTOCOL>          The value of the parameter (a string) is the highest protocol level that will be supported by the client.
# @option -n --netbiosname                         This option allows you to override the NetBIOS name that Samba uses for itself.
# @option --netbios-scope <SCOPE>                  This specifies a NetBIOS scope that nmblookup will use to communicate with when generating NetBIOS names.
# @option -W --workgroup                           Set the SMB domain of the username.
# @option -r --realm                               Set the realm for the domain.
# @option -U --user <[DOMAIN]USERNAME[%PASSWORD]>  Sets the SMB username or username and password.
# @flag -N --no-pass                               If specified, this parameter suppresses the normal password prompt from the client to the user.
# @flag --password                                 Specify the password on the commandline.
# @flag --pw-nt-hash                               The supplied password is the NT hash.
# @option -A --authentication-file <filename>      This option allows you to specify a file from which to read the username and password used in the connection.
# @flag -P --machine-pass                          Use stored machine account password.
# @option --simple-bind-dn <DN>                    DN to use for a simple bind.
# @option --use-kerberos[desired|required|off]     This parameter determines whether Samba client tools will try to authenticate using Kerberos.
# @option --use-krb5-ccache <CCACHE>               Specifies the credential cache location for Kerberos authentication.
# @flag --use-winbind-ccache                       Try to use the credential cache by winbind.
# @option --client-protection[sign|encrypt|off]    Sets the connection protection the client tool should use.
# @arg servicename
# @arg password

_choice_name_resolve() {
    cat <<-'EOF'
lmhosts	Lookup an IP address in the Samba lmhosts file.
host	Do a standard host name to IP address resolution, using the system /etc/hosts, NIS, or DNS lookups.
wins	Query a name with the IP address listed in the wins server parameter.
bcast	Do a broadcast on each of the known local interfaces listed in the interfaces parameter.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"