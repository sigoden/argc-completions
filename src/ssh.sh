_patch_help() {
    echo "Usage: ssh [options] destination [args]..."
    man ssh | sed '1,/DESCRIPTION/ d; /AUTHENTICATION/,$ d' 
}

_patch_table() {
    sed  -e  '/# -L \[/ d' -e '/# -L # / d' \
        -e '/# -R \[bind_address:\]port:/ d' -e '/# -R #/ d' | \
    _patch_table_edit_options \
        '-L([bind_address:]port:host:hostport)' \
        '-R([bind_address:]port:host:hostport)' \
        '-o;[`_choice_option`]' \
        '-c;*,[`_choice_cipher`]' \
        '-O;[`_choice_ctl_cmd`]' \
        '-Q;[`_choice_query`]' \ |
    _patch_table_edit_arguments \
        'destination;[`_choice_destination`]'
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

_choice_ctl_cmd() {
    cat <<-'EOF'
check	check that the master process is running
forward	request forwardings without command execution
cancel	cancel forwardings
exit	request the master to exit
stop	request the master to stop accepting further multiplexing requests
EOF
}

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no
AddressFamily=any,inet,inet6
BatchMode=yes,no
BindAddress=yes,no
CanonicalDomains
CanonicalizeFallbackLocal=yes,no
CanonicalizeHostname=yes,no,always
CanonicalizeMaxDots
CanonicalizePermittedCNAMEs
CASignatureAlgorithms
CertificateFile=__argc_value:file
CheckHostIP=yes,no
Ciphers=`_choice_cipher`
ClearAllForwardings=yes,no
Compression=yes,no
ConnectionAttempts
ConnectTimeout
ControlMaster=yes,no,ask,auto,autoask
ControlPath
ControlPersist=yes,no
DynamicForward
EscapeChar
ExitOnForwardFailure=yes,no
FingerprintHash=md5,sha256
ForkAfterAuthentication
ForwardAgent=yes,no
ForwardX11=yes,no
ForwardX11Timeout
ForwardX11Trusted=yes,no
GatewayPorts=yes,no
GlobalKnownHostsFile=__argc_value:file
GSSAPIAuthentication=yes,no
GSSAPIKeyExchange
GSSAPIClientIdentity
GSSAPIDelegateCredentials
GSSAPIKexAlgorithms
GSSAPIRenewalForcesRekey
GSSAPIServerIdentity
GSSAPITrustDns
HashKnownHosts=yes,no
Host
HostbasedAcceptedAlgorithms
HostbasedAuthentication=yes,no
HostKeyAlgorithms=`_choice_hostkeyalgorithms`
HostKeyAlias
Hostname
IdentitiesOnly=yes,no
IdentityAgent
IdentityFile=__argc_value:file
IPQoS=af11,af12,af13,af21,af22,af23,af31,af32,af33,af41,af42,af43,cs0,cs1,cs2,cs3,cs4,cs5,cs6,cs7,ef,le,lowdelay,throughput,reliability,none
KbdInteractiveAuthentication=yes,no
KbdInteractiveDevices
KexAlgorithms
KnownHostsCommand
LocalCommand
LocalForward
LogLevel=QUIET,FATAL,ERROR,INFO,VERBOSE,DEBUG,DEBUG1,DEBUG2,DEBUG3
MACs
Match
NoHostAuthenticationForLocalhost=yes,no
NumberOfPasswordPrompts
PasswordAuthentication=yes,no
PermitLocalCommand=yes,no
PermitRemoteOpen
PKCS11Provider
Port
PreferredAuthentications
ProxyCommand
ProxyJump
ProxyUseFdpass
PubkeyAcceptedAlgorithms
PubkeyAuthentication=yes,no
RekeyLimit
RemoteCommand
RemoteForward
RequestTTY=yes,no,force,auto
SendEnv
ServerAliveInterval
ServerAliveCountMax
SessionType
SetEnv
StdinNull
StreamLocalBindMask
StreamLocalBindUnlink=yes,no
StrictHostKeyChecking=yes,no,ask
TCPKeepAlive=yes,no
Tunnel=yes,point-to-point,ethernet,no
TunnelDevice
UpdateHostKeys=yes,no,ask
User
UserKnownHostsFile=__argc_value:file
VerifyHostKeyDNS=yes,no,ask
VisualHostKey=yes,no
XAuthLocation=__argc_value:file
EOF
}

_choice_cipher() {
    ssh -Q cipher
}

_choice_hostkeyalgorithms() {
    ssh -Q hostkeyalgorithms
}

_choice_destination() {
    cat ~/.ssh/config | grep '^Host' | awk '{print $2}'
}
