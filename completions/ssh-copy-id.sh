#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i <identity_file>          Use only the key(s) contained in identity_file (rather than looking for identities via ssh-add(1) or in the default_ID_file).
# @flag -f                            Forced mode: doesn't check if the keys are present on the remote server.
# @flag -n                            do a dry-run.
# @flag -s                            SFTP mode: usually the public keys are installed by executing commands on the remote side.
# @flag -h                            Print Usage summary
# @flag -?                            Print Usage summary
# @option -o[`_module_ssh_option`]    Can be used to pass options to ssh in the format used in ssh_config
# @option -p <port>                   Port to connect to on the remote host.
# @arg host[`_module_ssh_host`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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