#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a <bind_address>         Bind the agent to the UNIX-domain socket bind_address.
# @flag -c                          Generate C-shell commands on stdout.
# @flag -D                          Foreground mode.
# @flag -d                          Debug mode.
# @option -E <fingerprint_hash>     Specifies the hash algorithm used when displaying key fingerprints.
# @flag -k                          Kill the current agent (given by the SSH_AGENT_PID environment variable).
# @option -P <allowed_providers>    Specify a pattern-list of acceptable paths for PKCS#11 provider and FIDO authenticator middleware shared libraries that may be used with the -S or -s options to ssh-add(1).
# @flag -s                          Generate Bourne shell commands on stdout.
# @option -t <life>                 Set a default value for the maximum lifetime of identities added to the agent.

command eval "$(argc --argc-eval "$0" "$@")"