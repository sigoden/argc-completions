#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --client <PATH>                          mosh client on local machine (default: "/nix/store/fszaxnbg0nw2b5j5m3fggw74crfgd724-mosh-1.4.0/bin/mosh-client")
# @option --server <COMMAND>                       mosh server on remote machine (default: "mosh-server")
# @option --predict[`_choice_predict`] <experimental>  Predict setting"
# @flag -o --predict-overwrite                     prediction overwrites instead of inserting
# @option --family[`_choice_family`] <prefer-inet6>  Network family setting
# @option -p <PORT[:PORT2]>
# @option --port <PORT[:PORT2]>                    server-side UDP port or range (No effect on server-side SSH port)
# @option --bind-server[ssh|any|IP]                ask the server to reply from an IP address (default: "ssh")
# @option --ssh[`_module_os_command`] <COMMAND>    ssh command to run when setting up session (example: "ssh -p 2222") (default: "ssh")
# @flag --no-ssh-pty                               do not allocate a pseudo tty on ssh connection
# @flag --no-init                                  do not send terminal initialization string
# @flag --local                                    run mosh-server locally without using ssh
# @option --experimental-remote-ip[local|remote|proxy]  select the method for discovering the remote IP address to use for mosh (default: "proxy")
# @flag --help                                     this message
# @flag --version                                  version and copyright information
# @arg host[`_module_os_hostname`]
# @arg args*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_predict() {
    cat <<-'EOF'
adaptive	local echo for slower links
always	use local echo even on fast links
never	never use local echo
experimental	aggressively echo even when incorrect
EOF
}

_choice_family() {
    cat <<-'EOF'
inet	use IPv4 only
inet6	use IPv6 only
auto	autodetect network type for single-family hosts only
all	try all network types
prefer-inet	use all network types, but try IPv4 first [default]
prefer-inet6	use all network types, but try IPv6 first
EOF
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