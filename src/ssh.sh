_patch_help() {
    echo "Usage: ssh [options] destination [args]..."
    man ssh | sed '1,/DESCRIPTION/ d; /AUTHENTICATION/,$ d' 
}

_patch_version() {
    ssh -V 2>&1 | sed 's/.*OpenSSL \([0-9.]\+\) .*/\1/'
}

_patch_table() {
    sed  -e  '/# -L \[/ d' -e '/# -L # / d' \
        -e '/# -R \[bind_address:\]port:/ d' -e '/# -R #/ d' | \
    _patch_util_add_extra_column \
        '-o:[`_choice_option`]' \
        '-c:*,[`_choice_cipher`]' \
        '-O:[`_choice_ctl_cmd`]' \
        '-Q:[`_choice_query`]' \
        'destination:[`_choice_destination`]'
}

_choice_query() {
		echo -e "cipher\tsupported symmetric ciphers"
		echo -e "cipher-auth\tsupported symmetric ciphers that support authenticated encryption"
		echo -e "help\tsupported query terms for use with the -Q flag"
		echo -e "mac\tsupported message integrity codes"
		echo -e "kex\tkey exchange algorithms"
		echo -e "key\tkey types"
		echo -e "key-cert\tcertificate key types"
		echo -e "key-plain\tnon-certificate key types"
		echo -e "key-sig\tall key types and signature algorithms"
		echo -e "protocol-version\tsupported SSH protocol versions"
		echo -e "sig\tsupported signature algorithms"
}

_choice_ctl_cmd() {
    echo -e "check\tcheck that the master process is running"
    echo -e "forward\trequest forwardings without command execution"
    echo -e "cancel\tcancel forwardings"
    echo -e "exit\trequest the master to exit"
    echo -e "stop\trequest the master to stop accepting further multiplexing requests"
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
