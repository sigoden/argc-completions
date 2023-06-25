#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
# @version 3.0.2

# @flag -3                                     Copies between two remote hosts are transferred through the local host.
# @flag -4                                     Forces scp to use IPv4 addresses only.
# @flag -6                                     Forces scp to use IPv6 addresses only.
# @flag -A                                     Allows forwarding of ssh-agent(1) to the remote system.
# @flag -B                                     Selects batch mode (prevents asking for passwords or passphrases).
# @flag -C                                     Compression enable. Passes the -C flag to ssh(1) to enable compression.
# @option -c*,[`_choice_cipher`] <cipher>      Selects the cipher to use for encrypting the data transfer.
# @option -D <sftp_server_path>                When using the SFTP protocol support via -s, connect directly to a local SFTP server program rather than a re‐ mote one via ssh(1).
# @option -F <ssh_config>                      Specifies an alternative per-user configuration file for ssh.
# @option -i <identity_file>                   Selects the file from which the identity (private key) for public key authentication is read.
# @option -J <destination>                     Connect to the target host by first making an scp connection to the jump host described by destination and then establishing a TCP forwarding to the ultimate destination from there.
# @option -l <limit>                           Limits the used bandwidth, specified in Kbit/s.
# @flag -O                                     Use the original SCP protocol for file transfers instead of the SFTP protocol.
# @option -o[`_choice_option`] <ssh_option>    Can be used to pass options to ssh in the format used in ssh_config(5).
# @option -P <port>                            Specifies the port to connect to on the remote host.
# @flag -p                                     Preserves modification times, access times, and file mode bits from the source file.
# @flag -q                                     Quiet mode: disables the progress meter as well as warning and diagnostic messages from ssh(1).
# @flag -r                                     Recursively copy entire directories.
# @option -S <program>                         Name of program to use for the encrypted connection.
# @flag -s                                     Use the SFTP protocol for transfers rather than the original scp protocol.
# @flag -T                                     Disable strict filename checking.
# @flag -v                                     Verbose mode.
# @arg paths+[`_choice_path`]

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

_choice_path() {
    local last_arg="$(_argc_util_param_get_positional -1)"
    if [[ "$last_arg" != *':'* ]]; then
        if [[ "$last_arg" =~ ^[A-Za-z0-9_-]*$ ]]; then
            ls -a1dp * 2>/dev/null
            _helper_host | xargs printf "%s:\0\n"
        else
            echo __argc_value:file
        fi
        return
    fi
    local userhost="${last_arg%%:*}"
    local path="${last_arg#*:}"
    local matcher="$path"
    ssh -o 'Batchmode yes' "$userhost" command ls -a1dp "$path*" 2>/dev/null \
        | _argc_util_comp_parts / "$matcher" "$userhost:"
}

_helper_host() {
    cat ~/.ssh/config | grep '^Host' | awk '{print $2}'
}

_argc_util_comp_kv() {
    local prefix
    local matcher="${2-$ARGC_MATCHER}"
    if [[ "$matcher" == *$1* ]]; then
        prefix="${matcher%%$1*}"
        matcher="${matcher#*$1}"
    fi
    if [[ -n "$prefix" ]]; then
        echo __argc_prefix:$prefix$1
    else
        echo __argc_suffix:$1
    fi
    echo __argc_matcher:$matcher
    for line in $(cat); do
        if [[ -z "$prefix" ]]; then
            echo -e "${line%%=*}\0"
        else
            if [[ "$line" =~ ^${prefix}= ]]; then
                local value="${line#*=}"
                if [[ "$value" =~ ^$'`' ]]; then
                    eval "${value:1:-1}" 2>/dev/null
                else
                    echo $value | tr ',' '\n'
                fi
            fi
        fi
    done
}

_argc_util_param_get_positional() {
    local arg=$1
    if [[ "$arg" == '-'* ]]; then
        echo "${argc__positionals[@]: $arg:1}"
    elif [[ "$arg" == 'len' ]]; then
        echo "${#argc__positionals[@]}"
    else
        echo "${argc__positionals[$arg]}"
    fi
}

_argc_util_comp_parts() {
    awk -v SEP="$1" -v ARGC_MATCHER="${2-$ARGC_MATCHER}" -v ARGC_PREFIX="${3}" '
BEGIN {
    split("", VALUES)
    split("", DEDUPS)
    ONLY_LINE = ""
    COUNT = 0
    split(ARGC_MATCHER, matchers, SEP)
    MATCHER = matchers[length(matchers)]
    PREFIX = ""
    for (i = 1; i < length(matchers); i++) 
        PREFIX = PREFIX matchers[i] SEP
    print "__argc_matcher:" MATCHER
    print "__argc_prefix:" ARGC_PREFIX PREFIX
}
{
    if (index($0, ARGC_MATCHER) == 1) {
        value = substr($0, length(PREFIX) + 1)
        if (COUNT == 0) {
            ONLY_LINE = value
            if (substr(ONLY_LINE, length(ONLY_LINE)) == SEP) {
                ONLY_LINE = ONLY_LINE "\0"
            }
        }
        COUNT = COUNT + 1
        idx = index(value, SEP)
        if (idx > 0) {
            value = substr(value, 1, idx) "\0"
        }
        if (!DEDUPS[value]) {
            DEDUPS[value] = 1
            VALUES[length(VALUES) + 1] = value
        }
    }
}

END {
    if (COUNT == 1) {
        print ONLY_LINE
    } else {
        for (i in VALUES) {
            print VALUES[i]
        }
    }
}'
}

command eval "$(argc --argc-eval "$0" "$@")"