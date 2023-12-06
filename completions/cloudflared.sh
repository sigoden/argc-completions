#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --credentials-file <value>             Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>                    Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --region <value>                       Cloudflare Edge region to connect to.
# @option --edge-ip-version[4|6|auto] <value>    Cloudflare Edge IP address version to connect with.
# @option --edge-bind-address <value>            Bind to IP address for outgoing connections to Cloudflare Edge.
# @option --label <value>                        Use this option to give a meaningful label to a specific connector.
# @flag --management-diagnostics                 Enables the in-depth diagnostic routes to be made available over the management service (/debug/pprof, /metrics, etc.) (default: false) [$TUNNEL_MANAGEMENT_DIAGNOSTICS]
# @flag -f --overwrite-dns                       Overwrites existing DNS records with this hostname (default: false) [$TUNNEL_FORCE_PROVISIONING_DNS]
# @flag -h --help                                show help (default: false)
# @flag -v                                       Print the version (default: false)
# @flag -V                                       Print the version (default: false)
# @flag --version                                Print the version (default: false)

# {{ cloudflared update
# @cmd Update the agent if a new version exists
# @flag --beta                 specify if you wish to update to the latest beta version (default: false)
# @option --version <value>    specify a version you wish to upgrade or downgrade to
# @flag -h --help              show help (default: false)
update() {
    :;
}
# }} cloudflared update

# {{ cloudflared version
# @cmd Print the version
# @flag -h --help    show help (default: false)
version() {
    :;
}
# }} cloudflared version

# {{ cloudflared proxy-dns
# @cmd Run a DNS over HTTPS proxy server.
# @option --metrics <value>               Listen address for metrics reporting.
# @option --address <value>               Listen address for the DNS over HTTPS proxy server.
# @option --port <value>                  Listen on given port for the DNS over HTTPS proxy server.
# @option --upstream <value>              Upstream endpoint URL, you can specify multiple endpoints for redundancy.
# @option --bootstrap <value>             bootstrap endpoint URL, you can specify multiple endpoints for redundancy.
# @option --max-upstream-conns <value>    Maximum concurrent connections to upstream.
# @flag -h --help                         show help (default: false)
proxy-dns() {
    :;
}
# }} cloudflared proxy-dns

# {{ cloudflared tail
# @cmd Stream logs from a remote cloudflared
# @option --connector-id <value>            Access a specific cloudflared instance by connector id (for when a tunnel has multiple cloudflared's) [$TUNNEL_MANAGEMENT_CONNECTOR]
# @option --event[cloudflared|http|tcp|udp] <value>  Filter by specific Events otherwise, defaults to send all events  (accepts multiple inputs) [$TUNNEL_MANAGEMENT_FILTER_EVENTS]
# @option --level[debug|info|warn|error] <value>  Filter by specific log levels.
# @option --sample <value>                  Sample log events by percentage (0.0 .. 1.0).
# @option --token <value>                   Access token for a specific tunnel [$TUNNEL_MANAGEMENT_TOKEN]
# @option --output[default|json] <value>    Output format for the logs (default: "default") [$TUNNEL_MANAGEMENT_OUTPUT]
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level  (default: "info") [$TUNNEL_LOGLEVEL]
# @option --origincert <path>               Path to the certificate generated for your origin when you run cloudflared login.
# @flag -h --help                           show help (default: false)
tail_() {
    :;
}
# }} cloudflared tail

# {{ cloudflared service
# @cmd Manages the cloudflared system service
# @flag -h --help    show help (default: false)
service() {
    :;
}

# {{{ cloudflared service install
# @cmd Install cloudflared as a system service
# @flag --no-update-service    Disable auto-update of the cloudflared linux service, which restarts the server to upgrade for new versions.
# @flag -h --help              show help (default: false)
service::install() {
    :;
}
# }}} cloudflared service install

# {{{ cloudflared service uninstall
# @cmd Uninstall the cloudflared service
# @flag -h --help    show help (default: false)
service::uninstall() {
    :;
}
# }}} cloudflared service uninstall
# }} cloudflared service

# {{ cloudflared access
# @cmd access <subcommand>
# @alias forward
# @flag -h --help    show help (default: false)
access() {
    :;
}

# {{{ cloudflared access login
# @cmd login <url of access application>
# @flag -h --help    show help (default: false)
access::login() {
    :;
}
# }}} cloudflared access login

# {{{ cloudflared access curl
# @cmd curl [--allow-request, -ar] <url> [<curl args>...]
access::curl() {
    :;
}
# }}} cloudflared access curl

# {{{ cloudflared access token
# @cmd token -app=<url of access application>
# @option --app <value>
# @flag -h --help    show help (default: false)
# @arg url
access::token() {
    :;
}
# }}} cloudflared access token

# {{{ cloudflared access tcp
# @cmd
# @alias rdp,ssh,smb
# @option -T <value>                        specify the hostname of your application.
# @option --hostname <value>                specify the hostname of your application.
# @option --tunnel-host <value>             specify the hostname of your application.
# @option --destination <path>              specify the destination address of your SSH server.
# @option -L <value>                        specify the host:port to forward data to Cloudflare edge.
# @option --url <value>                     specify the host:port to forward data to Cloudflare edge.
# @option --listener <value>                specify the host:port to forward data to Cloudflare edge.
# @option -H --header <value>               specify additional headers you wish to send.
# @option --service-token-id <value>        specify an Access service token ID you wish to use.
# @option --id <value>                      specify an Access service token ID you wish to use.
# @option --service-token-secret <value>    specify an Access service token secret you wish to use.
# @option --secret <value>                  specify an Access service token secret you wish to use.
# @option --logfile <file>                  Save application log to this file for reporting issues.
# @option --log-directory <dir>             Save application log to this directory for reporting issues.
# @option --log-level[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @flag -h --help                           show help (default: false)
access::tcp() {
    :;
}
# }}} cloudflared access tcp

# {{{ cloudflared access ssh-config
# @cmd
# @option --hostname <value>    specify the hostname of your application.
# @flag --short-lived-cert      specify if you wish to generate short lived certs.
# @flag -h --help               show help (default: false)
access::ssh-config() {
    :;
}
# }}} cloudflared access ssh-config

# {{{ cloudflared access ssh-gen
# @cmd
# @option --hostname <value>    specify the hostname of your application.
# @flag -h --help               show help (default: false)
access::ssh-gen() {
    :;
}
# }}} cloudflared access ssh-gen
# }} cloudflared access

# {{ cloudflared tunnel
# @cmd Use Cloudflare Tunnel to expose private services to the Internet or to Cloudflare connected private users.
# @option --config <file>                        Specifies a config file in YAML format.
# @option --origincert <path>                    Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>              Autoupdate frequency.
# @flag --no-autoupdate                          Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>                      Listen address for metrics reporting.
# @option --pidfile <file>                       Write the application's PID to this file after first successful connection.
# @flag --hello-world                            Run Hello World Server (default: false) [$TUNNEL_HELLO_WORLD]
# @flag --socks5                                 specify if this tunnel is running as a SOCK5 Server This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-connect-timeout                  HTTP proxy timeout for establishing a new connection This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-tls-timeout                      HTTP proxy timeout for completing a TLS handshake This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-tcp-keepalive                    HTTP proxy TCP keepalive duration This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-no-happy-eyeballs                HTTP proxy should disable "happy eyeballs" for IPv4/v6 fallback This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-keepalive-connections            HTTP proxy maximum keepalive connection pool size This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-keepalive-timeout                HTTP proxy timeout for closing an idle connection This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @option --proxy-connection-timeout <value>     DEPRECATED.
# @option --proxy-expect-continue-timeout <value>  DEPRECATED.
# @flag --http-host-header                       Sets the HTTP Host header for the local webserver.
# @flag --origin-server-name                     Hostname on the origin server certificate.
# @option --unix-socket <path>                   Path to unix socket to use instead of [$TUNNEL_UNIX_SOCKET]
# @flag --origin-ca-pool                         Path to the CA for the certificate of your origin.
# @flag --no-tls-verify                          Disables TLS verification of the certificate presented by your origin.
# @flag --no-chunked-encoding                    Disables chunked transfer encoding; useful if you are running a WSGI server.
# @flag --http2-origin                           Enables HTTP/2 origin servers.
# @flag --bastion                                Runs as jump host (default: false) [$TUNNEL_BASTION]
# @option --proxy-address <value>                Listen address for the proxy.
# @option --proxy-port <value>                   Listen port for the proxy.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>                       Save application log to this file for reporting issues.
# @option --log-directory <dir>                  Save application log to this directory for reporting issues.
# @option --trace-output <file>                  Name of trace output file, generated when cloudflared stops.
# @flag --proxy-dns                              Run a DNS over HTTPS proxy server.
# @option --proxy-dns-port <value>               Listen on given port for the DNS over HTTPS proxy server.
# @option --proxy-dns-address <value>            Listen address for the DNS over HTTPS proxy server.
# @option --proxy-dns-upstream <value>           Upstream endpoint URL, you can specify multiple endpoints for redundancy.
# @option --proxy-dns-max-upstream-conns <value>  Maximum concurrent connections to upstream.
# @option --proxy-dns-bootstrap <value>          bootstrap endpoint URL, you can specify multiple endpoints for redundancy.
# @option --credentials-file <value>             Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>                    Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --region <value>                       Cloudflare Edge region to connect to.
# @option --edge-ip-version[4|6|auto] <value>    Cloudflare Edge IP address version to connect with.
# @option --edge-bind-address <value>            Bind to IP address for outgoing connections to Cloudflare Edge.
# @option --hostname <value>                     Set a hostname on a Cloudflare zone to route traffic through this tunnel.
# @option --lb-pool <value>                      The name of a (new/existing) load balancing pool to add this origin to.
# @option --metrics-update-freq <value>          Frequency to update tunnel metrics (default: 5s) [$TUNNEL_METRICS_UPDATE_FREQ]
# @option --tag <KEY=VALUE>                      Custom tags used to identify this tunnel, in format KEY=VALUE.
# @option --retries <value>                      Maximum number of retries for connection/protocol errors.
# @option --label <value>                        Use this option to give a meaningful label to a specific connector.
# @option --grace-period <value>                 When cloudflared receives SIGINT/SIGTERM it will stop accepting new requests, wait for in-progress requests to terminate, then shutdown.
# @option --compression-quality <value>          (beta) Use cross-stream compression instead HTTP compression.
# @option -n --name <value>                      Stable name to identify the tunnel.
# @flag --management-diagnostics                 Enables the in-depth diagnostic routes to be made available over the management service (/debug/pprof, /metrics, etc.) (default: false) [$TUNNEL_MANAGEMENT_DIAGNOSTICS]
# @flag -f --overwrite-dns                       Overwrites existing DNS records with this hostname (default: false) [$TUNNEL_FORCE_PROVISIONING_DNS]
# @flag -h --help                                show help (default: false)
tunnel() {
    :;
}

# {{{ cloudflared tunnel login
# @cmd Generate a configuration file with your login details
# @flag -h --help    show help (default: false)
tunnel::login() {
    :;
}
# }}} cloudflared tunnel login

# {{{ cloudflared tunnel create
# @cmd Create a new tunnel with given name
# @option --config <file>                       Specifies a config file in YAML format.
# @option --origincert <path>                   Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>             Autoupdate frequency.
# @flag --no-autoupdate                         Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>                     Listen address for metrics reporting.
# @option --pidfile <file>                      Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>                      Save application log to this file for reporting issues.
# @option --log-directory <dir>                 Save application log to this directory for reporting issues.
# @option --trace-output <file>                 Name of trace output file, generated when cloudflared stops.
# @option -o --output[default|json] <FORMAT>    Render output using given FORMAT.
# @option --credentials-file <value>            Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>                   Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option -s --secret <value>                   Base64 encoded secret to set for the tunnel.
# @flag -h --help                               show help (default: false)
# @arg name
tunnel::create() {
    :;
}
# }}} cloudflared tunnel create

# {{{ cloudflared tunnel route
# @cmd Define which traffic routed from Cloudflare edge to this tunnel: requests to a DNS hostname, to a Cloudflare Load Balancer, or traffic originating from Cloudflare WARP clients
# @flag -h --help    show help (default: false)
tunnel::route() {
    :;
}

# {{{{ cloudflared tunnel route dns
# @cmd HostnameRoute a hostname by creating a DNS CNAME record to a tunnel
# @flag -f --overwrite-dns    Overwrites existing DNS records with this hostname (default: false) [$TUNNEL_FORCE_PROVISIONING_DNS]
# @flag -h --help             show help (default: false)
# @arg tunnel[`_choice_tunnel`]
# @arg hostname
tunnel::route::dns() {
    :;
}
# }}}} cloudflared tunnel route dns

# {{{{ cloudflared tunnel route lb
# @cmd Use this tunnel as a load balancer origin, creating pool and load balancer if necessary
# @flag -h --help    show help (default: false)
# @arg tunnel[`_choice_tunnel`]
# @arg hostname
# @arg lb-pool-name
tunnel::route::lb() {
    :;
}
# }}}} cloudflared tunnel route lb

# {{{{ cloudflared tunnel route ip
# @cmd Configure and query Cloudflare WARP routing to private IP networks made available through Cloudflare Tunnels.
# @flag -h --help    show help (default: false)
tunnel::route::ip() {
    :;
}

# {{{{{ cloudflared tunnel route ip add
# @cmd Add a new network to the routing table reachable via a Tunnel
# @option --vnet <value>    The ID or name of the virtual network to which the route is associated to.
# @option --vn <value>      The ID or name of the virtual network to which the route is associated to.
# @flag -h --help           show help (default: false)
# @arg cidr[`_choice_cidr`]
# @arg tunnel[`_choice_tunnel`]
# @arg comment <COMMENT?>
tunnel::route::ip::add() {
    :;
}
# }}}}} cloudflared tunnel route ip add

# {{{{{ cloudflared tunnel route ip show
# @cmd Show the routing table
# @alias list
# @flag --filter-is-deleted                        If false (default), only show non-deleted routes.
# @option --filter-tunnel-id <value>               Show only routes with the given tunnel ID.
# @option --filter-network-is-subset-of <value>    Show only routes whose network is a subset of the given network.
# @option --nsub <value>                           Show only routes whose network is a subset of the given network.
# @option --filter-network-is-superset-of <value>  Show only routes whose network is a superset of the given network.
# @option --nsup <value>                           Show only routes whose network is a superset of the given network.
# @option --filter-comment-is <value>              Show only routes with this comment.
# @option --filter-vnet-id <value>                 Show only routes that are attached to the given virtual network ID.
# @option -o --output[default|json] <FORMAT>       Render output using given FORMAT.
# @flag -h --help                                  show help (default: false)
tunnel::route::ip::show() {
    :;
}
# }}}}} cloudflared tunnel route ip show

# {{{{{ cloudflared tunnel route ip delete
# @cmd Delete a row from your organization's private routing table
# @option --vnet <value>    The ID or name of the virtual network to which the route is associated to.
# @option --vn <value>      The ID or name of the virtual network to which the route is associated to.
# @flag -h --help           show help (default: false)
# @arg route-id-or-cidr[`_choice_cidr`] <Route ID or CIDR>
tunnel::route::ip::delete() {
    :;
}
# }}}}} cloudflared tunnel route ip delete

# {{{{{ cloudflared tunnel route ip get
# @cmd Check which row of the routing table matches a given IP.
# @option --vnet <value>    The ID or name of the virtual network to which the route is associated to.
# @option --vn <value>      The ID or name of the virtual network to which the route is associated to.
# @flag -h --help           show help (default: false)
# @arg ip
tunnel::route::ip::get() {
    :;
}
# }}}}} cloudflared tunnel route ip get
# }}}} cloudflared tunnel route ip
# }}} cloudflared tunnel route

# {{{ cloudflared tunnel vnet
# @cmd Configure and query virtual networks to manage private IP routes with overlapping IPs.
# @flag -h --help    show help (default: false)
tunnel::vnet() {
    :;
}

# {{{{ cloudflared tunnel vnet add
# @cmd Add a new virtual network to which IP routes can be attached
# @flag -d --default    The virtual network becomes the default one for the account.
# @flag -h --help       show help (default: false)
# @arg name
# @arg comment <"comment">
tunnel::vnet::add() {
    :;
}
# }}}} cloudflared tunnel vnet add

# {{{{ cloudflared tunnel vnet list
# @cmd Lists the virtual networks
# @option --id                                  List virtual networks with the given ID
# @option --name                                List virtual networks with the given NAME
# @flag --is-default                            If true, lists the virtual network that is the default one.
# @flag --show-deleted                          If false (default), only show non-deleted virtual networks.
# @option -o --output[default|json] <FORMAT>    Render output using given FORMAT.
# @flag -h --help                               show help (default: false)
tunnel::vnet::list() {
    :;
}
# }}}} cloudflared tunnel vnet list

# {{{{ cloudflared tunnel vnet delete
# @cmd Delete a virtual network
# @flag -f --force    Force the deletion of the virtual network even if it is being relied upon by other resources.
# @flag -h --help     show help (default: false)
# @arg virtual_network[`_choice_vnet`]
tunnel::vnet::delete() {
    :;
}
# }}}} cloudflared tunnel vnet delete

# {{{{ cloudflared tunnel vnet update
# @cmd Update a virtual network
# @option -n --name <value>       The new name for the virtual network.
# @option -c --comment <value>    A new comment describing the purpose of the virtual network.
# @flag -d --default              The virtual network becomes the default one for the account.
# @flag -h --help                 show help (default: false)
# @arg virtual_network[`_choice_vnet`]
tunnel::vnet::update() {
    :;
}
# }}}} cloudflared tunnel vnet update
# }}} cloudflared tunnel vnet

# {{{ cloudflared tunnel run
# @cmd Proxy a local web server by running the given tunnel
# @option --config <file>                       Specifies a config file in YAML format.
# @option --origincert <path>                   Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>             Autoupdate frequency.
# @flag --no-autoupdate                         Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>                     Listen address for metrics reporting.
# @option --pidfile <file>                      Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>                      Save application log to this file for reporting issues.
# @option --log-directory <dir>                 Save application log to this directory for reporting issues.
# @option --trace-output <file>                 Name of trace output file, generated when cloudflared stops.
# @option --credentials-file <value>            Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>                   Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --credentials-contents <file>         Contents of the tunnel credentials JSON file to use.
# @flag --post-quantum                          When given creates an experimental post-quantum secure tunnel (default: false) [$TUNNEL_POST_QUANTUM]
# @flag --pq                                    When given creates an experimental post-quantum secure tunnel (default: false) [$TUNNEL_POST_QUANTUM]
# @option -F --features <value>                 Opt into various features that are still being developed or tested.
# @option --token <value>                       The Tunnel token.
# @option --icmpv4-src <value>                  Source address to send/receive ICMPv4 messages.
# @option --icmpv6-src <value>                  Source address and the interface name to send/receive ICMPv6 messages.
# @flag --hello-world                           Run Hello World Server (default: false) [$TUNNEL_HELLO_WORLD]
# @flag --socks5                                specify if this tunnel is running as a SOCK5 Server This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-connect-timeout                 HTTP proxy timeout for establishing a new connection This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-tls-timeout                     HTTP proxy timeout for completing a TLS handshake This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-tcp-keepalive                   HTTP proxy TCP keepalive duration This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-no-happy-eyeballs               HTTP proxy should disable "happy eyeballs" for IPv4/v6 fallback This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-keepalive-connections           HTTP proxy maximum keepalive connection pool size This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @flag --proxy-keepalive-timeout               HTTP proxy timeout for closing an idle connection This flag only takes effect if you define your origin with --url and if you do not use ingress rules.
# @option --proxy-connection-timeout <value>    DEPRECATED.
# @option --proxy-expect-continue-timeout <value>  DEPRECATED.
# @flag --http-host-header                      Sets the HTTP Host header for the local webserver.
# @flag --origin-server-name                    Hostname on the origin server certificate.
# @option --unix-socket <path>                  Path to unix socket to use instead of [$TUNNEL_UNIX_SOCKET]
# @flag --origin-ca-pool                        Path to the CA for the certificate of your origin.
# @flag --no-tls-verify                         Disables TLS verification of the certificate presented by your origin.
# @flag --no-chunked-encoding                   Disables chunked transfer encoding; useful if you are running a WSGI server.
# @flag --http2-origin                          Enables HTTP/2 origin servers.
# @flag --bastion                               Runs as jump host (default: false) [$TUNNEL_BASTION]
# @option --proxy-address <value>               Listen address for the proxy.
# @option --proxy-port <value>                  Listen port for the proxy.
# @flag -h --help                               show help (default: false)
# @arg tunnel[`_choice_tunnel`]
tunnel::run() {
    :;
}
# }}} cloudflared tunnel run

# {{{ cloudflared tunnel list
# @cmd List existing tunnels
# @option --config <file>                       Specifies a config file in YAML format.
# @option --origincert <path>                   Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>             Autoupdate frequency.
# @flag --no-autoupdate                         Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>                     Listen address for metrics reporting.
# @option --pidfile <file>                      Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>                      Save application log to this file for reporting issues.
# @option --log-directory <dir>                 Save application log to this directory for reporting issues.
# @option --trace-output <file>                 Name of trace output file, generated when cloudflared stops.
# @option -o --output[default|json] <FORMAT>    Render output using given FORMAT.
# @flag -d --show-deleted                       Include deleted tunnels in the list (default: false)
# @option -n --name                             List tunnels with the given NAME
# @option --name-prefix <NAME>                  List tunnels that start with the give NAME prefix
# @option --np <NAME>                           List tunnels that start with the give NAME prefix
# @option --exclude-name-prefix <NAME>          List tunnels whose NAME does not start with the given prefix
# @option --enp <NAME>                          List tunnels whose NAME does not start with the given prefix
# @option -w --when <TIME>                      List tunnels that are active at the given TIME in RFC3339 format
# @option -i --id                               List tunnel by ID
# @flag --show-recently-disconnected            Include connections that have recently disconnected in the list (default: false)
# @flag --rd                                    Include connections that have recently disconnected in the list (default: false)
# @option --sort-by[name|id|createdAt|deletedAt|numConnections] <value>  Sorts the list of tunnels by the given field.
# @flag --invert-sort                           Inverts the sort order of the tunnel list.
# @flag -h --help                               show help (default: false)
tunnel::list() {
    :;
}
# }}} cloudflared tunnel list

# {{{ cloudflared tunnel info
# @cmd List details about the active connectors for a tunnel
# @option --config <file>                       Specifies a config file in YAML format.
# @option --origincert <path>                   Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>             Autoupdate frequency.
# @flag --no-autoupdate                         Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>                     Listen address for metrics reporting.
# @option --pidfile <file>                      Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>                      Save application log to this file for reporting issues.
# @option --log-directory <dir>                 Save application log to this directory for reporting issues.
# @option --trace-output <file>                 Name of trace output file, generated when cloudflared stops.
# @option -o --output[default|json] <FORMAT>    Render output using given FORMAT.
# @flag --show-recently-disconnected            Include connections that have recently disconnected in the list (default: false)
# @flag --rd                                    Include connections that have recently disconnected in the list (default: false)
# @option --sort-by[id|startedAt|numConnections|version] <value>  Sorts the list of connections of a tunnel by the given field.
# @flag --invert-sort                           Inverts the sort order of the tunnel info.
# @flag -h --help                               show help (default: false)
# @arg tunnel[`_choice_tunnel`]
tunnel::info() {
    :;
}
# }}} cloudflared tunnel info

# {{{ cloudflared tunnel delete
# @cmd Delete existing tunnel by UUID or name
# @option --config <file>               Specifies a config file in YAML format.
# @option --origincert <path>           Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>     Autoupdate frequency.
# @flag --no-autoupdate                 Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>             Listen address for metrics reporting.
# @option --pidfile <file>              Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>              Save application log to this file for reporting issues.
# @option --log-directory <dir>         Save application log to this directory for reporting issues.
# @option --trace-output <file>         Name of trace output file, generated when cloudflared stops.
# @option --credentials-file <value>    Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>           Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @flag -f --force                      Deletes a tunnel even if tunnel is connected and it has dependencies associated to it.
# @flag -h --help                       show help (default: false)
# @arg tunnel[`_choice_tunnel`]
tunnel::delete() {
    :;
}
# }}} cloudflared tunnel delete

# {{{ cloudflared tunnel cleanup
# @cmd Cleanup tunnel connections
# @option --config <file>              Specifies a config file in YAML format.
# @option --origincert <path>          Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>    Autoupdate frequency.
# @flag --no-autoupdate                Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>            Listen address for metrics reporting.
# @option --pidfile <file>             Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>             Save application log to this file for reporting issues.
# @option --log-directory <dir>        Save application log to this directory for reporting issues.
# @option --trace-output <file>        Name of trace output file, generated when cloudflared stops.
# @option -c --connector-id <value>    Constraints the cleanup to stop the connections of a single Connector (by its ID).
# @flag -h --help                      show help (default: false)
# @arg tunnel[`_choice_tunnel`]
tunnel::cleanup() {
    :;
}
# }}} cloudflared tunnel cleanup

# {{{ cloudflared tunnel token
# @cmd Fetch the credentials token for an existing tunnel (by name or UUID) that allows to run it
# @option --config <file>               Specifies a config file in YAML format.
# @option --origincert <path>           Path to the certificate generated for your origin when you run cloudflared login.
# @option --autoupdate-freq <value>     Autoupdate frequency.
# @flag --no-autoupdate                 Disable periodic check for updates, restarting the server with the new version.
# @option --metrics <value>             Listen address for metrics reporting.
# @option --pidfile <file>              Write the application's PID to this file after first successful connection.
# @option --loglevel[debug|info|warn|error|fatal] <value>  Application logging level .
# @option --transport-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --proto-loglevel[debug|info|warn|error|fatal] <value>  Transport logging level(previously called protocol logging level)  (default: "info") [$TUNNEL_PROTO_LOGLEVEL, $TUNNEL_TRANSPORT_LOGLEVEL]
# @option --logfile <file>              Save application log to this file for reporting issues.
# @option --log-directory <dir>         Save application log to this directory for reporting issues.
# @option --trace-output <file>         Name of trace output file, generated when cloudflared stops.
# @option --credentials-file <value>    Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @option --cred-file <value>           Filepath at which to read/write the tunnel credentials [$TUNNEL_CRED_FILE]
# @flag -h --help                       show help (default: false)
# @arg tunnel[`_choice_tunnel`]
tunnel::token() {
    :;
}
# }}} cloudflared tunnel token
# }} cloudflared tunnel

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_tunnel() {
    cloudflared tunnel list | _argc_util_transform_table 'NAME' ''
}

_choice_cidr() {
    cloudflared tunnel ip show | _argc_util_transform_table 'NETWORK' ''
}

_choice_vnet() {
    cloudflared tunnel vnet list | _argc_util_transform_table 'NAME' ''
}

command eval "$(argc --argc-eval "$0" "$@")"