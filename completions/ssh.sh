#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -4                                      Forces ssh to use IPv4 addresses only.
# @flag -6                                      Forces ssh to use IPv6 addresses only.
# @flag -A                                      Enables forwarding of connections from an authentication agent such as ssh-agent(1).
# @flag -a                                      Disables forwarding of the authentication agent connection.
# @option -B <bind_interface>                   Bind to the address of bind_interface before attempting to connect to the destination host.
# @option -b <bind_address>                     Use bind_address on the local machine as the source address of the connection.
# @flag -C                                      Requests compression of all data (including stdin, stdout, stderr, and data for forwarded X11, TCP and UNIX-domain connections).
# @option -c*,[`_module_ssh_cipher`] <cipher_spec>  Selects the cipher specification for encrypting the session.
# @option -D <[bind_address:]port>              Specifies a local “dynamic” application-level port forwarding.
# @option -E <log_file>                         Append debug logs to log_file instead of standard error.
# @option -e <escape_char>                      Sets the escape character for sessions with a pty (default: ‘~’).
# @option -F <configfile>                       Specifies an alternative per-user configuration file.
# @flag -f                                      Requests ssh to go to background just before command execution.
# @flag -G                                      Causes ssh to print its configuration after evaluating Host and Match blocks and exit.
# @flag -g                                      Allows remote hosts to connect to local forwarded ports.
# @option -I <pkcs11>                           Specify the PKCS#11 shared library ssh should use to communicate with a PKCS#11 token providing keys for user authentication.
# @option -i <identity_file>                    Selects a file from which the identity (private key) for public key authentication is read.
# @option -J <destination>                      Connect to the target host by first making a ssh connection to the jump host described by destination and then establishing a TCP forwarding to the ultimate destination from there.
# @flag -K                                      Enables GSSAPI-based authentication and forwarding (delegation) of GSSAPI credentials to the server.
# @flag -k                                      Disables forwarding (delegation) of GSSAPI credentials to the server.
# @option -L <[bind_address:]port:host:hostport>  Specifies that connections to the given TCP port or Unix socket on the local (client) host are to be forwarded to the given host and port, or Unix socket, on the remote side.
# @option -l <login_name>                       Specifies the user to log in as on the remote machine.
# @flag -M                                      Places the ssh client into “master” mode for connection sharing.
# @option -m <mac_spec>                         A comma-separated list of MAC (message authentication code) algorithms, specified in order of preference.
# @flag -N                                      Do not execute a remote command.
# @flag -n                                      Redirects stdin from /dev/null (actually, prevents reading from stdin).
# @option -O[`_choice_ctl_cmd`] <ctl_cmd>       Control an active connection multiplexing master process.
# @option -o[`_module_ssh_option`] <option>     Can be used to give options in the format used in the configuration file.
# @option -p <port>                             Port to connect to on the remote host.
# @option -Q[`_choice_query`] <query_option>    Queries for the algorithms supported by one of the following features: cipher (supported symmetric ciphers), cipher-auth (supported symmetric ciphers that support authenticated encryption), help (supported query terms for use with the -Q flag), mac (supported message integrity codes), kex (key exchange algorithms), kex-gss (GSSAPI key exchange algorithms), key (key types), key-cert (certificate key types), key-plain (non-certificate key types), key-sig (all key types and signature algorithms), protocol-version (supported SSH protocol versions), and sig (supported signature algorithms).
# @flag -q                                      Quiet mode.
# @option -R <[bind_address:]port:host:hostport>  Specifies that connections to the given TCP port or Unix socket on the remote (server) host are to be forwarded to the local side.
# @option -S <ctl_path>                         Specifies the location of a control socket for connection sharing, or the string “none” to disable connection sharing.
# @flag -s                                      May be used to request invocation of a subsystem on the remote system.
# @flag -T                                      Disable pseudo-terminal allocation.
# @flag -t                                      Force pseudo-terminal allocation.
# @flag -V                                      Display the version number and exit.
# @flag -v                                      Verbose mode.
# @option -W <host:port>                        Requests that standard input and output on the client be forwarded to host on port over the secure channel.
# @option -w <local_tun[:remote_tun]>           Requests tunnel device forwarding with the specified tun(4) devices between the client (local_tun) and the server (remote_tun).
# @flag -X                                      Enables X11 forwarding.
# @flag -x                                      Disables X11 forwarding.
# @flag -Y                                      Enables trusted X11 forwarding.
# @flag -y                                      Send log information using the syslog(3) system module.
# @arg destination[`_module_ssh_host`]
# @arg args*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_ctl_cmd() {
    cat <<-'EOF'
check	check that the master process is running
forward	request forwardings without command execution
cancel	cancel forwardings
exit	request the master to exit
stop	request the master to stop accepting further multiplexing requests
EOF
}

_choice_query() {
    cat <<-'EOF'
cipher	supported symmetric ciphers
cipher-auth	supported symmetric ciphers that support authenticated encryption
help	supported query terms for use with the -Q flag
mac	supported message integrity codes
kex	key exchange algorithms
key	key types
key-cert	certificate key types
key-plain	non-certificate key types
key-sig	all key types and signature algorithms
protocol-version	supported SSH protocol versions
sig	supported signature algorithms
EOF
}

_module_ssh_cipher() {
    ssh -Q cipher
}

_module_ssh_host() {
    cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
}

_module_ssh_hostkeyalgorithms() {
    ssh -Q hostkeyalgorithms
}

_module_ssh_option() {
    command cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no
AddressFamily=any,inet,inet6
BatchMode=yes,no
BindAddress=yes,no
CanonicalDomains=
CanonicalizeFallbackLocal=yes,no
CanonicalizeHostname=yes,no,always
CanonicalizeMaxDots=
CanonicalizePermittedCNAMEs=
CASignatureAlgorithms=
CertificateFile=__argc_value=file
CheckHostIP=yes,no
Ciphers=`_module_ssh_cipher`
ClearAllForwardings=yes,no
Compression=yes,no
ConnectionAttempts=
ConnectTimeout=
ControlMaster=yes,no,ask,auto,autoask
ControlPath=
ControlPersist=yes,no
DynamicForward=
EscapeChar=
ExitOnForwardFailure=yes,no
FingerprintHash=md5,sha256
ForkAfterAuthentication=
ForwardAgent=yes,no
ForwardX11=yes,no
ForwardX11Timeout=
ForwardX11Trusted=yes,no
GatewayPorts=yes,no
GlobalKnownHostsFile=__argc_value=file
GSSAPIAuthentication=yes,no
GSSAPIKeyExchange=
GSSAPIClientIdentity=
GSSAPIDelegateCredentials=
GSSAPIKexAlgorithms=
GSSAPIRenewalForcesRekey=
GSSAPIServerIdentity=
GSSAPITrustDns=
HashKnownHosts=yes,no
Host=
HostbasedAcceptedAlgorithms=
HostbasedAuthentication=yes,no
HostKeyAlgorithms=`_module_ssh_hostkeyalgorithms`
HostKeyAlias=
Hostname=
IdentitiesOnly=yes,no
IdentityAgent=
IdentityFile=__argc_value=file
IPQoS=af11,af12,af13,af21,af22,af23,af31,af32,af33,af41,af42,af43,cs0,cs1,cs2,cs3,cs4,cs5,cs6,cs7,ef,le,lowdelay,throughput,reliability,none
KbdInteractiveAuthentication=yes,no
KbdInteractiveDevices=
KexAlgorithms=
KnownHostsCommand=
LocalCommand=
LocalForward=
LogLevel=QUIET,FATAL,ERROR,INFO,VERBOSE,DEBUG,DEBUG1,DEBUG2,DEBUG3
MACs=
Match=
NoHostAuthenticationForLocalhost=yes,no
NumberOfPasswordPrompts=
PasswordAuthentication=yes,no
PermitLocalCommand=yes,no
PermitRemoteOpen=
PKCS11Provider=
Port=
PreferredAuthentications=
ProxyCommand=
ProxyJump=
ProxyUseFdpass=
PubkeyAcceptedAlgorithms=
PubkeyAuthentication=yes,no
RekeyLimit=
RemoteCommand=
RemoteForward=
RequestTTY=yes,no,force,auto
SendEnv=
ServerAliveInterval=
ServerAliveCountMax=
SessionType=
SetEnv=
StdinNull=
StreamLocalBindMask=
StreamLocalBindUnlink=yes,no
StrictHostKeyChecking=yes,no,ask
TCPKeepAlive=yes,no
Tunnel=yes,point-to-point,ethernet,no
TunnelDevice=
UpdateHostKeys=yes,no,ask
User=
UserKnownHostsFile=__argc_value=file
VerifyHostKeyDNS=yes,no,ask
VisualHostKey=yes,no
XAuthLocation=__argc_value=file
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"