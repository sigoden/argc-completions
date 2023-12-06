#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ minikube start
# @cmd Starts a local Kubernetes cluster
# @option --addons*,[`_choice_addon`] <value>    Enable addons.
# @option --apiserver-ips* <value>               A set of apiserver IP Addresses which are used in the generated certificate for kubernetes.
# @option --apiserver-name <minikubeCA>          The authoritative apiserver hostname for apiserver certificates and connectivity.
# @option --apiserver-names* <value>             A set of apiserver names which are used in the generated certificate for kubernetes.
# @option --apiserver-port <8443>                The apiserver listening port
# @option --auto-pause-interval <1m0s>           Duration of inactivity before the minikube VM is paused (default 1m0s).
# @flag --auto-update-drivers                    If set, automatically updates drivers to the latest version.
# @option --base-image[`_module_oci_docker_image`] <image>  The base image to use for docker/podman drivers.
# @option --binary-mirror <value>                Location to fetch kubectl, kubelet, & kubeadm binaries from.
# @flag --cache-images                           If true, cache docker images for the current bootstrapper and load them into the machine.
# @option --cert-expiration <26280h0m0s>         Duration until minikube certificate expiration, defaults to three years (26280h).
# @option --cni[`_choice_cni`] <value>           CNI plug-in to use.
# @option --container-runtime[docker|cri-o|containerd] <value>  The container runtime to be used.
# @option --cpus <2>                             Number of CPUs allocated to Kubernetes.
# @option --cri-socket <file>                    The cri socket path to be used.
# @flag --delete-on-failure                      If set, delete the current cluster if start fails and try again.
# @flag --disable-driver-mounts                  Disables the filesystem mounts provided by the hypervisors
# @flag --disable-metrics                        If set, disables metrics reporting (CPU and memory usage), this can improve CPU usage.
# @flag --disable-optimizations                  If set, disables optimizations that are set for local Kubernetes.
# @option --disk-size <20000mb>                  Disk size allocated to the minikube VM (format: <number>[<unit>], where unit = b, k, m or g).
# @option --dns-domain <cluster.local>           The cluster dns domain name used in the Kubernetes cluster
# @flag --dns-proxy                              Enable proxy for NAT DNS requests (virtualbox driver only)
# @option --docker-env* <value>                  Environment variables to pass to the Docker daemon.
# @option --docker-opt* <value>                  Specify arbitrary flags to pass to the Docker daemon.
# @flag --download-only                          If true, only download and cache files for later use - don't install or start anything.
# @option --driver[virtualbox|vmwarefusion|kvm2|qemu2|qemu|vmware|none|docker|podman|ssh|auto-detect] <value>  Driver is one of: virtualbox, kvm2, qemu2, qemu, vmware, none, docker, podman, ssh (defaults to auto-detect)
# @flag --dry-run                                dry-run mode.
# @flag --embed-certs                            if true, will embed the certs in kubeconfig.
# @flag --enable-default-cni                     DEPRECATED: Replaced by --cni=bridge
# @option --extra-config[ignore-preflight-errors|dry-run|kubeconfig|kubeconfig-dir|node-name|cri-socket|experimental-upload-certs|certificate-key|rootfs|skip-phases|pod-network-cidr] <value>  A set of key=value pairs that describe configuration that may be passed to different components.
# @option --extra-disks <0>                      Number of extra disks created and attached to the minikube VM (currently only implemented for hyperkit, kvm2, and qemu2 drivers)
# @option --feature-gates <value>                A set of key=value pairs that describe feature gates for alpha/experimental features.
# @flag --force                                  Force minikube to perform possibly dangerous operations
# @flag --force-systemd                          If set, force the container runtime to use systemd as cgroup manager.
# @option -g --gpus <value>                      Allow pods to use your NVIDIA GPUs.
# @flag --host-dns-resolver                      Enable host resolver for NAT DNS requests (virtualbox driver only)
# @option --host-only-cidr <192.168.59.1/24>     The CIDR to be used for the minikube VM (virtualbox driver only)
# @option --host-only-nic-type[Am79C970A|Am79C973|82540EM|82543GC|82545EM|virtio] <virtio>  NIC Type used for host only network.
# @option --hyperkit-vpnkit-sock[`_choice_vnpkit_sock`] <value>  Location of the VPNKit socket used for networking.
# @option --hyperkit-vsock-ports* <value>        List of guest VSock ports that should be exposed as sockets on the host (hyperkit driver only)
# @option --hyperv-external-adapter <value>      External Adapter on which external switch will be created if no external switch is found.
# @flag --hyperv-use-external-switch             Whether to use external switch over Default Switch if virtual switch not explicitly specified.
# @option --hyperv-virtual-switch <value>        The hyperv virtual switch name.
# @option --image-mirror-country <value>         Country code of the image mirror to be used.
# @option --image-repository <value>             Alternative image repository to pull docker images from.
# @option --insecure-registry* <value>           Insecure Docker registries to pass to the Docker daemon.
# @flag --install-addons                         If set, install addons.
# @flag --interactive                            Allow user prompts for more information
# @option --iso-url*, <url>                      Locations to fetch the minikube ISO from.
# @flag --keep-context                           This will keep the existing kubectl context and will create a minikube context.
# @option --kubernetes-version <value>           The Kubernetes version that the minikube VM will use (ex: v1.2.3, 'stable' for v1.28.3, 'latest' for v1.28.3).
# @flag --kvm-gpu                                Enable experimental NVIDIA GPU support in minikube
# @flag --kvm-hidden                             Hide the hypervisor signature from the guest in minikube (kvm2 driver only)
# @option --kvm-network <default>                The KVM default network name.
# @option --kvm-numa-count <1>                   Simulate numa node count in minikube, supported numa node count range is 1-8 (kvm2 driver only)
# @option --kvm-qemu-uri <qemu:///system>        The KVM QEMU connection URI.
# @option --listen-address <value>               IP Address to use to expose ports (docker and podman driver only)
# @option --memory <value>                       Amount of RAM to allocate to Kubernetes (format: <number>[<unit>], where unit = b, k, m or g).
# @flag --mount                                  This will start the mount daemon and automatically mount files into minikube.
# @option --mount-9p-version <9p2000.L>          Specify the 9p version that the mount should use
# @option --mount-gid <docker>                   Default group id used for the mount
# @option --mount-ip <value>                     Specify the ip that the mount should be setup on
# @option --mount-msize <262144>                 The number of bytes to use for 9p packet payload
# @option --mount-options* <value>               Additional mount options, such as cache=fscache
# @option --mount-port <0>                       Specify the port that the mount should be setup on, where 0 means any free port.
# @option --mount-string[`_choice_mount_string`] </home/sigo:/minikube-host>  The argument to pass the minikube mount command on start.
# @option --mount-type <9p>                      Specify the mount filesystem type (supported types: 9p)
# @option --mount-uid <docker>                   Default user id used for the mount
# @option --namespace[`_choice_namespace`] <default>  The named space to activate after start
# @option --nat-nic-type[Am79C970A|Am79C973|82540EM|82543GC|82545EM|virtio] <virtio>  NIC Type used for nat network.
# @flag --native-ssh                             Use native Golang SSH client (default true).
# @option --network <value>                      network to run minikube with.
# @option --network-plugin <value>               DEPRECATED: Replaced by --cni
# @option --nfs-share* <value>                   Local folders to share with Guest via NFS mounts (hyperkit driver only)
# @option --nfs-shares-root </nfsshares>         Where to root the NFS Shares, defaults to /nfsshares (hyperkit driver only)
# @flag --no-kubernetes                          If set, minikube VM/container will start without starting or configuring Kubernetes.
# @flag --no-vtx-check                           Disable checking for the availability of hardware virtualization before the vm is started (virtualbox driver only)
# @option -n --nodes <1>                         The number of nodes to spin up.
# @option -o --output[text|json] <text>          Format to print stdout in.
# @option --ports* <value>                       List of ports that should be exposed (docker and podman driver only)
# @flag --preload                                If set, download tarball of preloaded images if available to improve start time.
# @option --qemu-firmware-path <value>           Path to the qemu firmware file.
# @option --registry-mirror* <value>             Registry mirrors to pass to the Docker daemon
# @option --service-cluster-ip-range <10.96.0.0/12>  The CIDR to be used for service cluster IPs.
# @option --socket-vmnet-client-path <value>     Path to the socket vmnet client binary (QEMU driver only)
# @option --socket-vmnet-path <value>            Path to socket vmnet binary (QEMU driver only)
# @option --ssh-ip-address <value>               IP address (ssh driver only)
# @option --ssh-key <file>                       SSH key (ssh driver only)
# @option --ssh-port <22>                        SSH port (ssh driver only)
# @option --ssh-user <root>                      SSH user (ssh driver only)
# @option --static-ip <value>                    Set a static IP for the minikube cluster, the IP must be: private, IPv4, and the last octet must be between 2 and 254, for example 192.168.200.200 (Docker and Podman drivers only)
# @option --subnet <value>                       Subnet to be used on kic cluster.
# @option --trace <value>                        Send trace events.
# @option --uuid <value>                         Provide VM UUID to restore MAC address (hyperkit driver only)
# @flag --vm                                     Filter to use only VM Drivers
# @option --vm-driver <value>                    DEPRECATED, use `driver` instead.
# @option --wait <apiserver|system_pods>         comma separated list of Kubernetes components to verify and wait for after starting a cluster.
# @option --wait-timeout <6m0s>                  max time to wait per Kubernetes or host to be healthy.
start() {
    :;
}
# }} minikube start

# {{ minikube status
# @cmd Gets the status of a local Kubernetes cluster
# @option -f --format <template>               type: Control Plane host: {{.Host}} kubelet: {{.Kubelet}} apiserver: {{.APIServer}} kubeconfig: {{.Kubeconfig}} {{- if .TimeToStop }} timeToStop: {{.TimeToStop}} {{- end }} {{- if .DockerEnv }} docker-env: {{.DockerEnv}} {{- end }} {{- if .PodManEnv }} podman-env: {{.PodManEnv}} {{- end }}  ': Go template format string for the status output.
# @option -l --layout <nodes>                  output layout (EXPERIMENTAL, JSON only): 'nodes' or 'cluster'
# @option -n --node[`_choice_node`] <value>    The node to check status for.
# @option -o --output[text|json] <text>        minikube status --output OUTPUT.
# @option -w --watch <1s>                      Continuously listing/getting the status with optional interval duration.
status() {
    :;
}
# }} minikube status

# {{ minikube stop
# @cmd Stops a running local Kubernetes cluster
# @flag --all                              Set flag to stop all profiles (clusters)
# @flag --cancel-scheduled                 cancel any existing scheduled stop requests
# @flag --keep-context-active              keep the kube-context active after cluster is stopped.
# @option -o --output[text|json] <text>    Format to print stdout in.
# @option --schedule <0s>                  Set flag to stop cluster after a set amount of time (e.g. --schedule=5m)
stop() {
    :;
}
# }} minikube stop

# {{ minikube delete
# @cmd Deletes a local Kubernetes cluster
# @flag --all                              Set flag to delete all profiles
# @option -o --output[text|json] <text>    Format to print stdout in.
# @flag --purge                            Set this flag to delete the '.minikube' folder from your user directory.
delete() {
    :;
}
# }} minikube delete

# {{ minikube dashboard
# @cmd Access the Kubernetes dashboard running within the minikube cluster
# @option --port <0>    Exposed port of the proxyfied dashboard.
# @flag --url           Display dashboard URL instead of opening a browser
dashboard() {
    :;
}
# }} minikube dashboard

# {{ minikube pause
# @cmd pause Kubernetes
# @flag -A --all-namespaces                If set, pause all namespaces
# @option -n --namespaces[kube-system|kubernetes-dashboard|storage-gluster|istio-operator]  namespaces to pause
# @option -o --output[text|json] <text>    Format to print stdout in.
pause() {
    :;
}
# }} minikube pause

# {{ minikube unpause
# @cmd unpause Kubernetes
# @flag -A --all-namespaces                If set, unpause all namespaces
# @option -n --namespaces[kube-system|kubernetes-dashboard|storage-gluster|istio-operator]  namespaces to unpause
# @option -o --output[text|json] <text>    Format to print stdout in.
unpause() {
    :;
}
# }} minikube unpause

# {{ minikube docker-env
# @cmd Provides instructions to point your terminal's docker-cli to the Docker Engine inside minikube.
# @flag --no-proxy                          Add machine IP to NO_PROXY environment variable
# @option -o --output[text|json] <value>    One of 'text', 'yaml' or 'json'.
# @option --shell[fish|cmd|powershell|tcsh|bash|zsh] <value>  Force environment to be configured for a specified shell:, default is auto-detect
# @flag --ssh-add                           Add SSH identity key to SSH authentication agent
# @flag --ssh-host                          Use SSH connection instead of HTTPS (port 2376)
# @flag -u --unset                          Unset variables instead of setting them
docker-env() {
    :;
}
# }} minikube docker-env

# {{ minikube podman-env
# @cmd Configure environment to use minikube's Podman service
# @option --shell[fish|cmd|powershell|tcsh|bash|zsh] <value>  Force environment to be configured for a specified shell:, default is auto-detect
# @flag -u --unset    Unset variables instead of setting them
podman-env() {
    :;
}
# }} minikube podman-env

# {{ minikube cache
# @cmd Manage cache for images
cache() {
    :;
}

# {{{ minikube cache add
# @cmd Add an image to local cache.
# @flag --all    Add image to cache for all running minikube clusters
cache::add() {
    :;
}
# }}} minikube cache add

# {{{ minikube cache delete
# @cmd Delete an image from the local cache.
cache::delete() {
    :;
}
# }}} minikube cache delete

# {{{ minikube cache list
# @cmd List all available images from the local cache.
# @option --format <template>    ': Go template format string for the cache list output.
cache::list() {
    :;
}
# }}} minikube cache list

# {{{ minikube cache reload
# @cmd reload cached images.
cache::reload() {
    :;
}
# }}} minikube cache reload
# }} minikube cache

# {{ minikube image
# @cmd Manage images
image() {
    :;
}

# {{{ minikube image build
# @cmd Build a container image in minikube
# @flag --all                                  Build image on all nodes.
# @option --build-env* <value>                 Environment variables to pass to the build.
# @option --build-opt* <value>                 Specify arbitrary flags to pass to the build.
# @option -f --file <file>                     Path to the Dockerfile to use (optional)
# @option -n --node[`_choice_node`] <value>    The node to build on.
# @flag --push                                 Push the new image (requires tag)
# @option -t --tag <value>                     Tag to apply to the new image (optional)
# @arg path-url <PATH|URL|->
image::build() {
    :;
}
# }}} minikube image build

# {{{ minikube image load
# @cmd Load an image into minikube
# @flag --daemon       Cache image from docker daemon
# @flag --overwrite    Overwrite image even if same image:tag name exists
# @flag --pull         Pull the remote image (no caching)
# @flag --remote       Cache image from remote registry
# @arg image[`_choice_load_image`]
image::load() {
    :;
}
# }}} minikube image load

# {{{ minikube image ls
# @cmd List images
# @option --format <short>    Format output.
image::ls() {
    :;
}
# }}} minikube image ls

# {{{ minikube image pull
# @cmd Pull images
image::pull() {
    :;
}
# }}} minikube image pull

# {{{ minikube image push
# @cmd Push images
image::push() {
    :;
}
# }}} minikube image push

# {{{ minikube image rm
# @cmd Remove one or more images
# @arg image*[`_choice_image`]
image::rm() {
    :;
}
# }}} minikube image rm

# {{{ minikube image save
# @cmd Save a image from minikube
# @flag --daemon    Cache image to docker daemon
# @flag --remote    Cache image to remote registry
# @arg image[`_choice_image`]
# @arg archive <path>
image::save() {
    :;
}
# }}} minikube image save

# {{{ minikube image tag
# @cmd Tag images
image::tag() {
    :;
}
# }}} minikube image tag
# }} minikube image

# {{ minikube addons
# @cmd Enable or disable a minikube addon
addons() {
    :;
}

# {{{ minikube addons configure
# @cmd Configures the addon w/ADDON_NAME within minikube (example: minikube addons configure registry-creds).
# @arg addon_name[`_choice_addon`]
addons::configure() {
    :;
}
# }}} minikube addons configure

# {{{ minikube addons disable
# @cmd Disables the addon w/ADDON_NAME within minikube (example: minikube addons disable dashboard).
# @arg addon_name[`_choice_addon`]
addons::disable() {
    :;
}
# }}} minikube addons disable

# {{{ minikube addons enable
# @cmd Enables the addon w/ADDON_NAME within minikube.
# @flag --force                   If true, will perform potentially dangerous operations.
# @option --images <value>        Images used by this addon.
# @flag --refresh                 If true, pods might get deleted and restarted on addon enable
# @option --registries <value>    Registries used by this addon.
# @arg addon_name[`_choice_addon`]
addons::enable() {
    :;
}
# }}} minikube addons enable

# {{{ minikube addons images
# @cmd List image names the addon w/ADDON_NAME used.
# @arg addon_name[`_choice_addon`]
addons::images() {
    :;
}
# }}} minikube addons images

# {{{ minikube addons list
# @cmd Lists all available minikube addons as well as their current statuses (enabled/disabled)
# @flag -d --docs                          If true, print web links to addons' documentation if using --output=list (default).
# @option -o --output[text|json] <list>    minikube addons list --output OUTPUT.
addons::list() {
    :;
}
# }}} minikube addons list

# {{{ minikube addons open
# @cmd Opens the addon w/ADDON_NAME within minikube (example: minikube addons open dashboard).
# @flag --https             Open the addons URL with https instead of http
# @option --interval <1>    The time interval for each check that wait performs in seconds
# @flag --url               Display the Kubernetes addons URL in the CLI instead of opening it in the default browser
# @option --wait <2>        Amount of time to wait for service in seconds
# @arg addon_name[`_choice_addon`]
addons::open() {
    :;
}
# }}} minikube addons open
# }} minikube addons

# {{ minikube config
# @cmd Modify persistent configuration values
config() {
    :;
}

# {{{ minikube config defaults
# @cmd Lists all valid default values for PROPERTY_NAME
# @option -o --output[text|json] <value>    Output format.
# @arg property_name[`_choice_property_name`]
config::defaults() {
    :;
}
# }}} minikube config defaults

# {{{ minikube config get
# @cmd Gets the value of PROPERTY_NAME from the minikube config file
# @arg property_name[`_choice_property_name`]
config::get() {
    :;
}
# }}} minikube config get

# {{{ minikube config set
# @cmd Sets an individual value in a minikube config file
# @arg property_name[`_choice_property_name`]
# @arg property_value
config::set() {
    :;
}
# }}} minikube config set

# {{{ minikube config unset
# @cmd unsets an individual value in a minikube config file
# @arg property_name[`_choice_property_name`]
config::unset() {
    :;
}
# }}} minikube config unset

# {{{ minikube config view
# @cmd Display values currently set in the minikube config file
config::view() {
    :;
}
# }}} minikube config view
# }} minikube config

# {{ minikube profile
# @cmd Get or list the current profiles (clusters)
# @arg minikube_profile_name
profile() {
    :;
}

# {{{ minikube profile list
# @cmd Lists all minikube profiles.
# @flag -l --light                          If true, returns list of profiles faster by skipping validating the status of the cluster.
# @option -o --output[text|json] <table>    The output format.
profile::list() {
    :;
}
# }}} minikube profile list
# }} minikube profile

# {{ minikube update-context
# @cmd Update kubeconfig in case of an IP or port change
update-context() {
    :;
}
# }} minikube update-context

# {{ minikube service
# @cmd Returns a URL to connect to a service
# @flag --all               Forwards all services in a namespace (defaults to "false")
# @flag --https             Open the service URL with https instead of http (defaults to "false")
# @option --interval <1>    The initial time interval for each check that wait performs in seconds
# @option -n --namespace[`_choice_namespace`] <default>  The service namespace
# @flag --url               Display the Kubernetes service URL in the CLI instead of opening it in the default browser
# @option --wait <2>        Amount of time to wait for a service in seconds
# @arg service
service() {
    :;
}

# {{{ minikube service list
# @cmd Lists the URLs for the services in your local cluster
# @option -n --namespace[`_choice_namespace`] <value>  The services namespace
# @option -o --output[text|json] <table>    The output format.
service::list() {
    :;
}
# }}} minikube service list
# }} minikube service

# {{ minikube tunnel
# @cmd Connect to LoadBalancer services
# @option --bind-address <value>    set tunnel bind address, empty or '*' indicates the tunnel should be available for all interfaces
# @flag -c --cleanup                call with cleanup=true to remove old tunnels
tunnel() {
    :;
}
# }} minikube tunnel

# {{ minikube mount
# @cmd Mounts the specified directory into minikube
# @option --9p-version <9p2000.L>    Specify the 9p version that the mount should use
# @option --gid <docker>             Default group id used for the mount
# @option --ip <value>               Specify the ip that the mount should be setup on
# @flag --kill                       Kill the mount process spawned by minikube start
# @option --msize <262144>           The number of bytes to use for 9p packet payload
# @option --options* <value>         Additional mount options, such as cache=fscache
# @option --port <0>                 Specify the port that the mount should be setup on, where 0 means any free port.
# @option --type <9p>                Specify the mount filesystem type (supported types: 9p)
# @option --uid <docker>             Default user id used for the mount
# @arg src-dest[`_choice_mount`] <src:dest>
mount() {
    :;
}
# }} minikube mount

# {{ minikube ssh
# @cmd Log into the minikube environment (for debugging)
# @flag --native-ssh                           Use native Golang SSH client (default true).
# @option -n --node[`_choice_node`] <value>    The node to ssh into.
ssh() {
    :;
}
# }} minikube ssh

# {{ minikube kubectl
# @cmd Run a kubectl binary matching the cluster version
# @flag --ssh    Use SSH for running kubernetes client on the node
# @arg args~[`_choice_kubectl`]
kubectl() {
    :;
}
# }} minikube kubectl

# {{ minikube node
# @cmd Add, remove, or list additional nodes
node() {
    :;
}

# {{{ minikube node add
# @cmd Adds a node to the given cluster.
# @flag --control-plane        This flag is currently unsupported.
# @flag --delete-on-failure    If set, delete the current cluster if start fails and try again.
# @flag --worker               If true, the added node will be marked for work.
node::add() {
    :;
}
# }}} minikube node add

# {{{ minikube node delete
# @cmd Deletes a node from a cluster.
node::delete() {
    :;
}
# }}} minikube node delete

# {{{ minikube node list
# @cmd List nodes.
node::list() {
    :;
}
# }}} minikube node list

# {{{ minikube node start
# @cmd Starts a node.
# @flag --delete-on-failure    If set, delete the current cluster if start fails and try again.
node::start() {
    :;
}
# }}} minikube node start

# {{{ minikube node stop
# @cmd Stops a node in a cluster.
node::stop() {
    :;
}
# }}} minikube node stop
# }} minikube node

# {{ minikube cp
# @cmd Copy the specified file into minikube
# @arg src[`_choice_cp`]
# @arg dest[`_choice_cp`]
cp() {
    :;
}
# }} minikube cp

# {{ minikube ssh-key
# @cmd Retrieve the ssh identity key path of the specified node
# @option -n --node[`_choice_node`] <value>    The node to get ssh-key path.
ssh-key() {
    :;
}
# }} minikube ssh-key

# {{ minikube ssh-host
# @cmd Retrieve the ssh host key of the specified node
# @flag --append-known                         Add host key to SSH known_hosts file
# @option -n --node[`_choice_node`] <value>    The node to ssh into.
ssh-host() {
    :;
}
# }} minikube ssh-host

# {{ minikube ip
# @cmd Retrieves the IP address of the specified node
# @option -n --node[`_choice_node`] <value>    The node to get IP.
ip() {
    :;
}
# }} minikube ip

# {{ minikube logs
# @cmd Returns logs to debug a local Kubernetes cluster
# @flag --audit                             Show only the audit logs
# @option --file <file>                     If present, writes to the provided file instead of stdout.
# @flag -f --follow                         Show only the most recent journal entries, and continuously print new entries as they are appended to the journal.
# @flag --last-start-only                   Show only the last start logs.
# @option -n --length <60>                  Number of lines back to go within the log
# @option --node[`_choice_node`] <value>    The node to get logs from.
# @flag --problems                          Show only log entries which point to known problems
logs() {
    :;
}
# }} minikube logs

# {{ minikube update-check
# @cmd Print current and latest version number
update-check() {
    :;
}
# }} minikube update-check

# {{ minikube version
# @cmd Print the version of minikube
# @flag --components                        list versions of all components included with minikube.
# @option -o --output[text|json] <value>    One of 'yaml' or 'json'.
# @flag --short                             Print just the version number.
version() {
    :;
}
# }} minikube version

# {{ minikube options
# @cmd Show a list of global command-line options (applies to all commands).
options() {
    :;
}
# }} minikube options

# {{ minikube completion
# @cmd Generate command completion for a shell
# @arg shell
completion() {
    :;
}

# {{{ minikube completion bash
# @cmd bash completion.
completion::bash() {
    :;
}
# }}} minikube completion bash

# {{{ minikube completion fish
# @cmd fish completion.
completion::fish() {
    :;
}
# }}} minikube completion fish

# {{{ minikube completion powershell
# @cmd powershell completion.
completion::powershell() {
    :;
}
# }}} minikube completion powershell

# {{{ minikube completion zsh
# @cmd zsh completion.
completion::zsh() {
    :;
}
# }}} minikube completion zsh
# }} minikube completion

# {{ minikube license
# @cmd Outputs the licenses of dependencies to a directory
# @option -d --dir <dir>    Directory to output licenses to
license() {
    :;
}
# }} minikube license

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_addon() {
    minikube addons list --output json  | yq 'keys | .[]'
}

_choice_cni() {
    if _argc_util_has_path_prefix "$argc_cni"; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto bridge calico cilium flannel kindnet
}

_choice_vnpkit_sock() {
    if _argc_util_has_path_prefix "$argc_hyperkit_vpnkit_sock"; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto
}

_choice_mount_string() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path suffix=:
    else
        echo /minikube-host
    fi
}

_choice_namespace() {
    minikube kubectl get namespaces | tail -n +2 | gawk '{print $1}'
}

_choice_node() {
    minikube node list
}

_choice_load_image() {
    if _argc_util_has_path_prefix "$argc_image"; then
        _argc_util_comp_path
        return
    fi
    _module_oci_docker_image
}

_choice_image() {
    minikube image ls
}

_choice_property_name() {
    cat <<-'EOF'
driver
vm-driver
container-runtime
feature-gates
v
cpus
disk-size
host-only-cidr
memory
log_dir
kubernetes-version
iso-url
WantUpdateNotification
WantBetaUpdateNotification
ReminderWaitPeriodInHours
WantNoneDriverWarning
WantVirtualBoxDriverWarning
profile
bootstrapper
insecure-registry
hyperv-virtual-switch
disable-driver-mounts
cache
EmbedCerts
native-ssh
rootless
MaxAuditEntries
EOF
}

_choice_mount() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path suffix=:
    else
        _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
        if [[ -z "$argc__kv_filter" ]]; then
            echo -e "/\0"
            return
        fi
        minikube ssh "ls -1 -p '$argc__parts_local_prefix'" | _argc_util_transform nospaceIfEnd=/
    fi
}

_choice_kubectl() {
    _argc_util_comp_subcommand 0 kubectl
}

_choice_cp() {
    _complete_node_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_node | _argc_util_transform suffix=: nospace
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            minikube ssh --node "${argc__kv_key}"  "ls -1 -p '$argc__parts_local_prefix'" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_node_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_node_path
        fi
    fi
}

_module_oci_docker_image() {
    docker image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
}

command eval "$(argc --argc-eval "$0" "$@")"