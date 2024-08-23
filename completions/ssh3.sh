#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -do-pkce                      if set perform PKCE challenge-response with oidc
# @flag -forward-agent                if set, forwards ssh agent to be used with sshv2 connections on the remote host
# @option -forward-tcp <string>       if set, take a localport/remoteip@remoteport forwarding localhost@localport towards remoteip@remoteport
# @option -forward-udp <string>       if set, take a localport/remoteip@remoteport forwarding localhost@localport towards remoteip@remoteport
# @flag -insecure                     if set, skip server certificate verification
# @option -keylog <file>              Write QUIC TLS keys and master secret in the specified keylog file: only for debugging purpose
# @option -oidc-config <file>         OpenID Connect json config file containing the "client_id" and "client_secret" fields needed for most identity providers
# @option -privkey <file>             private key file
# @option -proxy-jump <string>        if set, performs a proxy jump using the specified remote host as proxy (requires server with version >= 0.1.5)
# @option -pubkey-for-agent <path>    if set, use an agent key whose public key matches the one in the specified path
# @option -use-oidc <string>          if set, force the use of OpenID Connect with the specified issuer url as parameter (it opens a browser window)
# @flag -use-password                 if set, do classical password authentication
# @flag -v                            if set, enable verbose mode
# @flag -version                      if set, displays the software version on standard output and exit

command eval "$(argc --argc-eval "$0" "$@")"