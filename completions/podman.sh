#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cgroup-manager[cgroupfs|systemd] <string>  Cgroup manager to use (default "systemd")
# @option --cni-config-dir <dir>       Path of the configuration directory for CNI networks
# @option --conmon <path>              Path of the conmon binary
# @option -c --connection <string>     Connection to use for remote Podman service (default "podman-machine-default")
# @option --events-backend[file|journald|none] <file>  Events backend to use (default "journald")
# @flag --help                         Help for podman
# @option --hooks-dir <dirs>           Set the OCI hooks directory path (may be set multiple times) (default [/usr/share/containers/oci/hooks.d])
# @option --identity <file>            path to SSH identity file, (CONTAINER_SSHKEY) (default "/home/sigo/.ssh/podman-machine-default")
# @option --log-level[trace|debug|info|warn|warning|error|fatal|panic] <string>  Log messages above specified level (default "warn")
# @option --namespace <string>         Set the libpod namespace, used to create separate views of the containers and pods on the system
# @option --network-cmd-path <path>    Path to the command for configuring the network
# @flag -r --remote                    Access remote Podman service (default false)
# @option --root <dir>                 Path to the root directory in which data, including images, is stored
# @option --runroot <dir>              Path to the 'run directory' where all state information is stored
# @option --runtime <path>             Path to the OCI-compatible binary used to run containers, default is /usr/bin/runc
# @option --runtime-flag* <string>     add global flags for the container runtime
# @option --storage-driver <string>    Select which storage driver is used to manage storage of images and containers (default is overlay)
# @option --storage-opt* <string>      Used to pass an option to the storage driver
# @flag --syslog                       Output logging information to syslog as well as the console (default false)
# @option --tmpdir <dir>               Path to the tmp directory for libpod state content.
# @option --url <string>               URL to access Podman service (CONTAINER_HOST) (default "ssh://core@localhost:43081/run/user/1000/podman/podman.sock")
# @flag -v --version                   version for podman

# {{ podman attach
# @cmd Attach to a running container
# @option --detach-keys <a-Z>    Select the key sequence for detaching a container.
# @flag -l --latest              Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-stdin               Do not attach STDIN.
# @flag --sig-proxy              Proxy received signals to the process (default true)
# @arg container[`_choice_container`]
attach() {
    :;
}
# }} podman attach

# {{ podman auto-update
# @cmd Auto update containers according to their auto-update policy
# @option --authfile <file>    Path to the authentication file.
# @flag --dry-run              Check for pending updates
# @option --format <string>    Change the output format to JSON or a Go template
# @flag --rollback             Rollback to previous image if update fails (default true)
auto-update() {
    :;
}
# }} podman auto-update

# {{ podman build
# @cmd Build an image using instructions from Containerfiles
# @option --add-host <host:ip>                   add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>                 Set metadata for an image (default [])
# @option --arch <string>                        set the ARCH of the image to the provided value instead of the architecture of the host (default "amd64")
# @option --authfile <file>                      path of the authentication file.
# @option --build-arg <argument=value>           argument=value to supply to the builder
# @option --cache-from <string>                  Images to utilise as potential cache sources.
# @option --cap-add <strings>                    add the specified capability when running (default [])
# @option --cap-drop <strings>                   drop the specified capability when running (default [])
# @option --cert-dir <dir>                       use certificates at the specified path to access the registry
# @option --cgroup-parent <string>               optional parent cgroup for the container
# @option --cni-plugin-path <path>               path of CNI network plugins (default "/usr/lib/cni:/usr/libexec/cni:/opt/cni/bin")
# @flag --compress                               This is legacy option, which has no effect on the image
# @option --cpu-period <uint>                    limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                      limit the CPU CFS (Completely Fair Scheduler) quota
# @option -c --cpu-shares <uint>                 CPU shares (relative weight)
# @option --cpuset-cpus <string>                 CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                 memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --creds <username[:password]>          use [username[:password]] for accessing the registry
# @option --decryption-key <strings>             key needed to decrypt the image
# @option --device* <string>                     Additional devices to be used within containers (default [])
# @flag -D --disable-compression                 don't compress layers by default (default true)
# @flag --disable-content-trust                  This is a Docker specific option and is a NOOP
# @option --dns </etc/resolv.conf>               Set custom DNS servers or disable it completely by setting it to 'none', which prevents the automatic creation of /etc/resolv.conf.
# @option --dns-option <strings>                 Set custom DNS options
# @option --dns-search <strings>                 Set custom DNS search domains
# @flag -f --file                                pathname or URL                         pathname or URL of a Dockerfile
# @flag --force-rm                               Always remove intermediate containers after a build, even if the build is unsuccessful.
# @option --format <format>                      format of the built image's manifest and metadata.
# @option --from <file>                          image name used to replace the value in the first FROM instruction in the Containerfile
# @flag --http-proxy                             pass through HTTP Proxy environment variables (default true)
# @option --ignorefile <file>                    path to an alternate .dockerignore file
# @option --iidfile <file>                       file to write the image ID to
# @option --ipc <path>                           'private', path of IPC namespace to join, or 'host'
# @option --isolation <type>                     type of process isolation to use.
# @option --jobs <int>                           how many stages to run in parallel (default 1)
# @option --label* <string>                      Set metadata for an image (default [])
# @flag --layers                                 cache intermediate layers during build.
# @option --logfile <file>                       log to file instead of stdout/stderr
# @option --manifest <string>                    add the image to the specified manifest list.
# @option -m --memory <string>                   memory limit (format: <number>[<unit>], where unit = b, k, m or g)
# @option --memory-swap <string>                 swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --network[`_choice_network`] <path>    'private', 'none', 'ns:path' of network namespace to join, or 'host'
# @flag --no-cache                               Do not use existing cached images for the container build.
# @option --os <string>                          set the OS to the provided value instead of the current operating system of the host (default "linux")
# @option --pid <path>                           private, path of PID namespace to join, or 'host'
# @option --platform <linux/arm>                 set the OS/ARCH/VARIANT of the image to the provided value instead of the current operating system and architecture of the host (for example linux/arm) (default [linux/amd64])
# @flag --pull                                   Always attempt to pull the image (errors are fatal) (default true)
# @flag --pull-always                            pull the image even if the named image is present in store
# @flag --pull-never                             do not pull the image, use the image present in store if available
# @flag -q --quiet                               refrain from announcing build instructions and image read/write progress
# @flag --rm                                     Remove intermediate containers after a successful build (default true)
# @option --secret* <file>                       secret file to expose to the build
# @option --security-opt* <string>               security options (default [])
# @option --shm-size <<number><unit>>            size of '/dev/shm'.
# @option --sign-by <FINGERPRINT>                sign the image using a GPG key with the specified FINGERPRINT
# @flag --squash                                 squash newly built layers into a single new layer
# @flag --squash-all                             Squash all layers into a single layer
# @option --ssh* <string>                        SSH agent socket or keys to expose to the build.
# @flag --stdin                                  pass stdin into containers
# @option -t --tag <name>                        tagged name to apply to the built image
# @option --target <string>                      set the target build stage to build
# @option --timestamp <int>                      set created timestamp to the specified epoch seconds to allow for deterministic builds, defaults to current time
# @flag --tls-verify                             require HTTPS and verify certificates when accessing the registry (default true)
# @option --ulimit <strings>                     ulimit options
# @option --userns <path>                        'container', path of user namespace to join, or 'host'
# @option --userns-gid-map <containerGID:hostGID:length>  containerGID:hostGID:length GID mapping to use in user namespace
# @option --userns-gid-map-group <name>          name of entries from /etc/subgid to use to set user namespace GID mapping
# @option --userns-uid-map <containerUID:hostUID:length>  containerUID:hostUID:length UID mapping to use in user namespace
# @option --userns-uid-map-user <name>           name of entries from /etc/subuid to use to set user namespace UID mapping
# @option --uts <path>                           private, :path of UTS namespace to join, or 'host'
# @option --variant <variant>                    override the variant of the specified image
# @option -v --volume* <string>                  bind mount a volume into the container
# @arg context
build() {
    :;
}
# }} podman build

# {{ podman commit
# @cmd Create new image based on the changed container
# @option -a --author <string>     Set the author for the image committed
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -f --format <Format>     Format of the image manifest and metadata (default "oci")
# @option --iidfile <file>         file to write the image ID to
# @flag --include-volumes          Include container volumes as image volumes
# @option -m --message <string>    Set commit message for imported image
# @flag -p --pause                 Pause container during commit
# @flag -q --quiet                 Suppress output
# @arg container[`_choice_container`]
# @arg image[`_module_oci_podman_image`]
commit() {
    :;
}
# }} podman commit

# {{ podman container
# @cmd Manage containers
container() {
    :;
}

# {{{ podman container attach
# @cmd Attach to a running container
# @option --detach-keys <a-Z>    Select the key sequence for detaching a container.
# @flag -l --latest              Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-stdin               Do not attach STDIN.
# @flag --sig-proxy              Proxy received signals to the process (default true)
# @arg container[`_choice_container`]
container::attach() {
    :;
}
# }}} podman container attach

# {{{ podman container checkpoint
# @cmd Checkpoints one or more containers
# @flag -a --all                  Checkpoint all running containers
# @option -c --compress[gzip|none|zstd] <string>  Select compression algorithm for checkpoint archive.
# @option -e --export <string>    Export the checkpoint image to a tar.gz
# @flag --ignore-rootfs           Do not include root file-system changes when exporting
# @flag --ignore-volumes          Do not export volumes associated with container
# @flag -k --keep                 Keep all temporary checkpoint files
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -R --leave-running        Leave the container running after writing checkpoint to disk
# @flag -P --pre-checkpoint       Dump container's memory information only, leave the container running
# @flag --tcp-established         Checkpoint a container with established TCP connections
# @flag --with-previous           Checkpoint container with pre-checkpoint images
# @arg container*[`_choice_container`]
container::checkpoint() {
    :;
}
# }}} podman container checkpoint

# {{{ podman container cleanup
# @cmd Cleanup network and mountpoints of one or more containers
# @flag -a --all             Cleans up all containers
# @option --exec <string>    Clean up the given exec session instead of the container
# @flag -l --latest          Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --rm                 After cleanup, remove the container entirely
# @flag --rmi                After cleanup, remove the image entirely
# @arg container*[`_choice_container`]
container::cleanup() {
    :;
}
# }}} podman container cleanup

# {{{ podman container commit
# @cmd Create new image based on the changed container
# @option -a --author <string>     Set the author for the image committed
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -f --format <Format>     Format of the image manifest and metadata (default "oci")
# @option --iidfile <file>         file to write the image ID to
# @flag --include-volumes          Include container volumes as image volumes
# @option -m --message <string>    Set commit message for imported image
# @flag -p --pause                 Pause container during commit
# @flag -q --quiet                 Suppress output
# @arg container[`_choice_container`]
# @arg image[`_module_oci_podman_image`]
container::commit() {
    :;
}
# }}} podman container commit

# {{{ podman container cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive    Chown copied files to the primary uid/gid of the destination container.
# @arg src[`_choice_container_cp`]
# @arg dest[`_choice_container_cp`]
container::cp() {
    :;
}
# }}} podman container cp

# {{{ podman container create
# @cmd Create but do not start a container
# @option --add-host <strings>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation <strings>                   Add annotations to container (key:value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach <strings>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add <strings>                      Add capabilities to the container
# @option --cap-drop <strings>                     Drop capabilities from the container
# @option --cgroup-conf <strings>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration (default "enabled")
# @option --cidfile <file>                         Write the container ID to the file
# @option --conmon-pidfile <file>                  Path to the file that will receive the PID of conmon
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option --cpu-shares <uint>                      CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device <strings>                       Add a host device to the container
# @option --device-cgroup-rule <strings>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps <strings>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops <strings>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps <strings>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops <strings>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns <strings>                          Set custom DNS servers
# @option --dns-opt <strings>                      Set custom DNS options
# @option --dns-search <strings>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container (default [PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin,TERM=xterm])
# @option --env-file <files>                       Read in a file of environment variables
# @flag --env-host                                 Use all current host environment variables in container
# @option --expose <strings>                       Expose a port or a range of ports
# @option --gidmap <strings>                       GID map to use for the user namespace
# @option --group-add <strings>                    Add additional groups to the primary container process.
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthchecks (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @option -h --hostname <string>                   Set container hostname
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-ctr <string>                      Make this a pod init container.
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option --kernel-memory <<number>[<unit>]>       Kernel memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option -l --label* <string>                     Set metadata on container
# @option --label-file <files>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container (default "journald")
# @option --log-opt <strings>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network[`_choice_network`] <string>    Connect a container to a network
# @option --network-alias <strings>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pidfile <file>                         Write the container process ID to the file
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default 2048)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish <strings>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never] <string>    Pull image before creating (default "missing")
# @flag -q --quiet                                 Suppress output information when pulling images
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running containers in read-only mode mount a read-write tmpfs on /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires <strings>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container (and pod if created) after exit
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes)) (default "65536k")
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl <strings>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap <strings>                       UID map to use for the user namespace
# @option --ulimit <strings>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
container::create() {
    :;
}
# }}} podman container create

# {{{ podman container diff
# @cmd Inspect changes to the container's file systems
# @option --format <string>    Change the output format (json)
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container[`_choice_container`]
container::diff() {
    :;
}
# }}} podman container diff

# {{{ podman container exec
# @cmd Run a process in a running container
# @flag -d --detach                 Run the exec session in detached mode (backgrounded)
# @option --detach-keys <string>    Select the key sequence for detaching a container.
# @option -e --env* <string>        Set environment variables
# @option --env-file <files>        Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag -l --latest                 Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --preserve-fds <uint>     Pass N additional file descriptors to the container
# @flag --privileged                Give the process extended Linux capabilities inside the container.
# @flag -t --tty                    Allocate a pseudo-TTY.
# @option -u --user <string>        Sets the username or UID used and optionally the groupname or GID for the specified command
# @option -w --workdir <dir>        Working directory inside the container
# @arg container[`_choice_container`]
container::exec() {
    :;
}
# }}} podman container exec

# {{{ podman container exists
# @cmd Check if a container exists in local storage
# @flag --external    Check external storage containers as well as Podman containers
# @arg container[`_choice_container`]
container::exists() {
    :;
}
# }}} podman container exists

# {{{ podman container export
# @cmd Export container's filesystem contents as a tar archive
# @option -o --output <dir>    Write to a specified file (default: stdout, which must be redirected)
# @arg container[`_choice_container`]
container::export() {
    :;
}
# }}} podman container export

# {{{ podman container init
# @cmd Initialize one or more containers
# @flag -a --all       Initialize all containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
container::init() {
    :;
}
# }}} podman container init

# {{{ podman container inspect
# @cmd Display the configuration of a container
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -s --size                 Display total file size
# @arg container*[`_choice_container`]
container::inspect() {
    :;
}
# }}} podman container inspect

# {{{ podman container kill
# @cmd Kill one or more running containers with a specific signal
# @flag -a --all                  Signal all running containers
# @option --cidfile* <file>       Read the container ID from the file
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -s --signal <string>    Signal to send to the container (default "KILL")
# @arg container*[`_choice_container`]
container::kill() {
    :;
}
# }}} podman container kill

# {{{ podman container list
# @cmd List containers
# @alias ls
# @flag -a --all                   Show all the containers, default is only running containers
# @flag --external                 Show containers in storage not controlled by Podman
# @option -f --filter <strings>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-trunc                 Display the extended information
# @flag --noheading                Do not print headers
# @flag --ns                       Display namespace information
# @flag -p --pod                   Print the ID and name of the pod the containers are associated with
# @flag -q --quiet                 Print the numeric IDs of the containers only
# @flag -s --size                  Display the total file sizes
# @option --sort[command|created|id|image|names|runningfor|size|status] <choice>  Sort output by: command, created, id, image, names, runningfor, size, status
# @flag --sync                     Sync container state with OCI runtime
# @option -w --watch <uint>        Watch the ps output on an interval in seconds
container::list() {
    :;
}
# }}} podman container list

# {{{ podman container logs
# @cmd Fetch the logs of one or more containers
# @flag -f --follow           Follow log output.
# @flag -l --latest           Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -n --names            Output the container name in the log
# @option --since <string>    Show logs since TIMESTAMP
# @option --tail <int>        Output the specified number of LINES at the end of the logs.
# @flag -t --timestamps       Output the timestamps in the log
# @option --until <string>    Show logs until TIMESTAMP
# @arg container*[`_choice_container`]
container::logs() {
    :;
}
# }}} podman container logs

# {{{ podman container mount
# @cmd Mount a working container's root filesystem
# @flag -a --all               Mount all containers
# @option --format <string>    Print the mounted containers in specified format (json)
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --notruncate           Do not truncate output
# @arg container*[`_choice_container`]
container::mount() {
    :;
}
# }}} podman container mount

# {{{ podman container pause
# @cmd Pause all the processes in one or more containers
# @flag -a --all    Pause all running containers
# @arg container*[`_choice_container`]
container::pause() {
    :;
}
# }}} podman container pause

# {{{ podman container port
# @cmd List port mappings or a specific mapping for the container
# @flag -a --all       Display port information for all containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container[`_choice_container`]
# @arg port
container::port() {
    :;
}
# }}} podman container port

# {{{ podman container prune
# @cmd Remove all non running containers
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation.
container::prune() {
    :;
}
# }}} podman container prune

# {{{ podman container ps
# @cmd List containers
# @flag -a --all                   Show all the containers, default is only running containers
# @flag --external                 Show containers in storage not controlled by Podman
# @option -f --filter <strings>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-trunc                 Display the extended information
# @flag --noheading                Do not print headers
# @flag --ns                       Display namespace information
# @flag -p --pod                   Print the ID and name of the pod the containers are associated with
# @flag -q --quiet                 Print the numeric IDs of the containers only
# @flag -s --size                  Display the total file sizes
# @option --sort[command|created|id|image|names|runningfor|size|status] <choice>  Sort output by: command, created, id, image, names, runningfor, size, status
# @flag --sync                     Sync container state with OCI runtime
# @option -w --watch <uint>        Watch the ps output on an interval in seconds
container::ps() {
    :;
}
# }}} podman container ps

# {{{ podman container rename
# @cmd Rename an existing container
# @arg container[`_choice_container`]
# @arg name
container::rename() {
    :;
}
# }}} podman container rename

# {{{ podman container restart
# @cmd Restart one or more containers
# @flag -a --all              Restart all non-running containers
# @flag -l --latest           Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --running             Restart only running containers when --all is used
# @option -t --time <uint>    Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
container::restart() {
    :;
}
# }}} podman container restart

# {{{ podman container restore
# @cmd Restores one or more containers from a checkpoint
# @flag -a --all                        Restore all checkpointed containers
# @flag --ignore-rootfs                 Do not apply root file-system changes when importing from exported checkpoint
# @flag --ignore-static-ip              Ignore IP address set via --static-ip
# @flag --ignore-static-mac             Ignore MAC address set via --mac-address
# @flag --ignore-volumes                Do not export volumes associated with container
# @option -i --import <string>          Restore from exported checkpoint archive (tar.gz)
# @option --import-previous <string>    Restore from exported pre-checkpoint archive (tar.gz)
# @flag -k --keep                       Keep all temporary checkpoint files
# @flag -l --latest                     Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -n --name <string>            Specify new name for container restored from exported checkpoint (only works with --import)
# @option --pod <string>                Restore container into existing Pod (only works with --import)
# @option -p --publish <strings>        Publish a container's port, or a range of ports, to the host (default [])
# @flag --tcp-established               Restore a container with established TCP connections
# @arg container*[`_choice_container`]
container::restore() {
    :;
}
# }}} podman container restore

# {{{ podman container rm
# @cmd Remove one or more containers
# @flag -a --all               Remove all containers
# @option --cidfile* <file>    Read the container ID from the file
# @flag -f --force             Force removal of a running or unusable container.
# @flag -i --ignore            Ignore errors when a specified container is missing
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -v --volumes           Remove anonymous volumes associated with the container
# @arg container*[`_choice_container`]
container::rm() {
    :;
}
# }}} podman container rm

# {{{ podman container run
# @cmd Run a command in a new container
# @option --add-host <strings>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation <strings>                   Add annotations to container (key:value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach <strings>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add <strings>                      Add capabilities to the container
# @option --cap-drop <strings>                     Drop capabilities from the container
# @option --cgroup-conf <strings>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration (default "enabled")
# @option --cidfile <file>                         Write the container ID to the file
# @option --conmon-pidfile <file>                  Path to the file that will receive the PID of conmon
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option --cpu-shares <uint>                      CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag -d --detach                                Run container in background and print container ID
# @option --detach-keys <a-Z>                      Override the key sequence for detaching a container.
# @option --device <strings>                       Add a host device to the container
# @option --device-cgroup-rule <strings>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps <strings>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops <strings>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps <strings>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops <strings>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns <strings>                          Set custom DNS servers
# @option --dns-opt <strings>                      Set custom DNS options
# @option --dns-search <strings>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container (default [PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin,TERM=xterm])
# @option --env-file <files>                       Read in a file of environment variables
# @flag --env-host                                 Use all current host environment variables in container
# @option --expose <strings>                       Expose a port or a range of ports
# @option --gidmap <strings>                       GID map to use for the user namespace
# @option --group-add <strings>                    Add additional groups to the primary container process.
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthchecks (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @option -h --hostname <string>                   Set container hostname
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option --kernel-memory <<number>[<unit>]>       Kernel memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option -l --label* <string>                     Set metadata on container
# @option --label-file <files>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container (default "journald")
# @option --log-opt <strings>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network[`_choice_network`] <string>    Connect a container to a network
# @option --network-alias <strings>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pidfile <file>                         Write the container process ID to the file
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default 2048)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @option --preserve-fds <uint>                    Pass a number of additional file descriptors into the container
# @flag --privileged                               Give extended privileges to container
# @option -p --publish <strings>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never] <string>    Pull image before creating (default "missing")
# @flag -q --quiet                                 Suppress output information when pulling images
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running containers in read-only mode mount a read-write tmpfs on /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires <strings>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container (and pod if created) after exit
# @flag --rmi                                      Remove container image unless used by other containers
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes)) (default "65536k")
# @flag --sig-proxy                                Proxy received signals to the process (default true)
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl <strings>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap <strings>                       UID map to use for the user namespace
# @option --ulimit <strings>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
container::run() {
    :;
}
# }}} podman container run

# {{{ podman container runlabel
# @cmd Execute the command described by an image label
# @option --authfile <file>        Path of the authentication file.
# @option --cert-dir <Pathname>    Pathname of a directory containing TLS certificates and keys
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @flag --display                  Preview the command that the label would run
# @option -n --name <string>       Assign a name to the container
# @flag -q --quiet                 Suppress output information when installing images
# @flag --replace                  Replace existing container with a new one from the image
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @arg label
# @arg image[`_module_oci_podman_image`]
# @arg arg*
container::runlabel() {
    :;
}
# }}} podman container runlabel

# {{{ podman container start
# @cmd Start one or more containers
# @flag --all                      Start all containers regardless of their state or configuration
# @flag -a --attach                Attach container's STDOUT and STDERR
# @option --detach-keys <a-Z>      Select the key sequence for detaching a container.
# @option -f --filter <strings>    Filter output based on conditions given
# @flag -i --interactive           Keep STDIN open even if not attached
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --sig-proxy                Proxy received signals to the process (default true if attaching, false otherwise)
# @arg container*[`_choice_container`]
container::start() {
    :;
}
# }}} podman container start

# {{{ podman container stats
# @cmd Display a live stream of container resource usage statistics
# @flag -a --all                 Show all containers.
# @option --format <string>      Pretty-print container statistics to JSON or using a Go template
# @option -i --interval <int>    Time in seconds between stats reports (default 5)
# @flag -l --latest              Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-reset               Disable resetting the screen between intervals
# @flag --no-stream              Disable streaming stats and only pull the first result, default setting is false
# @arg container*[`_choice_container`]
container::stats() {
    :;
}
# }}} podman container stats

# {{{ podman container stop
# @cmd Stop one or more containers
# @flag -a --all               Stop all running containers
# @option --cidfile* <file>    Read the container ID from the file
# @flag -i --ignore            Ignore errors when a specified container is missing
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -t --time <uint>     Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
container::stop() {
    :;
}
# }}} podman container stop

# {{{ podman container top
# @cmd Display the running processes of a container
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container[`_choice_container`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
container::top() {
    :;
}
# }}} podman container top

# {{{ podman container unmount
# @cmd Unmounts working container's root filesystem
# @alias umount
# @flag -a --all       Unmount all of the currently mounted containers
# @flag -f --force     Force the complete unmount of the specified mounted containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
container::unmount() {
    :;
}
# }}} podman container unmount

# {{{ podman container unpause
# @cmd Unpause the processes in one or more containers
# @flag -a --all    Pause all running containers
# @arg container*[`_choice_container`]
container::unpause() {
    :;
}
# }}} podman container unpause

# {{{ podman container wait
# @cmd Block on one or more containers
# @option --condition <string>      Condition to wait on (default "stopped")
# @option -i --interval <string>    Time Interval to wait before polling for completion (default "250ms")
# @flag -l --latest                 Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
container::wait() {
    :;
}
# }}} podman container wait
# }} podman container

# {{ podman cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive    Chown copied files to the primary uid/gid of the destination container.
# @arg src[`_choice_container_cp`]
# @arg dest[`_choice_container_cp`]
cp() {
    :;
}
# }} podman cp

# {{ podman create
# @cmd Create but do not start a container
# @option --add-host <strings>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation <strings>                   Add annotations to container (key:value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach <strings>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add <strings>                      Add capabilities to the container
# @option --cap-drop <strings>                     Drop capabilities from the container
# @option --cgroup-conf <strings>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration (default "enabled")
# @option --cidfile <file>                         Write the container ID to the file
# @option --conmon-pidfile <file>                  Path to the file that will receive the PID of conmon
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option --cpu-shares <uint>                      CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device <strings>                       Add a host device to the container
# @option --device-cgroup-rule <strings>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps <strings>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops <strings>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps <strings>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops <strings>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns <strings>                          Set custom DNS servers
# @option --dns-opt <strings>                      Set custom DNS options
# @option --dns-search <strings>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container (default [PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin,TERM=xterm])
# @option --env-file <files>                       Read in a file of environment variables
# @flag --env-host                                 Use all current host environment variables in container
# @option --expose <strings>                       Expose a port or a range of ports
# @option --gidmap <strings>                       GID map to use for the user namespace
# @option --group-add <strings>                    Add additional groups to the primary container process.
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthchecks (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @option -h --hostname <string>                   Set container hostname
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-ctr <string>                      Make this a pod init container.
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option --kernel-memory <<number>[<unit>]>       Kernel memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option -l --label* <string>                     Set metadata on container
# @option --label-file <files>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container (default "journald")
# @option --log-opt <strings>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network[`_choice_network`] <string>    Connect a container to a network
# @option --network-alias <strings>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pidfile <file>                         Write the container process ID to the file
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default 2048)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish <strings>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never] <string>    Pull image before creating (default "missing")
# @flag -q --quiet                                 Suppress output information when pulling images
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running containers in read-only mode mount a read-write tmpfs on /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires <strings>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container (and pod if created) after exit
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes)) (default "65536k")
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl <strings>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap <strings>                       UID map to use for the user namespace
# @option --ulimit <strings>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
create() {
    :;
}
# }} podman create

# {{ podman diff
# @cmd Display the changes to the object's file system
# @option --format <string>    Change the output format (json)
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container-image <CONTAINER|IMAGE>
diff() {
    :;
}
# }} podman diff

# {{ podman events
# @cmd Show podman events
# @option --filter* <string>    filter output
# @option --format <string>     format the output using a Go template
# @option --since <string>      show all events created since timestamp
# @option --until <string>      show all events until timestamp
events() {
    :;
}
# }} podman events

# {{ podman exec
# @cmd Run a process in a running container
# @flag -d --detach                 Run the exec session in detached mode (backgrounded)
# @option --detach-keys <string>    Select the key sequence for detaching a container.
# @option -e --env* <string>        Set environment variables
# @option --env-file <files>        Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag -l --latest                 Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --preserve-fds <uint>     Pass N additional file descriptors to the container
# @flag --privileged                Give the process extended Linux capabilities inside the container.
# @flag -t --tty                    Allocate a pseudo-TTY.
# @option -u --user <string>        Sets the username or UID used and optionally the groupname or GID for the specified command
# @option -w --workdir <dir>        Working directory inside the container
# @arg container[`_choice_container`]
exec() {
    :;
}
# }} podman exec

# {{ podman export
# @cmd Export container's filesystem contents as a tar archive
# @option -o --output <dir>    Write to a specified file (default: stdout, which must be redirected)
# @arg container[`_choice_container`]
export() {
    :;
}
# }} podman export

# {{ podman generate
# @cmd Generate structured data based on containers, pods or volumes
generate() {
    :;
}

# {{{ podman generate kube
# @cmd Generate Kubernetes YAML from containers, pods or volumes.
# @option -f --filename <file>    Write output to the specified path
# @flag -s --service              Generate YAML for a Kubernetes service object
# @arg container-pod-volume*[`_choice_container`] <CONTAINER...|POD...|VOLUME>
generate::kube() {
    :;
}
# }}} podman generate kube

# {{{ podman generate systemd
# @cmd Generate systemd units.
# @option --container-prefix <string>    Systemd unit name prefix for containers (default "container")
# @flag -f --files                       Generate .service files instead of printing to stdout
# @option --format <string>              Print the created units in specified format (json)
# @flag -n --name                        Use container/pod names instead of IDs
# @flag --new                            Create a new container or pod instead of starting an existing one
# @flag --no-header                      Skip header generation
# @option --pod-prefix <string>          Systemd unit name prefix for pods (default "pod")
# @option --restart-policy <string>      Systemd restart-policy (default "on-failure")
# @option --separator <string>           Systemd unit name separator between name/id and prefix (default "-")
# @option -t --time <uint>               Stop timeout override (default 10)
# @arg container-pod <CONTAINER|POD>
generate::systemd() {
    :;
}
# }}} podman generate systemd
# }} podman generate

# {{ podman healthcheck
# @cmd Manage health checks on containers
healthcheck() {
    :;
}

# {{{ podman healthcheck run
# @cmd run the health check of a container
# @arg container[`_choice_container`]
healthcheck::run() {
    :;
}
# }}} podman healthcheck run
# }} podman healthcheck

# {{ podman history
# @cmd Show history of a specified image
# @option --format <string>    Change the output to JSON or a Go template
# @flag -H --human             Display sizes and dates in human readable format (default true)
# @flag --no-trunc             Do not truncate the output
# @flag --notruncate           Do not truncate the output
# @flag -q --quiet             Display the numeric IDs only
# @arg image[`_module_oci_podman_image`]
history() {
    :;
}
# }} podman history

# {{ podman image
# @cmd Manage images
image() {
    :;
}

# {{{ podman image build
# @cmd Build an image using instructions from Containerfiles
# @option --add-host <host:ip>             add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>           Set metadata for an image (default [])
# @option --arch <string>                  set the ARCH of the image to the provided value instead of the architecture of the host (default "amd64")
# @option --authfile <file>                path of the authentication file.
# @option --build-arg <argument=value>     argument=value to supply to the builder
# @option --cache-from <string>            Images to utilise as potential cache sources.
# @option --cap-add <strings>              add the specified capability when running (default [])
# @option --cap-drop <strings>             drop the specified capability when running (default [])
# @option --cert-dir <dir>                 use certificates at the specified path to access the registry
# @option --cgroup-parent <string>         optional parent cgroup for the container
# @option --cni-plugin-path <path>         path of CNI network plugins (default "/usr/lib/cni:/usr/libexec/cni:/opt/cni/bin")
# @flag --compress                         This is legacy option, which has no effect on the image
# @option --cpu-period <uint>              limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                limit the CPU CFS (Completely Fair Scheduler) quota
# @option -c --cpu-shares <uint>           CPU shares (relative weight)
# @option --cpuset-cpus <string>           CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>           memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --creds <username[:password]>    use [username[:password]] for accessing the registry
# @option --decryption-key <strings>       key needed to decrypt the image
# @option --device* <string>               Additional devices to be used within containers (default [])
# @flag -D --disable-compression           don't compress layers by default (default true)
# @flag --disable-content-trust            This is a Docker specific option and is a NOOP
# @option --dns </etc/resolv.conf>         Set custom DNS servers or disable it completely by setting it to 'none', which prevents the automatic creation of /etc/resolv.conf.
# @option --dns-option <strings>           Set custom DNS options
# @option --dns-search <strings>           Set custom DNS search domains
# @flag -f --file                          pathname or URL                         pathname or URL of a Dockerfile
# @flag --force-rm                         Always remove intermediate containers after a build, even if the build is unsuccessful.
# @option --format <format>                format of the built image's manifest and metadata.
# @option --from <file>                    image name used to replace the value in the first FROM instruction in the Containerfile
# @flag --http-proxy                       pass through HTTP Proxy environment variables (default true)
# @option --ignorefile <file>              path to an alternate .dockerignore file
# @option --iidfile <file>                 file to write the image ID to
# @option --ipc <path>                     'private', path of IPC namespace to join, or 'host'
# @option --isolation <type>               type of process isolation to use.
# @option --jobs <int>                     how many stages to run in parallel (default 1)
# @option --label* <string>                Set metadata for an image (default [])
# @flag --layers                           cache intermediate layers during build.
# @option --logfile <file>                 log to file instead of stdout/stderr
# @option --manifest <string>              add the image to the specified manifest list.
# @option -m --memory <string>             memory limit (format: <number>[<unit>], where unit = b, k, m or g)
# @option --memory-swap <string>           swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --network[private|none|ns:|host] <path>  'private', 'none', 'ns:path' of network namespace to join, or 'host'
# @flag --no-cache                         Do not use existing cached images for the container build.
# @option --os <string>                    set the OS to the provided value instead of the current operating system of the host (default "linux")
# @option --pid <path>                     private, path of PID namespace to join, or 'host'
# @option --platform <linux/arm>           set the OS/ARCH/VARIANT of the image to the provided value instead of the current operating system and architecture of the host (for example linux/arm) (default [linux/amd64])
# @flag --pull                             Always attempt to pull the image (errors are fatal) (default true)
# @flag --pull-always                      pull the image even if the named image is present in store
# @flag --pull-never                       do not pull the image, use the image present in store if available
# @flag -q --quiet                         refrain from announcing build instructions and image read/write progress
# @flag --rm                               Remove intermediate containers after a successful build (default true)
# @option --secret* <file>                 secret file to expose to the build
# @option --security-opt* <string>         security options (default [])
# @option --shm-size <<number><unit>>      size of '/dev/shm'.
# @option --sign-by <FINGERPRINT>          sign the image using a GPG key with the specified FINGERPRINT
# @flag --squash                           squash newly built layers into a single new layer
# @flag --squash-all                       Squash all layers into a single layer
# @option --ssh* <string>                  SSH agent socket or keys to expose to the build.
# @flag --stdin                            pass stdin into containers
# @option -t --tag <name>                  tagged name to apply to the built image
# @option --target <string>                set the target build stage to build
# @option --timestamp <int>                set created timestamp to the specified epoch seconds to allow for deterministic builds, defaults to current time
# @flag --tls-verify                       require HTTPS and verify certificates when accessing the registry (default true)
# @option --ulimit <strings>               ulimit options
# @option --userns <path>                  'container', path of user namespace to join, or 'host'
# @option --userns-gid-map <containerGID:hostGID:length>  containerGID:hostGID:length GID mapping to use in user namespace
# @option --userns-gid-map-group <name>    name of entries from /etc/subgid to use to set user namespace GID mapping
# @option --userns-uid-map <containerUID:hostUID:length>  containerUID:hostUID:length UID mapping to use in user namespace
# @option --userns-uid-map-user <name>     name of entries from /etc/subuid to use to set user namespace UID mapping
# @option --uts <path>                     private, :path of UTS namespace to join, or 'host'
# @option --variant <variant>              override the variant of the specified image
# @option -v --volume* <string>            bind mount a volume into the container
# @arg context
image::build() {
    :;
}
# }}} podman image build

# {{{ podman image diff
# @cmd Inspect changes to the image's file systems
# @option --format <string>    Change the output format (json)
# @arg image[`_module_oci_podman_image`]
image::diff() {
    :;
}
# }}} podman image diff

# {{{ podman image exists
# @cmd Check if an image exists in local storage
# @arg image[`_module_oci_podman_image`]
image::exists() {
    :;
}
# }}} podman image exists

# {{{ podman image history
# @cmd Show history of a specified image
# @option --format <string>    Change the output to JSON or a Go template
# @flag -H --human             Display sizes and dates in human readable format (default true)
# @flag --no-trunc             Do not truncate the output
# @flag --notruncate           Do not truncate the output
# @flag -q --quiet             Display the numeric IDs only
# @arg image[`_module_oci_podman_image`]
image::history() {
    :;
}
# }}} podman image history

# {{{ podman image import
# @cmd Import a tarball to create a filesystem image
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -m --message <string>    Set commit message for imported image
# @flag -q --quiet                 Suppress output
# @arg path
# @arg reference
image::import() {
    :;
}
# }}} podman image import

# {{{ podman image inspect
# @cmd Display the configuration of an image
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @arg image*[`_module_oci_podman_image`]
image::inspect() {
    :;
}
# }}} podman image inspect

# {{{ podman image list
# @cmd List images in local storage
# @alias ls
# @flag -a --all                   Show all images (default hides intermediate images)
# @flag --digests                  Show digests
# @option -f --filter <strings>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @flag --history                  Display the image name history
# @flag --no-trunc                 Do not truncate output
# @flag -n --noheading             Do not print column headings
# @flag -q --quiet                 Display only image IDs
# @option --sort <string>          Sort by id, repository, size, tag, created (default "created")
# @arg image[`_module_oci_podman_image`]
image::list() {
    :;
}
# }}} podman image list

# {{{ podman image load
# @cmd Load image(s) from a tar archive
# @option -i --input <file>    Read from specified archive file (default: stdin)
# @flag -q --quiet             Suppress the output
image::load() {
    :;
}
# }}} podman image load

# {{{ podman image mount
# @cmd Mount an image's root filesystem
# @flag -a --all               Mount all images
# @option --format <string>    Print the mounted images in specified format (json)
# @arg image*[`_module_oci_podman_image`]
image::mount() {
    :;
}
# }}} podman image mount

# {{{ podman image prune
# @cmd Remove unused images
# @flag -a --all                Remove all images not in use by containers, not just dangling ones
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation
image::prune() {
    :;
}
# }}} podman image prune

# {{{ podman image pull
# @cmd Pull an image from a registry
# @flag --all-tags                 All tagged images in the repository will be pulled
# @option --arch                   Use ARCH instead of the architecture of the machine for choosing images
# @option --authfile <file>        Path of the authentication file.
# @option --cert-dir <Pathname>    Pathname of a directory containing TLS certificates and keys
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @flag --disable-content-trust    This is a Docker specific option and is a NOOP
# @option --os                     Use OS instead of the running OS for choosing images
# @option --platform <string>      Specify the platform for selecting the image.
# @flag -q --quiet                 Suppress output information when pulling images
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @option --variant <string>       Use VARIANT instead of the running architecture variant for choosing images
# @arg image*[`_module_oci_podman_image`]
image::pull() {
    :;
}
# }}} podman image pull

# {{{ podman image push
# @cmd Push an image to a specified destination
# @option --authfile <file>        Path of the authentication file.
# @option --cert-dir <dir>         Path to a directory containing TLS certificates and keys
# @flag --compress                 Compress tarball image layers when pushing to a directory using the 'dir' transport.
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option --digestfile <file>      Write the digest of the pushed image to the specified file
# @flag --disable-content-trust    This is a Docker specific option and is a NOOP
# @option -f --format <path>       Manifest type (oci, v2s2, or v2s1) to use in the destination (default is manifest type of source, with fallbacks)
# @flag -q --quiet                 Suppress output information when pushing images
# @flag --remove-signatures        Discard any pre-existing signatures in the image
# @option --sign-by <path>         Add a signature at the destination using the specified key
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @arg image[`_module_oci_podman_image`]
# @arg destination
image::push() {
    :;
}
# }}} podman image push

# {{{ podman image rm
# @cmd Removes one or more images from local storage
# @flag -a --all      Remove all images
# @flag -f --force    Force Removal of the image
# @arg image*[`_module_oci_podman_image`]
image::rm() {
    :;
}
# }}} podman image rm

# {{{ podman image save
# @cmd Save image(s) to an archive
# @flag --compress                  Compress tarball image layers when saving to a directory using the 'dir' transport.
# @option --format <dir>            Save image to oci-archive, oci-dir (directory with oci manifest type), docker-archive, docker-dir (directory with v2s2 manifest type) (default "docker-archive")
# @flag -m --multi-image-archive    Interpret additional arguments as images not tags and create a multi-image-archive (only for docker-archive)
# @option -o --output <dir>         Write to a specified file (default: stdout, which must be redirected)
# @flag -q --quiet                  Suppress the output
# @arg image*[`_module_oci_podman_image`]
image::save() {
    :;
}
# }}} podman image save

# {{{ podman image scp
# @cmd securely copy images
# @flag -q --quiet    Suppress the output
# @arg image[`_module_oci_podman_image`]
# @arg host <HOST::>
image::scp() {
    :;
}
# }}} podman image scp

# {{{ podman image search
# @cmd Search registry for image
# @option --authfile <file>        Path of the authentication file.
# @option -f --filter <strings>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @option --limit <int>            Limit the number of results
# @flag --list-tags                List the tags of the input registry
# @flag --no-trunc                 Do not truncate the output
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @arg term
image::search() {
    :;
}
# }}} podman image search

# {{{ podman image sign
# @cmd Sign an image
# @flag -a --all                   Sign all the manifests of the multi-architecture image
# @option --cert-dir <Pathname>    Pathname of a directory containing TLS certificates and keys
# @option -d --directory <dir>     Define an alternate directory to store signatures
# @option --sign-by <string>       Name of the signing key
# @arg image*[`_module_oci_podman_image`]
image::sign() {
    :;
}
# }}} podman image sign

# {{{ podman image tag
# @cmd Add an additional name to a local image
# @arg image[`_module_oci_podman_image`]
# @arg target_name*
image::tag() {
    :;
}
# }}} podman image tag

# {{{ podman image tree
# @cmd Prints layer hierarchy of an image in a tree format
# @flag --whatrequires    Show all child images and layers of the specified image
# @arg image[`_module_oci_podman_image`]
image::tree() {
    :;
}
# }}} podman image tree

# {{{ podman image trust
# @cmd Manage container image trust policy
image::trust() {
    :;
}

# {{{{ podman image trust set
# @cmd Set default trust policy or a new trust policy for a registry
# @option -f --pubkeysfile <files>    Path of installed public key(s) to trust for TARGET.
# @option -t --type <string>          Trust type, accept values: signedBy(default), accept, reject (default "signedBy")
# @arg registry
image::trust::set() {
    :;
}
# }}}} podman image trust set

# {{{{ podman image trust show
# @cmd Display trust policy for the system
# @flag -j --json    Output as json
# @flag --raw        Output raw policy file
# @arg registry
image::trust::show() {
    :;
}
# }}}} podman image trust show
# }}} podman image trust

# {{{ podman image unmount
# @cmd Unmount an image's root filesystem
# @alias umount
# @flag -a --all      Unmount all of the currently mounted images
# @flag -f --force    Force the complete unmount of the specified mounted images
# @arg image*[`_module_oci_podman_image`]
image::unmount() {
    :;
}
# }}} podman image unmount

# {{{ podman image untag
# @cmd Remove a name from a local image
# @arg image*[`_module_oci_podman_image`]
image::untag() {
    :;
}
# }}} podman image untag
# }} podman image

# {{ podman images
# @cmd List images in local storage
# @flag -a --all                   Show all images (default hides intermediate images)
# @flag --digests                  Show digests
# @option -f --filter <strings>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @flag --history                  Display the image name history
# @flag --no-trunc                 Do not truncate output
# @flag -n --noheading             Do not print column headings
# @flag -q --quiet                 Display only image IDs
# @option --sort <string>          Sort by created, id, repository, size, tag (default "created")
# @arg image[`_module_oci_podman_image`]
images() {
    :;
}
# }} podman images

# {{ podman import
# @cmd Import a tarball to create a filesystem image
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -m --message <string>    Set commit message for imported image
# @flag -q --quiet                 Suppress output
# @arg path
# @arg reference
import() {
    :;
}
# }} podman import

# {{ podman info
# @cmd Display podman system information
# @flag -D --debug                Display additional debug information
# @option -f --format <string>    Change the output format to JSON or a Go template
info() {
    :;
}
# }} podman info

# {{ podman init
# @cmd Initialize one or more containers
# @flag -a --all       Initialize all containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
init() {
    :;
}
# }} podman init

# {{ podman inspect
# @cmd Display the configuration of object denoted by ID
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -s --size                 Display total file size
# @option -t --type <string>      Specify inspect-object type ("image", "container" or "all") (default "all")
# @arg container-image-pod-network-volume <CONTAINER|IMAGE|POD|NETWORK|VOLUME>
inspect() {
    :;
}
# }} podman inspect

# {{ podman kill
# @cmd Kill one or more running containers with a specific signal
# @flag -a --all                  Signal all running containers
# @option --cidfile* <file>       Read the container ID from the file
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -s --signal <string>    Signal to send to the container (default "KILL")
# @arg container*[`_choice_container`]
kill() {
    :;
}
# }} podman kill

# {{ podman load
# @cmd Load image(s) from a tar archive
# @option -i --input <file>    Read from specified archive file (default: stdin)
# @flag -q --quiet             Suppress the output
load() {
    :;
}
# }} podman load

# {{ podman login
# @cmd Login to a container registry
# @option --authfile <file>         path of the authentication file.
# @option --cert-dir <dir>          use certificates at the specified path to access the registry
# @flag --get-login                 Return the current login user for the registry
# @option -p --password <string>    Password for registry
# @flag --password-stdin            Take the password from stdin
# @flag --tls-verify                Require HTTPS and verify certificates when contacting registries
# @option -u --username <string>    Username for registry
# @flag -v --verbose                Write more detailed information to stdout
# @arg registry
login() {
    :;
}
# }} podman login

# {{ podman logout
# @cmd Logout of a container registry
# @flag -a --all               Remove the cached credentials for all registries in the auth file
# @option --authfile <file>    path of the authentication file.
# @arg registry
logout() {
    :;
}
# }} podman logout

# {{ podman logs
# @cmd Fetch the logs of one or more containers
# @flag -f --follow           Follow log output.
# @flag -l --latest           Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -n --names            Output the container name in the log
# @option --since <string>    Show logs since TIMESTAMP
# @option --tail <int>        Output the specified number of LINES at the end of the logs.
# @flag -t --timestamps       Output the timestamps in the log
# @option --until <string>    Show logs until TIMESTAMP
# @arg container*[`_choice_container`]
logs() {
    :;
}
# }} podman logs

# {{ podman machine
# @cmd Manage a virtual machine
machine() {
    :;
}

# {{{ podman machine init
# @cmd Initialize a virtual machine
# @option --cpus <uint>             Number of CPUs (default 1)
# @option --disk-size <uint>        Disk size in GB (default 10)
# @option --ignition-path <file>    Path to ignition file
# @option --image-path <path>       Path to qcow image (default "testing")
# @option -m --memory <uint>        Memory in MB (default 2048)
# @arg name
machine::init() {
    :;
}
# }}} podman machine init

# {{{ podman machine list
# @cmd List machines
# @alias ls
# @option --format <string>    Format volume output using Go template (default "{{.Name}}\t{{.VMType}}\t{{.Created}}\t{{.LastUp}}\t{{.CPUs}}\t{{.Memory}}\t{{.DiskSize}}\n")
# @flag --noheading            Do not print headers
machine::list() {
    :;
}
# }}} podman machine list

# {{{ podman machine rm
# @cmd Remove an existing machine
# @flag --force            Do not prompt before rming
# @flag --save-ignition    Do not delete ignition file
# @flag --save-image       Do not delete the image file
# @flag --save-keys        Do not delete SSH keys
# @arg machine
machine::rm() {
    :;
}
# }}} podman machine rm

# {{{ podman machine ssh
# @cmd SSH into an existing machine
# @arg name
machine::ssh() {
    :;
}
# }}} podman machine ssh

# {{{ podman machine start
# @cmd Start an existing machine
# @arg machine
machine::start() {
    :;
}
# }}} podman machine start

# {{{ podman machine stop
# @cmd Stop an existing machine
# @arg machine
machine::stop() {
    :;
}
# }}} podman machine stop
# }} podman machine

# {{ podman manifest
# @cmd Manipulate manifest lists and image indexes
manifest() {
    :;
}

# {{{ podman manifest add
# @cmd Add images to a manifest list or image index
# @flag --all                              add all of the list's images if the image is a list
# @option --annotation <annotation>        set an annotation for the specified image
# @option --arch <architecture>            override the architecture of the specified image
# @option --authfile <file>                path of the authentication file.
# @option --cert-dir <dir>                 use certificates at the specified path to access the registry
# @option --creds <username[:password]>    use [username[:password]] for accessing the registry
# @option --features <features>            override the features of the specified image
# @option --os                             override the OS of the specified image
# @option --os-version <version>           override the OS version of the specified image
# @flag --tls-verify                       require HTTPS and verify certificates when accessing the registry (default true)
# @option --variant <Variant>              override the Variant of the specified image
# @arg list
manifest::add() {
    :;
}
# }}} podman manifest add

# {{{ podman manifest annotate
# @cmd Add or update information about an entry in a manifest list or image index
# @option --annotation <annotation>    set an annotation for the specified image
# @option --arch <architecture>        override the architecture of the specified image
# @option --features <features>        override the features of the specified image
# @option --os                         override the OS of the specified image
# @option --os-features <features>     override the OS features of the specified image
# @option --os-version <version>       override the OS version of the specified image
# @option --variant <Variant>          override the Variant of the specified image
# @arg list
# @arg image[`_module_oci_podman_image`]
manifest::annotate() {
    :;
}
# }}} podman manifest annotate

# {{{ podman manifest create
# @cmd Create manifest list or image index
# @flag --all    add all of the lists' images if the images to add are lists
# @arg list
# @arg image*[`_module_oci_podman_image`]
manifest::create() {
    :;
}
# }}} podman manifest create

# {{{ podman manifest exists
# @cmd Check if a manifest list exists in local storage
# @arg manifest
manifest::exists() {
    :;
}
# }}} podman manifest exists

# {{{ podman manifest inspect
# @cmd Display the contents of a manifest list or image index
# @arg image[`_module_oci_podman_image`]
manifest::inspect() {
    :;
}
# }}} podman manifest inspect

# {{{ podman manifest push
# @cmd Push a manifest list or image index to a registry
# @flag --all                              also push the images in the list (default true)
# @option --authfile <file>                path of the authentication file.
# @option --cert-dir <dir>                 use certificates at the specified path to access the registry
# @option --creds <username[:password]>    use [username[:password]] for accessing the registry
# @option --digestfile <file>              after copying the image, write the digest of the resulting digest to the file
# @option -f --format <string>             manifest type (oci or v2s2) to attempt to use when pushing the manifest list (default is manifest type of source)
# @flag -q --quiet                         don't output progress information when pushing lists
# @flag --remove-signatures                don't copy signatures when pushing images
# @flag --rm                               remove the manifest list if push succeeds
# @option --sign-by <FINGERPRINT>          sign the image using a GPG key with the specified FINGERPRINT
# @flag --tls-verify                       require HTTPS and verify certificates when accessing the registry (default true)
# @arg list
# @arg destination
manifest::push() {
    :;
}
# }}} podman manifest push

# {{{ podman manifest remove
# @cmd Remove an entry from a manifest list or image index
# @arg list
# @arg image[`_module_oci_podman_image`]
manifest::remove() {
    :;
}
# }}} podman manifest remove

# {{{ podman manifest rm
# @cmd Remove manifest list or image index from local storage
# @arg list
manifest::rm() {
    :;
}
# }}} podman manifest rm
# }} podman manifest

# {{ podman mount
# @cmd Mount a working container's root filesystem
# @flag -a --all               Mount all containers
# @option --format <string>    Print the mounted containers in specified format (json)
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --notruncate           Do not truncate output
# @arg container*[`_choice_container`]
mount() {
    :;
}
# }} podman mount

# {{ podman network
# @cmd Manage networks
network() {
    :;
}

# {{{ podman network connect
# @cmd network connect
# @option --alias <strings>    network scoped alias for container
# @arg network[`_choice_network`]
# @arg container[`_choice_container`]
network::connect() {
    :;
}
# }}} podman network connect

# {{{ podman network create
# @cmd network create
# @flag --disable-dns             disable dns plugin
# @option -d --driver <string>    driver to manage the network (default "bridge")
# @option --gateway <ip>          IPv4 or IPv6 gateway for the subnet
# @flag --internal                restrict external access from this network
# @option --ip-range <ipNet>      allocate container IP from range
# @flag --ipv6                    enable IPv6 networking
# @option --label* <string>       set metadata on a network
# @option -o --opt* <string>      Set driver specific options (default [])
# @option --subnet <ipNet>        subnet in CIDR format
# @arg name
network::create() {
    :;
}
# }}} podman network create

# {{{ podman network disconnect
# @cmd network rm
# @flag -f --force    force removal of container from network
# @arg network[`_choice_network`]
# @arg container[`_choice_container`]
network::disconnect() {
    :;
}
# }}} podman network disconnect

# {{{ podman network exists
# @cmd network exists
# @arg network[`_choice_network`]
network::exists() {
    :;
}
# }}} podman network exists

# {{{ podman network inspect
# @cmd Displays the raw CNI network configuration for one or more networks.
# @option -f --format <string>    Pretty-print network to JSON or using a Go template
# @arg network*[`_choice_network`]
network::inspect() {
    :;
}
# }}} podman network inspect

# {{{ podman network ls
# @cmd network list
# @option -f --filter* <string>    Provide filter values (e.g. 'name=podman')
# @option --format <string>        Pretty-print networks to JSON or using a Go template
# @flag --no-trunc                 Do not truncate the network ID
# @flag --noheading                Do not print headers
# @flag -q --quiet                 display only names
network::ls() {
    :;
}
# }}} podman network ls

# {{{ podman network prune
# @cmd network prune
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              do not prompt for confirmation
network::prune() {
    :;
}
# }}} podman network prune

# {{{ podman network reload
# @cmd Reload firewall rules for one or more containers
# @flag -a --all       Reload network configuration of all containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
network::reload() {
    :;
}
# }}} podman network reload

# {{{ podman network remove
# @cmd network rm
# @alias rm
# @flag -f --force    remove any containers using network
# @arg network*[`_choice_network`]
network::remove() {
    :;
}
# }}} podman network remove
# }} podman network

# {{ podman pause
# @cmd Pause all the processes in one or more containers
# @flag -a --all    Pause all running containers
# @arg container*[`_choice_container`]
pause() {
    :;
}
# }} podman pause

# {{ podman play
# @cmd Play containers, pods or volumes from a structured file
play() {
    :;
}

# {{{ podman play kube
# @cmd Play a pod or volume based on Kubernetes YAML.
# @option --authfile <file>                        Path of the authentication file.
# @flag --build                                    Build all images in a YAML (given Containerfiles exist)
# @option --cert-dir <Pathname>                    Pathname of a directory containing TLS certificates and keys
# @option --configmap <Pathname>                   Pathname of a YAML file containing a kubernetes configmap
# @option --creds <Credentials>                    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @flag --down                                     Stop pods defined in the YAML file
# @option --ip <ipSlice>                           Static IP addresses to assign to the pods (default [])
# @option --log-driver <string>                    Logging driver for the container
# @option --mac-address <strings>                  Static MAC addresses to assign to the pods
# @option --network[`_choice_network`] <string>    Connect pod to CNI network(s)
# @flag -q --quiet                                 Suppress output information when pulling images
# @option --seccomp-profile-root <file>            Directory path for seccomp profiles (default "/var/lib/kubelet/seccomp")
# @flag --start                                    Start the pod after creating it (default true)
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries (default true)
# @arg kubefile <KUBEFILE|->
play::kube() {
    :;
}
# }}} podman play kube
# }} podman play

# {{ podman pod
# @cmd Manage pods
pod() {
    :;
}

# {{{ podman pod create
# @cmd Create a new empty pod
# @option --add-host <strings>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --dns <strings>                          Set custom DNS servers
# @option --dns-opt <strings>                      Set custom DNS options
# @option --dns-search <strings>                   Set custom DNS search domains
# @option --gidmap <strings>                       GID map to use for the user namespace
# @option -h --hostname <string>                   Set container hostname
# @flag --infra                                    Create an infra container associated with the pod to share namespaces with (default true)
# @option --infra-command <string>                 Overwrite the default ENTRYPOINT of the image
# @option --infra-conmon-pidfile <file>            Path to the file that will receive the PID of conmon
# @option --infra-image <string>                   The image of the infra container to associate with the pod (default "k8s.gcr.io/pause:3.5")
# @option --infra-name <string>                    Assign a name to the container
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option -l --label* <string>                     Set metadata on container
# @option --label-file <files>                     Read in a line delimited file of labels
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -n --name <string>                       Assign a name to the pod
# @option --network[`_choice_network`] <string>    Connect a container to a network
# @option --network-alias <strings>                Add network-scoped alias for the container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @option --pid <string>                           PID namespace to use
# @option --pod-id-file <file>                     Write the pod ID to the file
# @option -p --publish <strings>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag --replace                                  If a pod with the same name exists, replace it
# @option --share <string>                         A comma delimited list of kernel namespaces the pod will share (default "cgroup,ipc,net,uts")
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --uidmap <strings>                       UID map to use for the user namespace
# @option --userns <string>                        User namespace to use
pod::create() {
    :;
}
# }}} podman pod create

# {{{ podman pod exists
# @cmd Check if a pod exists in local storage
# @arg pod[`_choice_pod`]
pod::exists() {
    :;
}
# }}} podman pod exists

# {{{ podman pod inspect
# @cmd Displays a pod configuration
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg pod*[`_choice_pod`]
pod::inspect() {
    :;
}
# }}} podman pod inspect

# {{{ podman pod kill
# @cmd Send the specified signal or SIGKILL to containers in pod
# @flag -a --all                  Kill all containers in all pods
# @flag -l --latest               Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -s --signal <string>    Signal to send to the containers in the pod (default "KILL")
# @arg pod*[`_choice_pod`]
pod::kill() {
    :;
}
# }}} podman pod kill

# {{{ podman pod logs
# @cmd Fetch logs for pod with one or more containers
# @option -c --container <string>    Filter logs by container name or id which belongs to pod
# @flag -f --follow                  Follow log output.
# @flag -l --latest                  Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --since <string>           Show logs since TIMESTAMP
# @option --tail <int>               Output the specified number of LINES at the end of the logs.
# @flag -t --timestamps              Output the timestamps in the log
# @option --until <string>           Show logs until TIMESTAMP
# @arg pod[`_choice_pod`]
pod::logs() {
    :;
}
# }}} podman pod logs

# {{{ podman pod pause
# @cmd Pause one or more pods
# @flag -a --all       Pause all running pods
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg pod*[`_choice_pod`]
pod::pause() {
    :;
}
# }}} podman pod pause

# {{{ podman pod prune
# @cmd Remove all stopped pods and their containers
# @flag -f --force    Do not prompt for confirmation.
pod::prune() {
    :;
}
# }}} podman pod prune

# {{{ podman pod list
# @cmd List pods
# @alias ps,ls
# @flag --ctr-ids                  Display the container UUIDs.
# @flag --ctr-names                Display the container names
# @flag --ctr-status               Display the container status
# @option -f --filter <strings>    Filter output based on conditions given
# @option --format <string>        Pretty-print pods to JSON or using a Go template
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-trunc                 Do not truncate pod and container IDs
# @flag --noheading                Do not print headers
# @flag --ns                       Display namespace information of the pod
# @flag -q --quiet                 Print the numeric IDs of the pods only
# @option --sort <string>          Sort output by created, id, name, or number (default "created")
pod::list() {
    :;
}
# }}} podman pod list

# {{{ podman pod restart
# @cmd Restart one or more pods
# @flag -a --all       Restart all running pods
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg pod*[`_choice_pod`]
pod::restart() {
    :;
}
# }}} podman pod restart

# {{{ podman pod rm
# @cmd Remove one or more pods
# @flag -a --all                   Remove all running pods
# @flag -f --force                 Force removal of a running pod by first stopping all containers, then removing all containers in the pod.
# @flag -i --ignore                Ignore errors when a specified pod is missing
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --pod-id-file* <file>    Read the pod ID from the file
# @arg pod*[`_choice_pod`]
pod::rm() {
    :;
}
# }}} podman pod rm

# {{{ podman pod start
# @cmd Start one or more pods
# @flag -a --all                   Restart all running pods
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --pod-id-file* <file>    Read the pod ID from the file
# @arg pod*[`_choice_pod`]
pod::start() {
    :;
}
# }}} podman pod start

# {{{ podman pod stats
# @cmd Display a live stream of resource usage statistics for the containers in one or more pods
# @flag -a --all               Provide stats for all pods
# @option --format <string>    Pretty-print container statistics to JSON or using a Go template
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-reset             Disable resetting the screen when streaming
# @flag --no-stream            Disable streaming stats and only pull the first result
# @arg pod*[`_choice_pod`]
pod::stats() {
    :;
}
# }}} podman pod stats

# {{{ podman pod stop
# @cmd Stop one or more pods
# @flag -a --all                   Stop all running pods
# @flag -i --ignore                Ignore errors when a specified pod is missing
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option --pod-id-file* <file>    Write the pod ID to the file
# @option -t --time <uint>         Seconds to wait for pod stop before killing the container (default 10)
# @arg pod*[`_choice_pod`]
pod::stop() {
    :;
}
# }}} podman pod stop

# {{{ podman pod top
# @cmd Display the running processes of containers in a pod
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg pod[`_choice_pod`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
pod::top() {
    :;
}
# }}} podman pod top

# {{{ podman pod unpause
# @cmd Unpause one or more pods
# @flag -a --all       Pause all running pods
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg pod*[`_choice_pod`]
pod::unpause() {
    :;
}
# }}} podman pod unpause
# }} podman pod

# {{ podman port
# @cmd List port mappings or a specific mapping for the container
# @flag -a --all       Display port information for all containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container[`_choice_container`]
# @arg port
port() {
    :;
}
# }} podman port

# {{ podman ps
# @cmd List containers
# @flag -a --all                   Show all the containers, default is only running containers
# @flag --external                 Show containers in storage not controlled by Podman
# @option -f --filter <strings>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-trunc                 Display the extended information
# @flag --noheading                Do not print headers
# @flag --ns                       Display namespace information
# @flag -p --pod                   Print the ID and name of the pod the containers are associated with
# @flag -q --quiet                 Print the numeric IDs of the containers only
# @flag -s --size                  Display the total file sizes
# @option --sort[command|created|id|image|names|runningfor|size|status] <choice>  Sort output by: command, created, id, image, names, runningfor, size, status
# @flag --sync                     Sync container state with OCI runtime
# @option -w --watch <uint>        Watch the ps output on an interval in seconds
ps() {
    :;
}
# }} podman ps

# {{ podman pull
# @cmd Pull an image from a registry
# @flag --all-tags                 All tagged images in the repository will be pulled
# @option --arch                   Use ARCH instead of the architecture of the machine for choosing images
# @option --authfile <file>        Path of the authentication file.
# @option --cert-dir <Pathname>    Pathname of a directory containing TLS certificates and keys
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @flag --disable-content-trust    This is a Docker specific option and is a NOOP
# @option --os                     Use OS instead of the running OS for choosing images
# @option --platform <string>      Specify the platform for selecting the image.
# @flag -q --quiet                 Suppress output information when pulling images
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @option --variant <string>       Use VARIANT instead of the running architecture variant for choosing images
# @arg image*[`_module_oci_podman_image`]
pull() {
    :;
}
# }} podman pull

# {{ podman push
# @cmd Push an image to a specified destination
# @option --authfile <file>        Path of the authentication file.
# @option --cert-dir <dir>         Path to a directory containing TLS certificates and keys
# @flag --compress                 Compress tarball image layers when pushing to a directory using the 'dir' transport.
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option --digestfile <file>      Write the digest of the pushed image to the specified file
# @flag --disable-content-trust    This is a Docker specific option and is a NOOP
# @option -f --format <path>       Manifest type (oci, v2s2, or v2s1) to use in the destination (default is manifest type of source, with fallbacks)
# @flag -q --quiet                 Suppress output information when pushing images
# @flag --remove-signatures        Discard any pre-existing signatures in the image
# @option --sign-by <path>         Add a signature at the destination using the specified key
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @arg image[`_module_oci_podman_image`]
# @arg destination
push() {
    :;
}
# }} podman push

# {{ podman rename
# @cmd Rename an existing container
# @arg container[`_choice_container`]
# @arg name
rename() {
    :;
}
# }} podman rename

# {{ podman restart
# @cmd Restart one or more containers
# @flag -a --all              Restart all non-running containers
# @flag -l --latest           Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --running             Restart only running containers when --all is used
# @option -t --time <uint>    Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
restart() {
    :;
}
# }} podman restart

# {{ podman rm
# @cmd Remove one or more containers
# @flag -a --all               Remove all containers
# @option --cidfile* <file>    Read the container ID from the file
# @flag -f --force             Force removal of a running or unusable container.
# @flag -i --ignore            Ignore errors when a specified container is missing
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag -v --volumes           Remove anonymous volumes associated with the container
# @arg container*[`_choice_container`]
rm() {
    :;
}
# }} podman rm

# {{ podman rmi
# @cmd Removes one or more images from local storage
# @flag -a --all      Remove all images
# @flag -f --force    Force Removal of the image
# @arg image*[`_module_oci_podman_image`]
rmi() {
    :;
}
# }} podman rmi

# {{ podman run
# @cmd Run a command in a new container
# @option --add-host <strings>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation <strings>                   Add annotations to container (key:value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach <strings>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add <strings>                      Add capabilities to the container
# @option --cap-drop <strings>                     Drop capabilities from the container
# @option --cgroup-conf <strings>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration (default "enabled")
# @option --cidfile <file>                         Write the container ID to the file
# @option --conmon-pidfile <file>                  Path to the file that will receive the PID of conmon
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option --cpu-shares <uint>                      CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag -d --detach                                Run container in background and print container ID
# @option --detach-keys <a-Z>                      Override the key sequence for detaching a container.
# @option --device <strings>                       Add a host device to the container
# @option --device-cgroup-rule <strings>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps <strings>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops <strings>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps <strings>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops <strings>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns <strings>                          Set custom DNS servers
# @option --dns-opt <strings>                      Set custom DNS options
# @option --dns-search <strings>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container (default [PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin,TERM=xterm])
# @option --env-file <files>                       Read in a file of environment variables
# @flag --env-host                                 Use all current host environment variables in container
# @option --expose <strings>                       Expose a port or a range of ports
# @option --gidmap <strings>                       GID map to use for the user namespace
# @option --group-add <strings>                    Add additional groups to the primary container process.
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthchecks (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @option -h --hostname <string>                   Set container hostname
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option --kernel-memory <<number>[<unit>]>       Kernel memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option -l --label* <string>                     Set metadata on container
# @option --label-file <files>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container (default "journald")
# @option --log-opt <strings>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network[`_choice_network`] <string>    Connect a container to a network
# @option --network-alias <strings>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pidfile <file>                         Write the container process ID to the file
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default 2048)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @option --preserve-fds <uint>                    Pass a number of additional file descriptors into the container
# @flag --privileged                               Give extended privileges to container
# @option -p --publish <strings>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never] <string>    Pull image before creating (default "missing")
# @flag -q --quiet                                 Suppress output information when pulling images
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running containers in read-only mode mount a read-write tmpfs on /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires <strings>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container (and pod if created) after exit
# @flag --rmi                                      Remove container image unless used by other containers
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kilobytes), m (megabytes), or g (gigabytes)) (default "65536k")
# @flag --sig-proxy                                Proxy received signals to the process (default true)
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl <strings>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap <strings>                       UID map to use for the user namespace
# @option --ulimit <strings>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
run() {
    :;
}
# }} podman run

# {{ podman save
# @cmd Save image(s) to an archive
# @flag --compress                  Compress tarball image layers when saving to a directory using the 'dir' transport.
# @option --format <dir>            Save image to oci-archive, oci-dir (directory with oci manifest type), docker-archive, docker-dir (directory with v2s2 manifest type) (default "docker-archive")
# @flag -m --multi-image-archive    Interpret additional arguments as images not tags and create a multi-image-archive (only for docker-archive)
# @option -o --output <dir>         Write to a specified file (default: stdout, which must be redirected)
# @flag -q --quiet                  Suppress the output
# @arg image*[`_module_oci_podman_image`]
save() {
    :;
}
# }} podman save

# {{ podman search
# @cmd Search registry for image
# @option --authfile <file>        Path of the authentication file.
# @option -f --filter <strings>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @option --limit <int>            Limit the number of results
# @flag --list-tags                List the tags of the input registry
# @flag --no-trunc                 Do not truncate the output
# @flag --tls-verify               Require HTTPS and verify certificates when contacting registries (default true)
# @arg term
search() {
    :;
}
# }} podman search

# {{ podman secret
# @cmd Manage secrets
secret() {
    :;
}

# {{{ podman secret create
# @cmd Create a new secret
# @option --driver <file>                   Specify secret driver (default "file")
# @option --driver-opts <stringToString>    Specify driver specific options (default [])
# @flag --env                               Read secret data from environment variable
# @arg name
# @arg file <FILE|->
secret::create() {
    :;
}
# }}} podman secret create

# {{{ podman secret inspect
# @cmd Inspect a secret
# @option --format <string>    Format volume output using Go template
# @arg secret*[`_choice_secret`]
secret::inspect() {
    :;
}
# }}} podman secret inspect

# {{{ podman secret list
# @cmd List secrets
# @alias ls
# @option --format <string>    Format volume output using Go template (default "{{.ID}}\t{{.Name}}\t{{.Driver}}\t{{.CreatedAt}}\t{{.UpdatedAt}}\t\n")
# @flag --noheading            Do not print headers
secret::list() {
    :;
}
# }}} podman secret list

# {{{ podman secret rm
# @cmd Remove one or more secrets
# @flag -a --all    Remove all secrets
# @arg secret*[`_choice_secret`]
secret::rm() {
    :;
}
# }}} podman secret rm
# }} podman secret

# {{ podman start
# @cmd Start one or more containers
# @flag --all                      Start all containers regardless of their state or configuration
# @flag -a --attach                Attach container's STDOUT and STDERR
# @option --detach-keys <a-Z>      Select the key sequence for detaching a container.
# @option -f --filter <strings>    Filter output based on conditions given
# @flag -i --interactive           Keep STDIN open even if not attached
# @flag -l --latest                Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --sig-proxy                Proxy received signals to the process (default true if attaching, false otherwise)
# @arg container*[`_choice_container`]
start() {
    :;
}
# }} podman start

# {{ podman stats
# @cmd Display a live stream of container resource usage statistics
# @flag -a --all                 Show all containers.
# @option --format <string>      Pretty-print container statistics to JSON or using a Go template
# @option -i --interval <int>    Time in seconds between stats reports (default 5)
# @flag -l --latest              Act on the latest container podman is aware of Not supported with the "--remote" flag
# @flag --no-reset               Disable resetting the screen between intervals
# @flag --no-stream              Disable streaming stats and only pull the first result, default setting is false
# @arg container*[`_choice_container`]
stats() {
    :;
}
# }} podman stats

# {{ podman stop
# @cmd Stop one or more containers
# @flag -a --all               Stop all running containers
# @option --cidfile* <file>    Read the container ID from the file
# @flag -i --ignore            Ignore errors when a specified container is missing
# @flag -l --latest            Act on the latest container podman is aware of Not supported with the "--remote" flag
# @option -t --time <uint>     Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
stop() {
    :;
}
# }} podman stop

# {{ podman system
# @cmd Manage podman
system() {
    :;
}

# {{{ podman system connection
# @cmd Manage remote ssh destinations
system::connection() {
    :;
}

# {{{{ podman system connection add
# @cmd Record destination for the Podman service
# @flag -d --default              Set connection to be default
# @option --identity <file>       path to SSH identity file
# @option -p --port <int>         SSH port number for destination (default 22)
# @option --socket-path <path>    path to podman socket on remote host.
# @arg name
# @arg destination
system::connection::add() {
    :;
}
# }}}} podman system connection add

# {{{{ podman system connection default
# @cmd Set named destination as default
# @arg name
system::connection::default() {
    :;
}
# }}}} podman system connection default

# {{{{ podman system connection list
# @cmd List destination for the Podman service(s)
# @option --format <string>    Custom Go template for printing connections
system::connection::list() {
    :;
}
# }}}} podman system connection list

# {{{{ podman system connection remove
# @cmd Delete named destination
# @alias rm
# @arg name
system::connection::remove() {
    :;
}
# }}}} podman system connection remove

# {{{{ podman system connection rename
# @cmd Rename "old" to "new"
# @alias mv
# @arg old
# @arg new
system::connection::rename() {
    :;
}
# }}}} podman system connection rename
# }}} podman system connection

# {{{ podman system df
# @cmd Show podman disk usage
# @option --format <string>    Pretty-print images using a Go template
# @flag -v --verbose           Show detailed information on disk usage
system::df() {
    :;
}
# }}} podman system df

# {{{ podman system info
# @cmd Display podman system information
# @flag -D --debug                Display additional debug information
# @option -f --format <string>    Change the output format to JSON or a Go template
system::info() {
    :;
}
# }}} podman system info

# {{{ podman system migrate
# @cmd Migrate containers
# @option --new-runtime <string>    Specify a new runtime for all containers
system::migrate() {
    :;
}
# }}} podman system migrate

# {{{ podman system prune
# @cmd Remove unused data
# @flag -a --all                Remove all unused data
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation.
# @flag --volumes               Prune volumes
system::prune() {
    :;
}
# }}} podman system prune

# {{{ podman system renumber
# @cmd Migrate lock numbers
system::renumber() {
    :;
}
# }}} podman system renumber

# {{{ podman system reset
# @cmd Reset podman storage
# @flag -f --force    Do not prompt for confirmation
system::reset() {
    :;
}
# }}} podman system reset

# {{{ podman system service
# @cmd Run API service
# @option --cors <string>    Set CORS Headers
# @option -t --time <int>    Time until the service session expires in seconds.
# @arg uri
system::service() {
    :;
}
# }}} podman system service
# }} podman system

# {{ podman tag
# @cmd Add an additional name to a local image
# @arg image[`_module_oci_podman_image`]
# @arg target_name*
tag() {
    :;
}
# }} podman tag

# {{ podman top
# @cmd Display the running processes of a container
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container[`_choice_container`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
top() {
    :;
}
# }} podman top

# {{ podman unmount
# @cmd Unmounts working container's root filesystem
# @alias umount
# @flag -a --all       Unmount all of the currently mounted containers
# @flag -f --force     Force the complete unmount of the specified mounted containers
# @flag -l --latest    Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
unmount() {
    :;
}
# }} podman unmount

# {{ podman unpause
# @cmd Unpause the processes in one or more containers
# @flag -a --all    Pause all running containers
# @arg container*[`_choice_container`]
unpause() {
    :;
}
# }} podman unpause

# {{ podman unshare
# @cmd Run a command in a modified user namespace
# @flag --rootless-cni    Join the rootless network namespace used for CNI networking
unshare() {
    :;
}
# }} podman unshare

# {{ podman untag
# @cmd Remove a name from a local image
# @arg image*[`_module_oci_podman_image`]
untag() {
    :;
}
# }} podman untag

# {{ podman version
# @cmd Display the Podman version information
# @option -f --format <string>    Change the output format to JSON or a Go template
version() {
    :;
}
# }} podman version

# {{ podman volume
# @cmd Manage volumes
volume() {
    :;
}

# {{{ podman volume create
# @cmd Create a new volume
# @option --driver <string>       Specify volume driver name (default "local")
# @option -l --label <strings>    Set metadata for a volume (default [])
# @option -o --opt* <string>      Set driver specific options (default [])
# @arg name
volume::create() {
    :;
}
# }}} podman volume create

# {{{ podman volume exists
# @cmd volume exists
# @arg volume[`_choice_volume`]
volume::exists() {
    :;
}
# }}} podman volume exists

# {{{ podman volume export
# @cmd Export volumes
# @option -o --output <dir>    Write to a specified file (default: stdout, which must be redirected) (default "/dev/stdout")
# @arg volume[`_choice_volume`]
volume::export() {
    :;
}
# }}} podman volume export

# {{{ podman volume import
# @cmd Import a tarball contents into a podman volume
# @arg volume[`_choice_volume`]
# @arg source
volume::import() {
    :;
}
# }}} podman volume import

# {{{ podman volume inspect
# @cmd Display detailed information on one or more volumes
# @flag -a --all                  Inspect all volumes
# @option -f --format <string>    Format volume output using Go template (default "json")
# @arg volume*[`_choice_volume`]
volume::inspect() {
    :;
}
# }}} podman volume inspect

# {{{ podman volume list
# @cmd List volumes
# @alias ls
# @option -f --filter <strings>    Filter volume output
# @option --format <string>        Format volume output using Go template (default "{{.Driver}}\t{{.Name}}\n")
# @flag --noheading                Do not print headers
# @flag -q --quiet                 Print volume output in quiet mode
volume::list() {
    :;
}
# }}} podman volume list

# {{{ podman volume prune
# @cmd Remove all unused volumes
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation
volume::prune() {
    :;
}
# }}} podman volume prune

# {{{ podman volume remove
# @cmd Remove one or more volumes
# @alias rm
# @flag -a --all      Remove all volumes
# @flag -f --force    Remove a volume by force, even if it is being used by a container
# @arg volume*[`_choice_volume`]
volume::remove() {
    :;
}
# }}} podman volume remove
# }} podman volume

# {{ podman wait
# @cmd Block on one or more containers
# @option --condition <string>      Condition to wait on (default "stopped")
# @option -i --interval <string>    Time Interval to wait before polling for completion (default "250ms")
# @flag -l --latest                 Act on the latest container podman is aware of Not supported with the "--remote" flag
# @arg container*[`_choice_container`]
wait() {
    :;
}
# }} podman wait

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_container() {
    podman ps --format json | yq '.[] | .Names[0] + "	" + .Image' 
}

_choice_pod() {
    podman pod list --format json | yq '.[].Name'
}

_choice_volume() {
    podman volume list --format json | yq '.[] | .Name + "	" + .Driver'
}

_choice_network() {
    podman network ls --format json | yq '.[].Name'
}

_choice_secret() {
    podman secret list --format '{{.Name}}'
}

_choice_container_cp() {
    _argc_util_mode_kv ':'
    _complete_container_path() {
        if [[ -z "$argc__kv_prefix" ]]; then
            echo "__argc_value=path"
            if ! _argc_util_is_path "$src"; then
                _choice_container | _argc_util_transform suffix=: nospace
            fi
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            podman exec "${argc__kv_key}" ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_container_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=path"
        else
            _complete_container_path
        fi
    fi
}

_module_oci_podman_image() {
    podman image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
}

command eval "$(argc --argc-eval "$0" "$@")"