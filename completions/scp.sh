#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -3                                         Copies between two remote hosts are transferred through the local host.
# @flag -4                                         Forces scp to use IPv4 addresses only.
# @flag -6                                         Forces scp to use IPv6 addresses only.
# @flag -A                                         Allows forwarding of ssh-agent(1) to the remote system.
# @flag -B                                         Selects batch mode (prevents asking for passwords or passphrases).
# @flag -C                                         Compression enable.
# @option -c*,[`_module_ssh_cipher`] <cipher>      Selects the cipher to use for encrypting the data transfer.
# @option -D <sftp_server_path>                    When using the SFTP protocol support via -s, connect directly to a local SFTP server program rather than a remote one via ssh(1).
# @option -F <ssh_config>                          Specifies an alternative per-user configuration file for ssh.
# @option -i <identity_file>                       Selects the file from which the identity (private key) for public key authentication is read.
# @option -J <destination>                         Connect to the target host by first making an scp connection to the jump host described by destination and then establishing a TCP forwarding to the ultimate destination from there.
# @option -l <limit>                               Limits the used bandwidth, specified in Kbit/s.
# @flag -O                                         Use the original SCP protocol for file transfers instead of the SFTP protocol.
# @option -o[`_module_ssh_option`] <ssh_option>    Can be used to pass options to ssh in the format used in ssh_config(5).
# @option -P <port>                                Specifies the port to connect to on the remote host.
# @flag -p                                         Preserves modification times, access times, and file mode bits from the source file.
# @flag -q                                         Quiet mode: disables the progress meter as well as warning and diagnostic messages from ssh(1).
# @flag -R                                         Copies between two remote hosts are performed by connecting to the origin host and executing scp there.
# @flag -r                                         Recursively copy entire directories.
# @option -S <program>                             Name of program to use for the encrypted connection.
# @flag -s                                         Use the SFTP protocol for transfers rather than the original scp protocol.
# @flag -T                                         Disable strict filename checking.
# @flag -v                                         Verbose mode.
# @arg paths+[`_choice_path`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_path() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_ssh_host | _argc_util_transform suffix=: nospace
        _argc_util_comp_path
    else
        ssh -o 'Batchmode yes' "$argc__kv_key" command ls -a1dp "$argc__kv_filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix" 
    fi
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