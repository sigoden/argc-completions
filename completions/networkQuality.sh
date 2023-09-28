#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C <configuration> <URL/path>    Use custom configuration URL or path (with scheme file://).
# @option -f <option[,<option>,...]>       Force usage of a specific protocol selection:
# @option -I[`_module_os_network_interface`] <interface>  Bind test to interface (e.g., en0, pdp_ip0,...)
# @option -r <host>                        Connect to host or IP, overriding DNS for initial config request
# @option -S <port>                        Create a networkQuality server-instance running locally on the specified port.
# @flag -c                                 Produce computer-readable output.
# @flag -h                                 Show help
# @flag -k                                 Disable verification of the server identity via TLS.
# @flag -p                                 Use iCloud Private Relay.
# @flag -s                                 Run tests sequentially instead of parallel upload/download.
# @flag -v                                 Verbose output.

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"