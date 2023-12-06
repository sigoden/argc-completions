#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --connection <string>    Connection to use for remote Podman service
# @flag --help                        Help for podman
# @option --identity <file>           path to SSH identity file, (CONTAINER_SSHKEY)
# @option --log-level[trace|debug|info|warn|warning|error|fatal|panic] <string>  Log messages above specified level (default "warn")
# @option --out <file>                Send output (stdout) from podman to a file
# @option --ssh <string>              define the ssh mode (default "golang")
# @option --storage-opt* <string>     Used to pass an option to the storage driver
# @option --url <string>              URL to access Podman service (CONTAINER_HOST) (default "unix:///run/user/1000/podman/podman.sock")
# @flag -v --version                  version for podman

# {{ podman attach
# @cmd Attach to a running container
# @option --detach-keys <a-Z>    Select the key sequence for detaching a container.
# @flag --no-stdin               Do not attach STDIN.
# @flag --sig-proxy              Proxy received signals to the process (default true)
# @arg container[`_choice_container`]
attach() {
    :;
}
# }} podman attach

# {{ podman build
# @cmd Build an image using instructions from Containerfiles
# @option --add-host <host:ip>                   add a custom host-to-IP mapping (host:ip) (default [])
# @flag --all-platforms                          attempt to build for all base image platforms
# @option --annotation* <string>                 set metadata for an image (default [])
# @option --arch <string>                        set the ARCH of the image to the provided value instead of the architecture of the host (default "amd64")
# @option --authfile <file>                      path of the authentication file.
# @option --build-arg <argument=value>           argument=value to supply to the builder
# @option --build-arg-file <argfile.conf>        argfile.conf containing lines of argument=value to supply to the builder
# @option --build-context <argument=value>       argument=value to supply additional build context to the builder
# @option --cache-from* <string>                 remote repository list to utilise as potential cache source.
# @option --cache-to* <path>                     remote repository list to utilise as potential cache destination.
# @option --cache-ttl <string>                   only consider cache images under specified duration.
# @option --cap-add* <string>                    add the specified capability when running (default [])
# @option --cap-drop* <string>                   drop the specified capability when running (default [])
# @option --cert-dir <dir>                       use certificates at the specified path to access the registry
# @option --cgroup-parent <string>               optional parent cgroup for the container
# @option --cgroupns <string>                    'private', or 'host'
# @option --cpp-flag* <string>                   set additional flag to pass to C preprocessor (cpp)
# @option --cpu-period <uint>                    limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                      limit the CPU CFS (Completely Fair Scheduler) quota
# @option -c --cpu-shares <uint>                 CPU shares (relative weight)
# @option --cpuset-cpus <string>                 CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                 memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --creds <username[:password]>          use [username[:password]] for accessing the registry
# @option --decryption-key* <string>             key needed to decrypt the image
# @option --device* <string>                     additional devices to be used within containers (default [])
# @flag -D --disable-compression                 don't compress layers by default (default true)
# @option --dns </etc/resolv.conf>               set custom DNS servers or disable it completely by setting it to 'none', which prevents the automatic creation of /etc/resolv.conf.
# @option --dns-option* <string>                 set custom DNS options
# @option --dns-search* <string>                 set custom DNS search domains
# @option --env* <string>                        set environment variable for the image
# @option -f --filepathname or URL of a Dockerfile <file>  pathname or URL  pathname or URL of a Dockerfile
# @flag --force-rm                               always remove intermediate containers after a build, even if the build is unsuccessful.
# @option --format <format>                      format of the built image's manifest and metadata.
# @option --from <file>                          image name used to replace the value in the first FROM instruction in the Containerfile
# @option --group-add* <string>                  add additional groups to the primary container process.
# @option --hooks-dir* <dir>                     set the OCI hooks directory path (may be set multiple times)
# @flag --http-proxy                             pass through HTTP Proxy environment variables (default true)
# @flag --identity-label                         add default identity label (default true)
# @option --ignorefile <file>                    path to an alternate .dockerignore file
# @option --iidfile <file>                       file to write the image ID to
# @option --ipc <path>                           'private', path of IPC namespace to join, or 'host'
# @option --isolation <type>                     type of process isolation to use.
# @option --jobs <int>                           how many stages to run in parallel (default 1)
# @option --label* <string>                      set metadata for an image (default [])
# @option --layer-label* <string>                set metadata for an intermediate image (default [])
# @flag --layers                                 use intermediate layers during build.
# @option --logfile <file>                       log to file instead of stdout/stderr
# @option --manifest <string>                    add the image to the specified manifest list.
# @option -m --memory <string>                   memory limit (format: <number>[<unit>], where unit = b, k, m or g)
# @option --memory-swap <string>                 swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --network[`_choice_network`] <path>    'private', 'none', 'ns:path' of network namespace to join, or 'host'
# @flag --no-cache                               do not use existing cached images for the container build.
# @flag --no-hostname                            do not create new /etc/hostname file for RUN instructions, use the one from the base image.
# @flag --no-hosts                               do not create new /etc/hosts file for RUN instructions, use the one from the base image.
# @flag --omit-history                           omit build history information from built image
# @option --os <string>                          set the OS to the provided value instead of the current operating system of the host (default "linux")
# @option --os-feature <feature>                 set required OS feature for the target image in addition to values from the base image
# @option --os-version <version>                 set required OS version for the target image instead of the value from the base image
# @option --pid <path>                           private, path of PID namespace to join, or 'host'
# @option --platform <OS/ARCH[/VARIANT]>         set the OS/ARCH[/VARIANT] of the image to the provided value instead of the current operating system and architecture of the host (for example "linux/arm") (default [linux/amd64])
# @option --pull <string[="true"]>               Pull image policy ("always/true"|"missing"|"never/false"|"newer") (default "missing")
# @flag -q --quiet                               refrain from announcing build instructions and image read/write progress
# @option --retry <int>                          number of times to retry in case of failure when performing push/pull (default 3)
# @option --retry-delay <string>                 delay between retries in case of push/pull failures (default "2s")
# @flag --rm                                     remove intermediate containers after a successful build (default true)
# @option --runtime-flag* <string>               add global flags for the container runtime
# @option --secret* <file>                       secret file to expose to the build
# @option --security-opt* <string>               security options (default [])
# @option --shm-size <<number><unit>>            size of '/dev/shm'.
# @flag --skip-unused-stages                     skips stages in multi-stage builds which do not affect the final target (default true)
# @flag --squash                                 squash all image layers into a single layer
# @flag --squash-all                             Squash all layers into a single layer
# @option --ssh* <string>                        SSH agent socket or keys to expose to the build.
# @flag --stdin                                  pass stdin into containers
# @option -t --tag <name>                        tagged name to apply to the built image
# @option --target <string>                      set the target build stage to build
# @option --timestamp <int>                      set created timestamp to the specified epoch seconds to allow for deterministic builds, defaults to current time
# @option --ulimit* <string>                     ulimit options
# @option --unsetenv* <string>                   unset environment variable from final image
# @option --unsetlabel* <string>                 unset label when inheriting labels from base image
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
# @flag -s --squash                squash newly built layers into a single new layer
# @arg container[`_choice_container`]
# @arg image[`_module_oci_podman_image`]
commit() {
    :;
}
# }} podman commit

# {{ podman compose
# @cmd Run compose workloads via an external provider such as docker-compose or podman-compose
compose() {
    :;
}
# }} podman compose

# {{ podman container
# @cmd Manage containers
container() {
    :;
}

# {{{ podman container attach
# @cmd Attach to a running container
# @option --detach-keys <a-Z>    Select the key sequence for detaching a container.
# @flag --no-stdin               Do not attach STDIN.
# @flag --sig-proxy              Proxy received signals to the process (default true)
# @arg container[`_choice_container`]
container::attach() {
    :;
}
# }}} podman container attach

# {{{ podman container checkpoint
# @cmd Checkpoint one or more containers
# @flag -a --all                     Checkpoint all running containers
# @option -c --compress[gzip|none|zstd] <string>  Select compression algorithm for checkpoint archive.
# @option --create-image <string>    Create checkpoint image with specified name
# @option -e --export <string>       Export the checkpoint image to a tar.gz
# @flag --file-locks                 Checkpoint a container with file locks
# @flag --ignore-rootfs              Do not include root file-system changes when exporting
# @flag --ignore-volumes             Do not export volumes associated with container
# @flag -k --keep                    Keep all temporary checkpoint files
# @flag -R --leave-running           Leave the container running after writing checkpoint to disk
# @flag -P --pre-checkpoint          Dump container's memory information only, leave the container running
# @flag --print-stats                Display checkpoint statistics
# @flag --tcp-established            Checkpoint a container with established TCP connections
# @flag --with-previous              Checkpoint container with pre-checkpoint images
# @arg container*[`_choice_container`]
container::checkpoint() {
    :;
}
# }}} podman container checkpoint

# {{{ podman container clone
# @cmd Clone an existing container
# @option --blkio-weight <string>           Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cpu-period <uint>               Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                 Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>            Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>            Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>            CPU shares (relative weight)
# @option --cpus <float>                    Number of CPUs.
# @option --cpuset-cpus <string>            CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>            Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag --destroy                           destroy the original container
# @option --device-read-bps* <string>       Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-write-bps* <string>      Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @flag -f --force                          force the existing container to be destroyed
# @option -m --memory <<number>[<unit>]>    Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>            Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>         Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --name <string>                   Assign a name to the container
# @option --pod <string>                    Run container in an existing pod
# @flag --run                               run the new container
# @arg container[`_choice_container`]
# @arg name
# @arg image[`_module_oci_podman_image`]
container::clone() {
    :;
}
# }}} podman container clone

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
# @flag -s --squash                squash newly built layers into a single new layer
# @arg container[`_choice_container`]
# @arg image[`_module_oci_podman_image`]
container::commit() {
    :;
}
# }}} podman container commit

# {{{ podman container cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive    Chown copied files to the primary uid/gid of the destination container.
# @flag --overwrite     Allow to overwrite directories with non-directories and vice versa
# @arg src[`_choice_container_cp`]
# @arg dest[`_choice_container_cp`]
container::cp() {
    :;
}
# }}} podman container cp

# {{{ podman container create
# @cmd Create but do not start a container
# @option --add-host* <string>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>                   Add annotations to container (key=value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach* <string>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add* <string>                      Add capabilities to the container
# @option --cap-drop* <string>                     Drop capabilities from the container
# @option --cgroup-conf* <string>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration
# @option --chrootdirs* <dir>                      Chroot directories inside the container
# @option --cidfile <file>                         Write the container ID to the file
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device* <string>                       Add a host device to the container
# @option --device-cgroup-rule* <string>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns* <string>                          Set custom DNS servers
# @option --dns-option* <string>                   Set custom DNS options
# @option --dns-search* <string>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container
# @option --env-file* <file>                       Read in a file of environment variables
# @option --env-merge* <string>                    Preprocess environment variables from image before injecting them into the container
# @option --expose* <string>                       Expose a port or a range of ports
# @option --gidmap* <string>                       GID map to use for the user namespace
# @option --group-add* <string>                    Add additional groups to the primary container process.
# @option --group-entry <string>                   Entry to write to /etc/group
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthcheck (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-on-failure <string>             action to take once the container turns unhealthy (default "none")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-startup-cmd <string>            Set a startup healthcheck command for the container
# @option --health-startup-interval <string>       Set an interval for the startup healthcheck (default "30s")
# @option --health-startup-retries <uint>          Set the maximum number of retries before the startup healthcheck will restart the container
# @option --health-startup-success <uint>          Set the number of consecutive successes before the startup healthcheck is marked as successful and the normal healthcheck begins (0 indicates any success will start the regular healthcheck)
# @option --health-startup-timeout <string>        Set the maximum amount of time that the startup healthcheck may take before it is considered failed (default "30s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @option --hostuser* <string>                     Host user account to add to /etc/passwd within container
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-ctr <string>                      Make this a pod init container.
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ip6 <string>                           Specify a static IPv6 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container
# @option --log-opt* <string>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network*[`_choice_network`] <string>   Connect a container to a network
# @option --network-alias* <string>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --passwd-entry <string>                  Entry to write to /etc/passwd
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default -1)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish* <string>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never|newer] <string>  Pull image policy
# @flag -q --quiet                                 Suppress output information when pulling images
# @option --rdt-class <string>                     Class of Service (COS) that the container should be assigned to
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running --read-only containers mount read-write tmpfs on /dev, /dev/shm, /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires* <string>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container and any anonymous unnamed volume associated with the container after exit
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --ulimit* <string>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option --unsetenv* <string>                     Unset environment default variables in container
# @flag --unsetenv-all                             Unset all default environment variables in container
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
container::create() {
    :;
}
# }}} podman container create

# {{{ podman container diff
# @cmd Inspect changes to the container's file systems
# @option --format <string>    Change the output format (json)
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
# @option --env-file* <file>        Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag --privileged                Give the process extended Linux capabilities inside the container.
# @flag -t --tty                    Allocate a pseudo-TTY.
# @option -u --user <string>        Sets the username or UID used and optionally the groupname or GID for the specified command
# @option -w --workdir <dir>        Working directory inside the container
# @arg container[`_choice_container`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
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
# @flag -a --all    Initialize all containers
# @arg container*[`_choice_container`]
container::init() {
    :;
}
# }}} podman container init

# {{{ podman container inspect
# @cmd Display the configuration of a container
# @option -f --format <string>    Format the output to a Go template or json (default "json")
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
# @option -f --filter* <string>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
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
# @flag --color               Output the containers with different colors in the log.
# @flag -f --follow           Follow log output.
# @flag -n --names            Output the container name in the log
# @option --since <string>    Show logs since TIMESTAMP
# @option --tail <int>        Output the specified number of LINES at the end of the logs.
# @flag -t --timestamps       Output the timestamps in the log
# @option --until <string>    Show logs until TIMESTAMP
# @arg container[`_choice_container`]
container::logs() {
    :;
}
# }}} podman container logs

# {{{ podman container pause
# @cmd Pause all the processes in one or more containers
# @flag -a --all                   Pause all running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @arg container*[`_choice_container`]
container::pause() {
    :;
}
# }}} podman container pause

# {{{ podman container port
# @cmd List port mappings or a specific mapping for the container
# @flag -a --all    Display port information for all containers
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
# @option -f --filter* <string>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
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
# @flag -a --all                   Restart all non-running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @flag --running                  Restart only running containers
# @option -t --time <int>          Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
container::restart() {
    :;
}
# }}} podman container restart

# {{{ podman container restore
# @cmd Restore one or more containers from a checkpoint
# @flag -a --all                        Restore all checkpointed containers
# @flag --file-locks                    Restore a container with file locks
# @flag --ignore-rootfs                 Do not apply root file-system changes when importing from exported checkpoint
# @flag --ignore-static-ip              Ignore IP address set via --static-ip
# @flag --ignore-static-mac             Ignore MAC address set via --mac-address
# @flag --ignore-volumes                Do not export volumes associated with container
# @option -i --import <string>          Restore from exported checkpoint archive (tar.gz)
# @option --import-previous <string>    Restore from exported pre-checkpoint archive (tar.gz)
# @flag -k --keep                       Keep all temporary checkpoint files
# @option -n --name <string>            Specify new name for container restored from exported checkpoint (only works with image or --import)
# @option --pod <string>                Restore container into existing Pod (only works with image or --import)
# @flag --print-stats                   Display restore statistics
# @option -p --publish* <string>        Publish a container's port, or a range of ports, to the host (default [])
# @flag --tcp-established               Restore a container with established TCP connections
# @arg container-image* <CONTAINER|IMAGE>
container::restore() {
    :;
}
# }}} podman container restore

# {{{ podman container rm
# @cmd Remove one or more containers
# @flag -a --all                Remove all containers
# @option --cidfile* <file>     Read the container ID from the file
# @flag --depend                Remove container and all containers that depend on the selected container
# @option --filter* <string>    Filter output based on conditions given
# @flag -f --force              Force removal of a running or unusable container
# @flag -i --ignore             Ignore errors when a specified container is missing
# @option -t --time <int>       Seconds to wait for stop before killing the container (default 10)
# @flag -v --volumes            Remove anonymous volumes associated with the container
# @arg container*[`_choice_container`]
container::rm() {
    :;
}
# }}} podman container rm

# {{{ podman container run
# @cmd Run a command in a new container
# @option --add-host* <string>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>                   Add annotations to container (key=value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach* <string>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add* <string>                      Add capabilities to the container
# @option --cap-drop* <string>                     Drop capabilities from the container
# @option --cgroup-conf* <string>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration
# @option --chrootdirs* <dir>                      Chroot directories inside the container
# @option --cidfile <file>                         Write the container ID to the file
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag -d --detach                                Run container in background and print container ID
# @option --detach-keys <a-Z>                      Override the key sequence for detaching a container.
# @option --device* <string>                       Add a host device to the container
# @option --device-cgroup-rule* <string>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns* <string>                          Set custom DNS servers
# @option --dns-option* <string>                   Set custom DNS options
# @option --dns-search* <string>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container
# @option --env-file* <file>                       Read in a file of environment variables
# @option --env-merge* <string>                    Preprocess environment variables from image before injecting them into the container
# @option --expose* <string>                       Expose a port or a range of ports
# @option --gidmap* <string>                       GID map to use for the user namespace
# @option --group-add* <string>                    Add additional groups to the primary container process.
# @option --group-entry <string>                   Entry to write to /etc/group
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthcheck (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-on-failure <string>             action to take once the container turns unhealthy (default "none")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-startup-cmd <string>            Set a startup healthcheck command for the container
# @option --health-startup-interval <string>       Set an interval for the startup healthcheck (default "30s")
# @option --health-startup-retries <uint>          Set the maximum number of retries before the startup healthcheck will restart the container
# @option --health-startup-success <uint>          Set the number of consecutive successes before the startup healthcheck is marked as successful and the normal healthcheck begins (0 indicates any success will start the regular healthcheck)
# @option --health-startup-timeout <string>        Set the maximum amount of time that the startup healthcheck may take before it is considered failed (default "30s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @option --hostuser* <string>                     Host user account to add to /etc/passwd within container
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ip6 <string>                           Specify a static IPv6 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container
# @option --log-opt* <string>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network*[`_choice_network`] <string>   Connect a container to a network
# @option --network-alias* <string>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @flag --passwd                                   add entries to /etc/passwd and /etc/group (default true)
# @option --passwd-entry <string>                  Entry to write to /etc/passwd
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default -1)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish* <string>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never|newer] <string>  Pull image policy
# @flag -q --quiet                                 Suppress output information when pulling images
# @option --rdt-class <string>                     Class of Service (COS) that the container should be assigned to
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running --read-only containers mount read-write tmpfs on /dev, /dev/shm, /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires* <string>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container and any anonymous unnamed volume associated with the container after exit
# @flag --rmi                                      Remove image unless used by other containers, implies --rm
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @flag --sig-proxy                                Proxy received signals to the process (default true)
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --ulimit* <string>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option --unsetenv* <string>                     Unset environment default variables in container
# @flag --unsetenv-all                             Unset all default environment variables in container
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
container::run() {
    :;
}
# }}} podman container run

# {{{ podman container start
# @cmd Start one or more containers
# @flag --all                      Start all containers regardless of their state or configuration
# @flag -a --attach                Attach container's STDOUT and STDERR
# @option --detach-keys <a-Z>      Select the key sequence for detaching a container.
# @option -f --filter* <string>    Filter output based on conditions given
# @flag -i --interactive           Keep STDIN open even if not attached
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
# @flag --no-reset               Disable resetting the screen between intervals
# @flag --no-stream              Disable streaming stats and only pull the first result, default setting is false
# @flag --no-trunc               Do not truncate output
# @arg container*[`_choice_container`]
container::stats() {
    :;
}
# }}} podman container stats

# {{{ podman container stop
# @cmd Stop one or more containers
# @flag -a --all                   Stop all running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @option -t --time <int>          Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
container::stop() {
    :;
}
# }}} podman container stop

# {{{ podman container top
# @cmd Display the running processes of a container
# @arg container[`_choice_container`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
container::top() {
    :;
}
# }}} podman container top

# {{{ podman container unpause
# @cmd Unpause the processes in one or more containers
# @flag -a --all                   Unpause all paused containers
# @option -f --filter* <string>    Filter output based on conditions given
# @arg container*[`_choice_container`]
container::unpause() {
    :;
}
# }}} podman container unpause

# {{{ podman container update
# @cmd Update an existing container
# @option --blkio-weight <string>           Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cpu-period <uint>               Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                 Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>            Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>            Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>            CPU shares (relative weight)
# @option --cpus <float>                    Number of CPUs.
# @option --cpuset-cpus <string>            CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>            Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device-read-bps* <string>       Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>      Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>      Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>     Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @option -m --memory <<number>[<unit>]>    Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>            Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>         Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --pids-limit <int>                Tune container pids limit (set -1 for unlimited) (default -1)
# @arg container[`_choice_container`]
container::update() {
    :;
}
# }}} podman container update

# {{{ podman container wait
# @cmd Block on one or more containers
# @option --condition* <string>     Condition to wait on
# @flag --ignore                    Ignore if a container does not exist
# @option -i --interval <string>    Time Interval to wait before polling for completion (default "250ms")
# @arg container*[`_choice_container`]
container::wait() {
    :;
}
# }}} podman container wait
# }} podman container

# {{ podman cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive    Chown copied files to the primary uid/gid of the destination container.
# @flag --overwrite     Allow to overwrite directories with non-directories and vice versa
# @arg src[`_choice_container_cp`]
# @arg dest[`_choice_container_cp`]
cp() {
    :;
}
# }} podman cp

# {{ podman create
# @cmd Create but do not start a container
# @option --add-host* <string>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>                   Add annotations to container (key=value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach* <string>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add* <string>                      Add capabilities to the container
# @option --cap-drop* <string>                     Drop capabilities from the container
# @option --cgroup-conf* <string>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration
# @option --chrootdirs* <dir>                      Chroot directories inside the container
# @option --cidfile <file>                         Write the container ID to the file
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device* <string>                       Add a host device to the container
# @option --device-cgroup-rule* <string>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns* <string>                          Set custom DNS servers
# @option --dns-option* <string>                   Set custom DNS options
# @option --dns-search* <string>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container
# @option --env-file* <file>                       Read in a file of environment variables
# @option --env-merge* <string>                    Preprocess environment variables from image before injecting them into the container
# @option --expose* <string>                       Expose a port or a range of ports
# @option --gidmap* <string>                       GID map to use for the user namespace
# @option --group-add* <string>                    Add additional groups to the primary container process.
# @option --group-entry <string>                   Entry to write to /etc/group
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthcheck (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-on-failure <string>             action to take once the container turns unhealthy (default "none")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-startup-cmd <string>            Set a startup healthcheck command for the container
# @option --health-startup-interval <string>       Set an interval for the startup healthcheck (default "30s")
# @option --health-startup-retries <uint>          Set the maximum number of retries before the startup healthcheck will restart the container
# @option --health-startup-success <uint>          Set the number of consecutive successes before the startup healthcheck is marked as successful and the normal healthcheck begins (0 indicates any success will start the regular healthcheck)
# @option --health-startup-timeout <string>        Set the maximum amount of time that the startup healthcheck may take before it is considered failed (default "30s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @option --hostuser* <string>                     Host user account to add to /etc/passwd within container
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-ctr <string>                      Make this a pod init container.
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ip6 <string>                           Specify a static IPv6 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container
# @option --log-opt* <string>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network*[`_choice_network`] <string>   Connect a container to a network
# @option --network-alias* <string>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @option --passwd-entry <string>                  Entry to write to /etc/passwd
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default -1)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish* <string>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never|newer] <string>  Pull image policy
# @flag -q --quiet                                 Suppress output information when pulling images
# @option --rdt-class <string>                     Class of Service (COS) that the container should be assigned to
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running --read-only containers mount read-write tmpfs on /dev, /dev/shm, /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires* <string>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container and any anonymous unnamed volume associated with the container after exit
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --ulimit* <string>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option --unsetenv* <string>                     Unset environment default variables in container
# @flag --unsetenv-all                             Unset all default environment variables in container
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
create() {
    :;
}
# }} podman create

# {{ podman diff
# @cmd Display the changes to the object's file system
# @option --format <string>    Change the output format (json)
# @arg container-image <CONTAINER|IMAGE>
diff() {
    :;
}
# }} podman diff

# {{ podman events
# @cmd Show podman system events
# @option -f --filter* <string>    filter output
# @option --format <string>        format the output using a Go template
# @flag --no-trunc                 do not truncate the output (default true)
# @option --since <string>         show all events created since timestamp
# @flag --stream                   stream events and do not exit when returning the last known event (default true)
# @option --until <string>         show all events until timestamp
events() {
    :;
}
# }} podman events

# {{ podman exec
# @cmd Run a process in a running container
# @flag -d --detach                 Run the exec session in detached mode (backgrounded)
# @option --detach-keys <string>    Select the key sequence for detaching a container.
# @option -e --env* <string>        Set environment variables
# @option --env-file* <file>        Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag --privileged                Give the process extended Linux capabilities inside the container.
# @flag -t --tty                    Allocate a pseudo-TTY.
# @option -u --user <string>        Sets the username or UID used and optionally the groupname or GID for the specified command
# @option -w --workdir <dir>        Working directory inside the container
# @arg container[`_choice_container`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
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
# @option -f --filename <file>     Write output to the specified path
# @flag --no-trunc                 Don't truncate annotations to Kubernetes length (63 chars)
# @flag --podman-only              Add podman-only reserved annotations to the generated YAML file (Cannot be used by Kubernetes)
# @option -r --replicas <int32>    Set the replicas number for Deployment kind (default 1)
# @flag -s --service               Generate YAML for a Kubernetes service object
# @option -t --type <string>       Generate YAML for the given Kubernetes kind
# @arg container-pod-volume* <CONTAINER...|POD...|VOLUME>
generate::kube() {
    :;
}
# }}} podman generate kube

# {{{ podman generate spec
# @cmd Generate Specgen JSON based on containers or pods
# @flag -c --compact              Print the json in a compact format for consumption
# @option -f --filename <file>    Write output to the specified path
# @flag -n --name                 Specify a new name for the generated spec (default true)
# @arg enum[CONTAINER|POD]
generate::spec() {
    :;
}
# }}} podman generate spec

# {{{ podman generate systemd
# @cmd [DEPRECATED] Generate systemd units
# @option --after* <file>                Add dependencies order to the generated unit file
# @option --container-prefix <string>    Systemd unit name prefix for containers (default "container")
# @option -e --env* <file>               Set environment variables to the systemd unit files
# @flag -f --files                       Generate .service files instead of printing to stdout
# @option --format <string>              Print the created units in specified format (json)
# @flag -n --name                        Use container/pod names instead of IDs
# @flag --new                            Create a new container or pod instead of starting an existing one
# @flag --no-header                      Skip header generation
# @option --pod-prefix <string>          Systemd unit name prefix for pods (default "pod")
# @option --requires* <string>           Similar to wants, but declares stronger requirement dependencies
# @option --restart-policy <string>      Systemd restart-policy (default "on-failure")
# @option --restart-sec <uint>           Systemd restart-sec
# @option --separator <string>           Systemd unit name separator between name/id and prefix (default "-")
# @option --start-timeout <uint>         Start timeout override
# @option --stop-timeout <uint>          Stop timeout override (default 10)
# @flag --template                       Make it a template file and use %i and %I specifiers.
# @option --wants* <file>                Add (weak) requirement dependencies to the generated unit file
# @arg value[`_choice_container_pod`]
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
# @cmd Run the health check of a container
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
# @option --add-host <host:ip>                add a custom host-to-IP mapping (host:ip) (default [])
# @flag --all-platforms                       attempt to build for all base image platforms
# @option --annotation* <string>              set metadata for an image (default [])
# @option --arch <string>                     set the ARCH of the image to the provided value instead of the architecture of the host (default "amd64")
# @option --authfile <file>                   path of the authentication file.
# @option --build-arg <argument=value>        argument=value to supply to the builder
# @option --build-arg-file <argfile.conf>     argfile.conf containing lines of argument=value to supply to the builder
# @option --build-context <argument=value>    argument=value to supply additional build context to the builder
# @option --cache-from* <string>              remote repository list to utilise as potential cache source.
# @option --cache-to* <path>                  remote repository list to utilise as potential cache destination.
# @option --cache-ttl <string>                only consider cache images under specified duration.
# @option --cap-add* <string>                 add the specified capability when running (default [])
# @option --cap-drop* <string>                drop the specified capability when running (default [])
# @option --cert-dir <dir>                    use certificates at the specified path to access the registry
# @option --cgroup-parent <string>            optional parent cgroup for the container
# @option --cgroupns <string>                 'private', or 'host'
# @option --cpp-flag* <string>                set additional flag to pass to C preprocessor (cpp)
# @option --cpu-period <uint>                 limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                   limit the CPU CFS (Completely Fair Scheduler) quota
# @option -c --cpu-shares <uint>              CPU shares (relative weight)
# @option --cpuset-cpus <string>              CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>              memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --creds <username[:password]>       use [username[:password]] for accessing the registry
# @option --decryption-key* <string>          key needed to decrypt the image
# @option --device* <string>                  additional devices to be used within containers (default [])
# @flag -D --disable-compression              don't compress layers by default (default true)
# @option --dns </etc/resolv.conf>            set custom DNS servers or disable it completely by setting it to 'none', which prevents the automatic creation of /etc/resolv.conf.
# @option --dns-option* <string>              set custom DNS options
# @option --dns-search* <string>              set custom DNS search domains
# @option --env* <string>                     set environment variable for the image
# @option -f --file <file>                    pathname or URL of a Dockerfile
# @flag --force-rm                            always remove intermediate containers after a build, even if the build is unsuccessful.
# @option --format <format>                   format of the built image's manifest and metadata.
# @option --from <file>                       image name used to replace the value in the first FROM instruction in the Containerfile
# @option --group-add* <string>               add additional groups to the primary container process.
# @option --hooks-dir* <dir>                  set the OCI hooks directory path (may be set multiple times)
# @flag --http-proxy                          pass through HTTP Proxy environment variables (default true)
# @flag --identity-label                      add default identity label (default true)
# @option --ignorefile <file>                 path to an alternate .dockerignore file
# @option --iidfile <file>                    file to write the image ID to
# @option --ipc <path>                        'private', path of IPC namespace to join, or 'host'
# @option --isolation <type>                  type of process isolation to use.
# @option --jobs <int>                        how many stages to run in parallel (default 1)
# @option --label* <string>                   set metadata for an image (default [])
# @option --layer-label* <string>             set metadata for an intermediate image (default [])
# @flag --layers                              use intermediate layers during build.
# @option --logfile <file>                    log to file instead of stdout/stderr
# @option --manifest <string>                 add the image to the specified manifest list.
# @option -m --memory <string>                memory limit (format: <number>[<unit>], where unit = b, k, m or g)
# @option --memory-swap <string>              swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --network[private|none|ns:|host] <path>  'private', 'none', 'ns:path' of network namespace to join, or 'host'
# @flag --no-cache                            do not use existing cached images for the container build.
# @flag --no-hostname                         do not create new /etc/hostname file for RUN instructions, use the one from the base image.
# @flag --no-hosts                            do not create new /etc/hosts file for RUN instructions, use the one from the base image.
# @flag --omit-history                        omit build history information from built image
# @option --os <string>                       set the OS to the provided value instead of the current operating system of the host (default "linux")
# @option --os-feature <feature>              set required OS feature for the target image in addition to values from the base image
# @option --os-version <version>              set required OS version for the target image instead of the value from the base image
# @option --pid <path>                        private, path of PID namespace to join, or 'host'
# @option --platform <OS/ARCH[/VARIANT]>      set the OS/ARCH[/VARIANT] of the image to the provided value instead of the current operating system and architecture of the host (for example "linux/arm") (default [linux/amd64])
# @option --pull <string[="true"]>            Pull image policy ("always/true"|"missing"|"never/false"|"newer") (default "missing")
# @flag -q --quiet                            refrain from announcing build instructions and image read/write progress
# @option --retry <int>                       number of times to retry in case of failure when performing push/pull (default 3)
# @option --retry-delay <string>              delay between retries in case of push/pull failures (default "2s")
# @flag --rm                                  remove intermediate containers after a successful build (default true)
# @option --runtime-flag* <string>            add global flags for the container runtime
# @option --secret* <file>                    secret file to expose to the build
# @option --security-opt* <string>            security options (default [])
# @option --shm-size <<number><unit>>         size of '/dev/shm'.
# @flag --skip-unused-stages                  skips stages in multi-stage builds which do not affect the final target (default true)
# @flag --squash                              squash all image layers into a single layer
# @flag --squash-all                          Squash all layers into a single layer
# @option --ssh* <string>                     SSH agent socket or keys to expose to the build.
# @flag --stdin                               pass stdin into containers
# @option -t --tag <name>                     tagged name to apply to the built image
# @option --target <string>                   set the target build stage to build
# @option --timestamp <int>                   set created timestamp to the specified epoch seconds to allow for deterministic builds, defaults to current time
# @option --ulimit* <string>                  ulimit options
# @option --unsetenv* <string>                unset environment variable from final image
# @option --unsetlabel* <string>              unset label when inheriting labels from base image
# @option --userns <path>                     'container', path of user namespace to join, or 'host'
# @option --userns-gid-map <containerGID:hostGID:length>  containerGID:hostGID:length GID mapping to use in user namespace
# @option --userns-gid-map-group <name>       name of entries from /etc/subgid to use to set user namespace GID mapping
# @option --userns-uid-map <containerUID:hostUID:length>  containerUID:hostUID:length UID mapping to use in user namespace
# @option --userns-uid-map-user <name>        name of entries from /etc/subuid to use to set user namespace UID mapping
# @option --uts <path>                        private, :path of UTS namespace to join, or 'host'
# @option --variant <variant>                 override the variant of the specified image
# @option -v --volume* <string>               bind mount a volume into the container
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
# @flag -q --quiet             Display the numeric IDs only
# @arg image[`_module_oci_podman_image`]
image::history() {
    :;
}
# }}} podman image history

# {{{ podman image import
# @cmd Import a tarball to create a filesystem image
# @option --arch <string>          Set the architecture of the imported image
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -m --message <string>    Set commit message for imported image
# @option --os <string>            Set the OS of the imported image
# @flag -q --quiet                 Suppress output
# @option --variant <string>       Set the variant of the imported image
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
# @option -f --filter* <string>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @flag --history                  Display the image name history
# @flag --no-trunc                 Do not truncate output
# @flag -n --noheading             Do not print column headings
# @flag -q --quiet                 Display only image IDs
# @option --sort[size|tag|created|id|repository] <kind>  Sort by kind
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

# {{{ podman image prune
# @cmd Remove unused images
# @flag -a --all                Remove all images not in use by containers, not just dangling ones
# @flag --external              Remove images even when they are used by external containers (e.g., by build containers)
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation
image::prune() {
    :;
}
# }}} podman image prune

# {{{ podman image pull
# @cmd Pull an image from a registry
# @flag -a --all-tags              All tagged images in the repository will be pulled
# @option --arch                   Use ARCH instead of the architecture of the machine for choosing images
# @option --authfile <file>        Path of the authentication file.
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
# @option --authfile <file>                Path of the authentication file.
# @option --compression-format <string>    compression format to use
# @option --compression-level <int>        compression level to use
# @option --creds <Credentials>            Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option --digestfile <file>              Write the digest of the pushed image to the specified file
# @flag --disable-content-trust            This is a Docker specific option and is a NOOP
# @flag --force-compression                Use the specified compression algorithm even if the destination contains a differently-compressed variant already
# @option -f --format <path>               Manifest type (oci, v2s2, or v2s1) to use in the destination (default is manifest type of source, with fallbacks)
# @flag --remove-signatures                Discard any pre-existing signatures in the image
# @flag --tls-verify                       Require HTTPS and verify certificates when contacting registries (default true)
# @arg image[`_module_oci_podman_image`]
# @arg destination
image::push() {
    :;
}
# }}} podman image push

# {{{ podman image rm
# @cmd Remove one or more images from local storage
# @flag -a --all       Remove all images
# @flag -f --force     Force Removal of the image
# @flag -i --ignore    Ignore errors if a specified image does not exist
# @flag --no-prune     Do not remove dangling images
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
# @flag --uncompressed              Accept uncompressed layers when copying OCI images
# @arg image*[`_module_oci_podman_image`]
image::save() {
    :;
}
# }}} podman image save

# {{{ podman image scp
# @cmd Securely copy images
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
# @flag --compatible               List stars, official and automated columns (Docker compatibility)
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option -f --filter* <string>    Filter output based on conditions provided (default [])
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

# {{{ podman image tag
# @cmd Add an additional name to a local image
# @arg image[`_module_oci_podman_image`]
# @arg target_name*
image::tag() {
    :;
}
# }}} podman image tag

# {{{ podman image tree
# @cmd Print layer hierarchy of an image in a tree format
# @flag --whatrequires    Show all child images and layers of the specified image
# @arg image[`_module_oci_podman_image`]
image::tree() {
    :;
}
# }}} podman image tree

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
# @option -f --filter* <string>    Filter output based on conditions provided (default [])
# @option --format <string>        Change the output format to JSON or a Go template
# @flag --history                  Display the image name history
# @flag --no-trunc                 Do not truncate output
# @flag -n --noheading             Do not print column headings
# @flag -q --quiet                 Display only image IDs
# @option --sort[size|tag|created|id|repository] <kind>  Sort by kind
# @arg image[`_module_oci_podman_image`]
images() {
    :;
}
# }} podman images

# {{ podman import
# @cmd Import a tarball to create a filesystem image
# @option --arch <string>          Set the architecture of the imported image
# @option -c --change* <string>    Apply the following possible instructions to the created image (default []): CMD | ENTRYPOINT | ENV | EXPOSE | LABEL | ONBUILD | STOPSIGNAL | USER | VOLUME | WORKDIR
# @option -m --message <string>    Set commit message for imported image
# @option --os <string>            Set the OS of the imported image
# @flag -q --quiet                 Suppress output
# @option --variant <string>       Set the variant of the imported image
# @arg path
# @arg reference
import() {
    :;
}
# }} podman import

# {{ podman info
# @cmd Display podman system information
# @option -f --format <string>    Change the output format to JSON or a Go template
info() {
    :;
}
# }} podman info

# {{ podman init
# @cmd Initialize one or more containers
# @flag -a --all    Initialize all containers
# @arg container*[`_choice_container`]
init() {
    :;
}
# }} podman init

# {{ podman inspect
# @cmd Display the configuration of object denoted by ID
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @flag -s --size                 Display total file size
# @option -t --type[image|container|all] <string>  Specify inspect-object type (default "all")
# @arg name
inspect() {
    :;
}
# }} podman inspect

# {{ podman kill
# @cmd Kill one or more running containers with a specific signal
# @flag -a --all                  Signal all running containers
# @option --cidfile* <file>       Read the container ID from the file
# @option -s --signal <string>    Signal to send to the container (default "KILL")
# @arg container*[`_choice_container`]
kill() {
    :;
}
# }} podman kill

# {{ podman kube
# @cmd Play containers, pods or volumes from a structured file
kube() {
    :;
}

# {{{ podman kube apply
# @cmd Deploy a podman container, pod, volume, or Kubernetes yaml to a Kubernetes cluster
# @option --ca-cert-file <file>     Path to the CA cert file for the Kubernetes cluster.
# @option -f --file <file>          Path to the Kubernetes yaml file to deploy.
# @option -k --kubeconfig <file>    Path to the kubeconfig file for the Kubernetes cluster
# @option --ns <string>             The namespace to deploy the workload to on the Kubernetes cluster
# @flag -s --service                Create a service object for the container being deployed.
# @arg container-pod-volume* <CONTAINER...|POD...|VOLUME>
kube::apply() {
    :;
}
# }}} podman kube apply

# {{{ podman kube down
# @cmd Remove pods based on Kubernetes YAML
# @flag --force    remove volumes
# @arg kubefile <KUBEFILE|->
kube::down() {
    :;
}
# }}} podman kube down

# {{{ podman kube generate
# @cmd Generate Kubernetes YAML from containers, pods or volumes.
# @option -f --filename <file>     Write output to the specified path
# @flag --no-trunc                 Don't truncate annotations to Kubernetes length (63 chars)
# @flag --podman-only              Add podman-only reserved annotations to the generated YAML file (Cannot be used by Kubernetes)
# @option -r --replicas <int32>    Set the replicas number for Deployment kind (default 1)
# @flag -s --service               Generate YAML for a Kubernetes service object
# @option -t --type <string>       Generate YAML for the given Kubernetes kind
# @arg container-pod-volume* <CONTAINER...|POD...|VOLUME>
kube::generate() {
    :;
}
# }}} podman kube generate

# {{{ podman kube play
# @cmd Play a pod or volume based on Kubernetes YAML
# @option --annotation* <string>                   Add annotations to pods (key=value)
# @option --authfile <file>                        Path of the authentication file.
# @option --configmap <Pathname>                   Pathname of a YAML file containing a kubernetes configmap
# @option --creds <Credentials>                    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @flag --force                                    Remove volumes as part of --down
# @option --ip <ipSlice>                           Static IP addresses to assign to the pods (default [])
# @option --log-driver <string>                    Logging driver for the container
# @option --log-opt* <string>                      Logging driver options
# @option --mac-address* <string>                  Static MAC addresses to assign to the pods
# @option --network*[`_choice_network`] <string>   Connect pod to network(s) or network mode
# @flag --no-hosts                                 Do not create /etc/hosts within the pod's containers, instead use the version from the image
# @flag --no-trunc                                 Use annotations that are not truncated to the Kubernetes maximum length of 63 characters
# @option --publish* <string>                      Publish a container's port, or a range of ports, to the host
# @option --publish-all[containerPort|hostPort]    Whether to publish all ports defined in the K8S YAML file, if false only hostPort will be published
# @flag -q --quiet                                 Suppress output information when pulling images
# @flag --replace                                  Delete and recreate pods defined in the YAML file
# @flag --start                                    Start the pod after creating it (default true)
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries (default true)
# @option --userns <string>                        User namespace to use
# @flag -w --wait                                  Clean up all objects created when a SIGTERM is received or pods exit
# @arg kubefile <KUBEFILE|->
kube::play() {
    :;
}
# }}} podman kube play
# }} podman kube

# {{ podman load
# @cmd Load image(s) from a tar archive
# @option -i --input <file>    Read from specified archive file (default: stdin)
# @flag -q --quiet             Suppress the output
load() {
    :;
}
# }} podman load

# {{ podman login
# @cmd Log in to a container registry
# @option --authfile <file>            path of the authentication file.
# @option --cert-dir <dir>             use certificates at the specified path to access the registry
# @option --compat-auth-file <file>    path of a Docker-compatible config file to update instead
# @flag --get-login                    Return the current login user for the registry
# @option -p --password <string>       Password for registry
# @flag --password-stdin               Take the password from stdin
# @option --secret <string>            Retrieve password from a podman secret
# @flag --tls-verify                   Require HTTPS and verify certificates when contacting registries
# @option -u --username <string>       Username for registry
# @flag -v --verbose                   Write more detailed information to stdout
# @arg registry
login() {
    :;
}
# }} podman login

# {{ podman logout
# @cmd Log out of a container registry
# @flag -a --all                       Remove the cached credentials for all registries in the auth file
# @option --authfile <file>            path of the authentication file.
# @option --compat-auth-file <file>    path of a Docker-compatible config file to update instead
# @arg registry
logout() {
    :;
}
# }} podman logout

# {{ podman logs
# @cmd Fetch the logs of one or more containers
# @flag --color               Output the containers with different colors in the log.
# @flag -f --follow           Follow log output.
# @flag -n --names            Output the container name in the log
# @option --since <string>    Show logs since TIMESTAMP
# @option --tail <int>        Output the specified number of LINES at the end of the logs.
# @flag -t --timestamps       Output the timestamps in the log
# @option --until <string>    Show logs until TIMESTAMP
# @arg container[`_choice_container`]
logs() {
    :;
}
# }} podman logs

# {{ podman machine
# @cmd Manage a virtual machine
machine() {
    :;
}

# {{{ podman machine info
# @cmd Display machine host info
# @option -f --format <string>    Change the output format to JSON or a Go template
machine::info() {
    :;
}
# }}} podman machine info

# {{{ podman machine init
# @cmd Initialize a virtual machine
# @option --cpus <uint>               Number of CPUs (default 10)
# @option --disk-size <uint>          Disk size in GiB (default 100)
# @option --ignition-path <file>      Path to ignition file
# @option --image-path <path>         Path to bootable image (default "testing")
# @option -m --memory <uint>          Memory in MiB (default 2048)
# @flag --now                         Start machine now
# @flag --rootful                     Whether this machine should prefer rootful container execution
# @option --timezone <string>         Set timezone (default "local")
# @option --usb* <string>             USB Host passthrough: bus=$1,devnum=$2 or vendor=$1,product=$2
# @flag --user-mode-networking        Whether this machine should use user-mode networking, routing traffic through a host user-space process
# @option --username <string>         Username used in image (default "core")
# @option -v --volume* <string>       Volumes to mount, source:target (default [$HOME:$HOME])
# @option --volume-driver <string>    Optional volume driver
# @arg name
machine::init() {
    :;
}
# }}} podman machine init

# {{{ podman machine inspect
# @cmd Inspect an existing machine
# @option --format <string>    Format volume output using JSON or a Go template
# @arg machine*[`_choice_machine`]
machine::inspect() {
    :;
}
# }}} podman machine inspect

# {{{ podman machine list
# @cmd List machines
# @alias ls
# @option --format <string>    Format volume output using JSON or a Go template (default "{{range .}}{{.Name}}\t{{.VMType}}\t{{.Created}}\t{{.LastUp}}\t{{.CPUs}}\t{{.Memory}}\t{{.DiskSize}}\n{{end -}}")
# @flag -n --noheading         Do not print headers
# @flag -q --quiet             Show only machine names
machine::list() {
    :;
}
# }}} podman machine list

# {{{ podman machine os
# @cmd Manage a Podman virtual machine's OS
machine::os() {
    :;
}

# {{{{ podman machine os apply
# @cmd Apply an OCI image to a Podman Machine's OS
# @flag --restart    Restart VM to apply changes
# @arg image[`_module_oci_podman_image`]
# @arg name
machine::os::apply() {
    :;
}
# }}}} podman machine os apply
# }}} podman machine os

# {{{ podman machine rm
# @cmd Remove an existing machine
# @flag -f --force         Stop and do not prompt before rming
# @flag --save-ignition    Do not delete ignition file
# @flag --save-image       Do not delete the image file
# @flag --save-keys        Do not delete SSH keys
# @arg machine[`_choice_machine`]
machine::rm() {
    :;
}
# }}} podman machine rm

# {{{ podman machine set
# @cmd Set a virtual machine setting
# @option --cpus <uint>           Number of CPUs
# @option --disk-size <uint>      Disk size in GiB
# @option -m --memory <uint>      Memory in MiB
# @flag --rootful                 Whether this machine should prefer rootful container execution
# @option --usb* <string>         USBs bus=$1,devnum=$2 or vendor=$1,product=$2
# @flag --user-mode-networking    Whether this machine should use user-mode networking, routing traffic through a host user-space process
# @arg name
machine::set() {
    :;
}
# }}} podman machine set

# {{{ podman machine ssh
# @cmd SSH into an existing machine
# @option --username <string>    Username to use when ssh-ing into the VM.
# @arg name
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
machine::ssh() {
    :;
}
# }}} podman machine ssh

# {{{ podman machine start
# @cmd Start an existing machine
# @flag --no-info     Suppress informational tips
# @flag -q --quiet    Suppress machine starting status output
# @arg machine[`_choice_machine`]
machine::start() {
    :;
}
# }}} podman machine start

# {{{ podman machine stop
# @cmd Stop an existing machine
# @arg machine[`_choice_machine`]
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
# @option --creds <username[:password]>    use [username[:password]] for accessing the registry
# @option --features <features>            override the features of the specified image
# @option --os                             override the OS of the specified image
# @option --os-version <version>           override the OS version of the specified image
# @flag --tls-verify                       require HTTPS and verify certificates when accessing the registry (default true)
# @option --variant <Variant>              override the Variant of the specified image
# @arg list
# @arg image*[`_module_oci_podman_image`]
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
# @flag --all           add all of the lists' images if the images to add are lists
# @flag -a --amend      modify an existing list if one with the desired name already exists
# @flag --tls-verify    require HTTPS and verify certificates when accessing the registry (default true)
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
# @option --authfile <file>    path of the authentication file.
# @flag --tls-verify           require HTTPS and verify certificates when accessing the registry (default true)
# @arg image[`_module_oci_podman_image`]
manifest::inspect() {
    :;
}
# }}} podman manifest inspect

# {{{ podman manifest push
# @cmd Push a manifest list or image index to a registry
# @option --add-compression* <string>      add instances with selected compression while pushing
# @flag --all                              also push the images in the list (default true)
# @option --authfile <file>                path of the authentication file.
# @option --compression-format <string>    compression format to use
# @option --compression-level <int>        compression level to use
# @option --creds <username[:password]>    use [username[:password]] for accessing the registry
# @option --digestfile <file>              after copying the image, write the digest of the resulting digest to the file
# @flag --force-compression                Use the specified compression algorithm even if the destination contains a differently-compressed variant already
# @option -f --format <string>             manifest type (oci or v2s2) to attempt to use when pushing the manifest list (default is manifest type of source)
# @flag -q --quiet                         don't output progress information when pushing lists
# @flag --remove-signatures                don't copy signatures when pushing images
# @flag --rm                               remove the manifest list if push succeeds
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
# @arg list*
manifest::rm() {
    :;
}
# }}} podman manifest rm
# }} podman manifest

# {{ podman network
# @cmd Manage networks
network() {
    :;
}

# {{{ podman network connect
# @cmd Add container to a network
# @option --alias* <string>         network scoped alias for container
# @option --ip <ip>                 set a static ipv4 address for this container network
# @option --ip6 <ip>                set a static ipv6 address for this container network
# @option --mac-address <string>    set a static mac address for this container network
# @arg network[`_choice_network`]
# @arg container[`_choice_container`]
network::connect() {
    :;
}
# }}} podman network connect

# {{{ podman network create
# @cmd Create networks for containers and pods
# @flag --disable-dns                  disable dns plugin
# @option --dns* <string>              DNS servers this network will use
# @option -d --driver <string>         driver to manage the network (default "bridge")
# @option --gateway <ipSlice>          IPv4 or IPv6 gateway for the subnet (default [])
# @flag --ignore                       Don't fail if network already exists
# @option --interface-name <string>    interface name which is used by the driver
# @flag --internal                     restrict external access from this network
# @option --ip-range* <string>         allocate container IP from range
# @option --ipam-driver <string>       IP Address Management Driver
# @flag --ipv6                         enable IPv6 networking
# @option --label* <string>            set metadata on a network
# @option -o --opt* <string>           Set driver specific options (default [])
# @option --route* <string>            static routes
# @option --subnet* <string>           subnets in CIDR format
# @arg name
network::create() {
    :;
}
# }}} podman network create

# {{{ podman network disconnect
# @cmd Disconnect a container from a network
# @flag -f --force    force removal of container from network
# @arg network[`_choice_network`]
# @arg container[`_choice_container`]
network::disconnect() {
    :;
}
# }}} podman network disconnect

# {{{ podman network exists
# @cmd Check if network exists
# @arg network[`_choice_network`]
network::exists() {
    :;
}
# }}} podman network exists

# {{{ podman network inspect
# @cmd Inspect network
# @option -f --format <string>    Pretty-print network to JSON or using a Go template
# @arg network*[`_choice_network`]
network::inspect() {
    :;
}
# }}} podman network inspect

# {{{ podman network ls
# @cmd List networks
# @option -f --filter* <string>    Provide filter values (e.g. 'name=podman')
# @option --format <string>        Pretty-print networks to JSON or using a Go template
# @flag --no-trunc                 Do not truncate the network ID
# @flag -n --noheading             Do not print headers
# @flag -q --quiet                 display only names
network::ls() {
    :;
}
# }}} podman network ls

# {{{ podman network prune
# @cmd Prune unused networks
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              do not prompt for confirmation
network::prune() {
    :;
}
# }}} podman network prune

# {{{ podman network rm
# @cmd Remove networks
# @alias remove
# @flag -f --force           remove any containers using network
# @option -t --time <int>    Seconds to wait for running containers to stop before killing the container (default 10)
# @arg network*[`_choice_network`]
network::rm() {
    :;
}
# }}} podman network rm

# {{{ podman network update
# @cmd Update an existing podman network
# @option --dns-add* <string>     add network level nameservers
# @option --dns-drop* <string>    remove network level nameservers
# @arg network[`_choice_network`]
network::update() {
    :;
}
# }}} podman network update
# }} podman network

# {{ podman pause
# @cmd Pause all the processes in one or more containers
# @flag -a --all                   Pause all running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @arg container*[`_choice_container`]
pause() {
    :;
}
# }} podman pause

# {{ podman pod
# @cmd Manage pods
pod() {
    :;
}

# {{{ podman pod clone
# @cmd Clone an existing pod
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag --destroy                                  destroy the original pod
# @option --device* <string>                       Add a host device to the container
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --gidmap* <string>                       GID map to use for the user namespace
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @option --infra-command <string>                 Overwrite the default ENTRYPOINT of the image
# @option --infra-conmon-pidfile <file>            Path to the file that will receive the PID of conmon
# @option --infra-name <string>                    Assign a name to the container
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option -n --name <string>                       name the new pod
# @option --pid <string>                           PID namespace to use
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @flag --start                                    start the new pod
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @arg pod[`_choice_pod`]
# @arg name
pod::clone() {
    :;
}
# }}} podman pod clone

# {{{ podman pod create
# @cmd Create a new empty pod
# @option --add-host* <string>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device* <string>                       Add a host device to the container
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --dns* <string>                          Set custom DNS servers
# @option --dns-option* <string>                   Set custom DNS options
# @option --dns-search* <string>                   Set custom DNS search domains
# @option --exit-policy <string>                   Behaviour when the last container exits (default "continue")
# @option --gidmap* <string>                       GID map to use for the user namespace
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @flag --infra                                    Create an infra container associated with the pod to share namespaces with (default true)
# @option --infra-command <string>                 Overwrite the default ENTRYPOINT of the image
# @option --infra-conmon-pidfile <file>            Path to the file that will receive the PID of conmon
# @option --infra-image <string>                   Image to use to override builtin infra container
# @option --infra-name <string>                    Assign a name to the container
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ip6 <string>                           Specify a static IPv6 address for the container
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option -n --name <string>                       Assign a name to the pod
# @option --network*[`_choice_network`] <string>   Connect a container to a network
# @option --network-alias* <string>                Add network-scoped alias for the container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @option --pid <string>                           PID namespace to use
# @option --pod-id-file <file>                     Write the pod ID to the file
# @option -p --publish* <string>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag --replace                                  If a pod with the same name exists, replace it
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @option --security-opt* <string>                 Security Options
# @option --share <string>                         A comma delimited list of kernel namespaces the pod will share (default "ipc,net,uts")
# @flag --share-parent                             Set the pod's cgroup as the cgroup parent for all containers joining the pod (default true)
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @arg name
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
# @cmd Display a pod configuration
# @option -f --format <string>    Format the output to a Go template or json (default "json")
# @arg pod*[`_choice_pod`]
pod::inspect() {
    :;
}
# }}} podman pod inspect

# {{{ podman pod kill
# @cmd Send the specified signal or SIGKILL to containers in pod
# @flag -a --all                  Kill all containers in all pods
# @option -s --signal <string>    Signal to send to the containers in the pod (default "KILL")
# @arg pod*[`_choice_pod`]
pod::kill() {
    :;
}
# }}} podman pod kill

# {{{ podman pod logs
# @cmd Fetch logs for pod with one or more containers
# @flag --color                      Output the containers within a pod with different colors in the log
# @option -c --container <string>    Filter logs by container name or id which belongs to pod
# @flag -f --follow                  Follow log output.
# @flag -n --names                   Output container names instead of container IDs in the log
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
# @flag -a --all    Pause all running pods
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

# {{{ podman pod ps
# @cmd List pods
# @alias ls,list
# @flag --ctr-ids                  Display the container UUIDs.
# @flag --ctr-names                Display the container names
# @flag --ctr-status               Display the container status
# @option -f --filter* <string>    Filter output based on conditions given
# @option --format <string>        Pretty-print pods to JSON or using a Go template
# @flag --no-trunc                 Do not truncate pod and container IDs
# @flag -n --noheading             Do not print headers
# @flag --ns                       Display namespace information of the pod
# @flag -q --quiet                 Print the numeric IDs of the pods only
# @option --sort <string>          Sort output by created, id, name, or number (default "created")
pod::ps() {
    :;
}
# }}} podman pod ps

# {{{ podman pod restart
# @cmd Restart one or more pods
# @flag -a --all    Restart all running pods
# @arg pod*[`_choice_pod`]
pod::restart() {
    :;
}
# }}} podman pod restart

# {{{ podman pod rm
# @cmd Remove one or more pods
# @flag -a --all                   Remove all running pods
# @flag -f --force                 Force removal of a running pod by first stopping all containers, then removing all containers in the pod.
# @option --pod-id-file* <file>    Read the pod ID from the file
# @option -t --time <int>          Seconds to wait for pod stop before killing the container (default 10)
# @arg pod*[`_choice_pod`]
pod::rm() {
    :;
}
# }}} podman pod rm

# {{{ podman pod start
# @cmd Start one or more pods
# @flag -a --all                   Restart all running pods
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
# @option --pod-id-file* <file>    Write the pod ID to the file
# @option -t --time <int>          Seconds to wait for pod stop before killing the container (default 10)
# @arg pod*[`_choice_pod`]
pod::stop() {
    :;
}
# }}} podman pod stop

# {{{ podman pod top
# @cmd Display the running processes of containers in a pod
# @arg pod[`_choice_pod`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
pod::top() {
    :;
}
# }}} podman pod top

# {{{ podman pod unpause
# @cmd Unpause one or more pods
# @flag -a --all    Unpause all running pods
# @arg pod*[`_choice_pod`]
pod::unpause() {
    :;
}
# }}} podman pod unpause
# }} podman pod

# {{ podman port
# @cmd List port mappings or a specific mapping for the container
# @flag -a --all    Display port information for all containers
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
# @option -f --filter* <string>    Filter output based on conditions given
# @option --format <string>        Pretty-print containers to JSON or using a Go template
# @option -n --last <int>          Print the n last created containers (all states) (default -1)
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
# @flag -a --all-tags              All tagged images in the repository will be pulled
# @option --arch                   Use ARCH instead of the architecture of the machine for choosing images
# @option --authfile <file>        Path of the authentication file.
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
# @option --authfile <file>                Path of the authentication file.
# @option --compression-format <string>    compression format to use
# @option --compression-level <int>        compression level to use
# @option --creds <Credentials>            Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option --digestfile <file>              Write the digest of the pushed image to the specified file
# @flag --disable-content-trust            This is a Docker specific option and is a NOOP
# @flag --force-compression                Use the specified compression algorithm even if the destination contains a differently-compressed variant already
# @option -f --format <path>               Manifest type (oci, v2s2, or v2s1) to use in the destination (default is manifest type of source, with fallbacks)
# @flag --remove-signatures                Discard any pre-existing signatures in the image
# @flag --tls-verify                       Require HTTPS and verify certificates when contacting registries (default true)
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
# @flag -a --all                   Restart all non-running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @flag --running                  Restart only running containers
# @option -t --time <int>          Seconds to wait for stop before killing the container (default 10)
# @arg container*[`_choice_container`]
restart() {
    :;
}
# }} podman restart

# {{ podman rm
# @cmd Remove one or more containers
# @flag -a --all                Remove all containers
# @option --cidfile* <file>     Read the container ID from the file
# @flag --depend                Remove container and all containers that depend on the selected container
# @option --filter* <string>    Filter output based on conditions given
# @flag -f --force              Force removal of a running or unusable container
# @flag -i --ignore             Ignore errors when a specified container is missing
# @option -t --time <int>       Seconds to wait for stop before killing the container (default 10)
# @flag -v --volumes            Remove anonymous volumes associated with the container
# @arg container*[`_choice_container`]
rm() {
    :;
}
# }} podman rm

# {{ podman rmi
# @cmd Remove one or more images from local storage
# @flag -a --all       Remove all images
# @flag -f --force     Force Removal of the image
# @flag -i --ignore    Ignore errors if a specified image does not exist
# @flag --no-prune     Do not remove dangling images
# @arg image*[`_module_oci_podman_image`]
rmi() {
    :;
}
# }} podman rmi

# {{ podman run
# @cmd Run a command in a new container
# @option --add-host* <string>                     Add a custom host-to-IP mapping (host:ip) (default [])
# @option --annotation* <string>                   Add annotations to container (key=value)
# @option --arch                                   use ARCH instead of the architecture of the machine for choosing images
# @option -a --attach* <string>                    Attach to STDIN, STDOUT or STDERR
# @option --authfile <file>                        Path of the authentication file.
# @option --blkio-weight <string>                  Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cap-add* <string>                      Add capabilities to the container
# @option --cap-drop* <string>                     Drop capabilities from the container
# @option --cgroup-conf* <string>                  Configure cgroup v2 (key=value)
# @option --cgroup-parent <string>                 Optional parent cgroup for the container
# @option --cgroupns <string>                      cgroup namespace to use
# @option --cgroups[enabled|disabled|no-conmon|split] <string>  control container cgroup configuration
# @option --chrootdirs* <dir>                      Chroot directories inside the container
# @option --cidfile <file>                         Write the container ID to the file
# @option --cpu-period <uint>                      Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                        Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>                   Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>                   Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>                   CPU shares (relative weight)
# @option --cpus <float>                           Number of CPUs.
# @option --cpuset-cpus <string>                   CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>                   Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @flag -d --detach                                Run container in background and print container ID
# @option --detach-keys <a-Z>                      Override the key sequence for detaching a container.
# @option --device* <string>                       Add a host device to the container
# @option --device-cgroup-rule* <string>           Add a rule to the cgroup allowed devices list
# @option --device-read-bps* <string>              Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>             Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>             Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>            Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @flag --disable-content-trust                    This is a Docker specific option and is a NOOP
# @option --dns* <string>                          Set custom DNS servers
# @option --dns-option* <string>                   Set custom DNS options
# @option --dns-search* <string>                   Set custom DNS search domains
# @option --entrypoint <string>                    Overwrite the default ENTRYPOINT of the image
# @option -e --env* <string>                       Set environment variables in container
# @option --env-file* <file>                       Read in a file of environment variables
# @option --env-merge* <string>                    Preprocess environment variables from image before injecting them into the container
# @option --expose* <string>                       Expose a port or a range of ports
# @option --gidmap* <string>                       GID map to use for the user namespace
# @option --group-add* <string>                    Add additional groups to the primary container process.
# @option --group-entry <string>                   Entry to write to /etc/group
# @option --health-cmd <string>                    set a healthcheck command for the container ('none' disables the existing healthcheck)
# @option --health-interval <string>               set an interval for the healthcheck (a value of disable results in no automatic timer setup) (default "30s")
# @option --health-on-failure <string>             action to take once the container turns unhealthy (default "none")
# @option --health-retries <uint>                  the number of retries allowed before a healthcheck is considered to be unhealthy (default 3)
# @option --health-start-period <string>           the initialization time needed for a container to bootstrap (default "0s")
# @option --health-startup-cmd <string>            Set a startup healthcheck command for the container
# @option --health-startup-interval <string>       Set an interval for the startup healthcheck (default "30s")
# @option --health-startup-retries <uint>          Set the maximum number of retries before the startup healthcheck will restart the container
# @option --health-startup-success <uint>          Set the number of consecutive successes before the startup healthcheck is marked as successful and the normal healthcheck begins (0 indicates any success will start the regular healthcheck)
# @option --health-startup-timeout <string>        Set the maximum amount of time that the startup healthcheck may take before it is considered failed (default "30s")
# @option --health-timeout <string>                the maximum time allowed to complete the healthcheck before an interval is considered failed (default "30s")
# @flag --help
# @option -h --hostname <string>                   Set container hostname
# @option --hostuser* <string>                     Host user account to add to /etc/passwd within container
# @flag --http-proxy                               Set proxy environment variables in the container based on the host proxy vars (default true)
# @option --image-volume[bind|tmpfs|ignore] <string>  Tells podman how to handle the builtin image volumes (default "bind")
# @flag --init                                     Run an init binary inside the container that forwards signals and reaps processes
# @option --init-path <path>                       Path to the container-init binary
# @flag -i --interactive                           Keep STDIN open even if not attached
# @option --ip <string>                            Specify a static IPv4 address for the container
# @option --ip6 <string>                           Specify a static IPv6 address for the container
# @option --ipc <string>                           IPC namespace to use
# @option -l --label* <string>                     Set metadata on container
# @option --label-file* <file>                     Read in a line delimited file of labels
# @option --log-driver <string>                    Logging driver for the container
# @option --log-opt* <string>                      Logging driver options
# @option --mac-address <string>                   Container MAC address (e.g. 92:d0:c6:0a:29:33)
# @option -m --memory <<number>[<unit>]>           Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>                   Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>                Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --mount* <file>                          Attach a filesystem mount to the container
# @option --name <string>                          Assign a name to the container
# @option --network*[`_choice_network`] <string>   Connect a container to a network
# @option --network-alias* <string>                Add network-scoped alias for the container
# @flag --no-healthcheck                           Disable healthchecks on container
# @flag --no-hosts                                 Do not create /etc/hosts within the container, instead use the version from the image
# @flag --oom-kill-disable                         Disable OOM Killer
# @option --oom-score-adj <int>                    Tune the host's OOM preferences (-1000 to 1000)
# @option --os                                     use OS instead of the running OS for choosing images
# @flag --passwd                                   add entries to /etc/passwd and /etc/group (default true)
# @option --passwd-entry <string>                  Entry to write to /etc/passwd
# @option --personality <string>                   Configure execution domain using personality (e.g., LINUX/LINUX32)
# @option --pid <string>                           PID namespace to use
# @option --pids-limit <int>                       Tune container pids limit (set -1 for unlimited) (default -1)
# @option --platform <string>                      Specify the platform for selecting the image.
# @option --pod <string>                           Run container in an existing pod
# @option --pod-id-file <file>                     Read the pod ID from the file
# @flag --privileged                               Give extended privileges to container
# @option -p --publish* <string>                   Publish a container's port, or a range of ports, to the host (default [])
# @flag -P --publish-all                           Publish all exposed ports to random ports on the host interface
# @option --pull[always|missing|never|newer] <string>  Pull image policy
# @flag -q --quiet                                 Suppress output information when pulling images
# @option --rdt-class <string>                     Class of Service (COS) that the container should be assigned to
# @flag --read-only                                Make containers root filesystem read-only
# @flag --read-only-tmpfs                          When running --read-only containers mount read-write tmpfs on /dev, /dev/shm, /run, /tmp and /var/tmp (default true)
# @flag --replace                                  If a container with the same name exists, replace it
# @option --requires* <string>                     Add one or more requirement containers that must be started before this container will start
# @option --restart[always|no|never|on-failure|unless-stopped] <string>  Restart policy to apply when a container exits
# @flag --rm                                       Remove container and any anonymous unnamed volume associated with the container after exit
# @flag --rmi                                      Remove image unless used by other containers, implies --rm
# @flag --rootfs                                   The first argument is not an image but the rootfs to the exploded container
# @option --sdnotify[container|conmon|ignore] <string>  control sd-notify behavior (default "container")
# @option --seccomp-policy <file>                  Policy for selecting a seccomp profile (experimental) (default "default")
# @option --secret* <string>                       Add secret to container
# @option --security-opt* <string>                 Security Options
# @option --shm-size <<number>[<unit>]>            Size of /dev/shm (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --shm-size-systemd <<number>[<unit>]>    Size of systemd specific tmpfs mounts (/run, /run/lock) (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @flag --sig-proxy                                Proxy received signals to the process (default true)
# @option --stop-signal <string>                   Signal to stop a container.
# @option --stop-timeout <uint>                    Timeout (in seconds) that containers stopped by user command have to exit.
# @option --subgidname <string>                    Name of range listed in /etc/subgid for use in user namespace
# @option --subuidname <string>                    Name of range listed in /etc/subuid for use in user namespace
# @option --sysctl* <string>                       Sysctl options
# @option --systemd[true|false|always] <string>    Run container in systemd mode (default "true")
# @option --timeout <uint>                         Maximum length of time a container is allowed to run.
# @flag --tls-verify                               Require HTTPS and verify certificates when contacting registries for pulling images
# @option --tmpfs <tmpfs>                          Mount a temporary filesystem (tmpfs) into a container
# @flag -t --tty                                   Allocate a pseudo-TTY for container
# @option --tz <string>                            Set timezone in container
# @option --uidmap* <string>                       UID map to use for the user namespace
# @option --ulimit* <string>                       Ulimit options
# @option --umask <string>                         Set umask in container (default "0022")
# @option --unsetenv* <string>                     Unset environment default variables in container
# @flag --unsetenv-all                             Unset all default environment variables in container
# @option -u --user <string>                       Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                        User namespace to use
# @option --uts <string>                           UTS namespace to use
# @option --variant                                Use VARIANT instead of the running architecture variant for choosing images
# @option -v --volume* <string>                    Bind mount a volume into the container.
# @option --volumes-from* <string>                 Mount volumes from the specified container(s)
# @option -w --workdir <dir>                       Working directory inside the container
# @arg image[`_module_oci_podman_image`]
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]
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
# @flag --uncompressed              Accept uncompressed layers when copying OCI images
# @arg image*[`_module_oci_podman_image`]
save() {
    :;
}
# }} podman save

# {{ podman search
# @cmd Search registry for image
# @option --authfile <file>        Path of the authentication file.
# @flag --compatible               List stars, official and automated columns (Docker compatibility)
# @option --creds <Credentials>    Credentials (USERNAME:PASSWORD) to use for authenticating to a registry
# @option -f --filter* <string>    Filter output based on conditions provided (default [])
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
# @option -d --driver <file>                Specify secret driver (default "file")
# @option --driver-opts <stringToString>    Specify driver specific options (default [])
# @flag --env                               Read secret data from environment variable
# @option -l --label* <string>              Specify labels on the secret
# @flag --replace                           If a secret with the same name exists, replace it
# @arg name
# @arg file <FILE|->
secret::create() {
    :;
}
# }}} podman secret create

# {{{ podman secret exists
# @cmd Check if a secret exists in local storage
# @arg secret[`_choice_secret`]
secret::exists() {
    :;
}
# }}} podman secret exists

# {{{ podman secret inspect
# @cmd Inspect a secret
# @option -f --format <string>    Format inspect output using Go template
# @flag --pretty                  Print inspect output in human-readable format
# @flag --showsecret              Display the secret
# @arg secret*[`_choice_secret`]
secret::inspect() {
    :;
}
# }}} podman secret inspect

# {{{ podman secret ls
# @cmd List secrets
# @alias list
# @option -f --filter* <string>    Filter secret output
# @option --format <string>        Format volume output using Go template (default "{{range .}}{{.ID}}\t{{.Name}}\t{{.Driver}}\t{{.CreatedAt}}\t{{.UpdatedAt}}\n{{end -}}")
# @flag -n --noheading             Do not print headers
# @flag -q --quiet                 Print secret IDs only
secret::ls() {
    :;
}
# }}} podman secret ls

# {{{ podman secret rm
# @cmd Remove one or more secrets
# @flag -a --all       Remove all secrets
# @flag -i --ignore    Ignore errors when a specified secret is missing
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
# @option -f --filter* <string>    Filter output based on conditions given
# @flag -i --interactive           Keep STDIN open even if not attached
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
# @flag --no-reset               Disable resetting the screen between intervals
# @flag --no-stream              Disable streaming stats and only pull the first result, default setting is false
# @flag --no-trunc               Do not truncate output
# @arg container*[`_choice_container`]
stats() {
    :;
}
# }} podman stats

# {{ podman stop
# @cmd Stop one or more containers
# @flag -a --all                   Stop all running containers
# @option -f --filter* <string>    Filter output based on conditions given
# @option -t --time <int>          Seconds to wait for stop before killing the container (default 10)
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
# @cmd Manage remote API service destinations
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
# @option -f --format <string>    Custom Go template for printing connections
# @flag -q --quiet                Custom Go template for printing connections
system::connection::list() {
    :;
}
# }}}} podman system connection list

# {{{{ podman system connection remove
# @cmd Delete named destination
# @alias rm
# @flag -a --all    Remove all connections
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

# {{{ podman system events
# @cmd Show podman system events
# @option -f --filter* <string>    filter output
# @option --format <string>        format the output using a Go template
# @flag --no-trunc                 do not truncate the output (default true)
# @option --since <string>         show all events created since timestamp
# @flag --stream                   stream events and do not exit when returning the last known event (default true)
# @option --until <string>         show all events until timestamp
system::events() {
    :;
}
# }}} podman system events

# {{{ podman system info
# @cmd Display podman system information
# @option -f --format <string>    Change the output format to JSON or a Go template
system::info() {
    :;
}
# }}} podman system info

# {{{ podman system prune
# @cmd Remove unused data
# @flag -a --all                Remove all unused data
# @flag --external              Remove container data in storage not controlled by podman
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation.
# @flag --volumes               Prune volumes
system::prune() {
    :;
}
# }}} podman system prune
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
# @arg container[`_choice_container`]
# @arg format-descriptors-args* <FORMAT-DESCRIPTORS|ARGS>
top() {
    :;
}
# }} podman top

# {{ podman unpause
# @cmd Unpause the processes in one or more containers
# @flag -a --all                   Unpause all paused containers
# @option -f --filter* <string>    Filter output based on conditions given
# @arg container*[`_choice_container`]
unpause() {
    :;
}
# }} podman unpause

# {{ podman untag
# @cmd Remove a name from a local image
# @arg image*[`_module_oci_podman_image`]
untag() {
    :;
}
# }} podman untag

# {{ podman update
# @cmd Update an existing container
# @option --blkio-weight <string>           Block IO weight (relative weight) accepts a weight value between 10 and 1000.
# @option --blkio-weight-device <DEVICE_NAME:WEIGHT>  Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
# @option --cpu-period <uint>               Limit the CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                 Limit the CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <uint>            Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>            Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <uint>            CPU shares (relative weight)
# @option --cpus <float>                    Number of CPUs.
# @option --cpuset-cpus <string>            CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>            Memory nodes (MEMs) in which to allow execution (0-3, 0,1).
# @option --device-read-bps* <string>       Limit read rate (bytes per second) from a device (e.g. --device-read-bps=/dev/sda:1mb)
# @option --device-read-iops* <string>      Limit read rate (IO per second) from a device (e.g. --device-read-iops=/dev/sda:1000)
# @option --device-write-bps* <string>      Limit write rate (bytes per second) to a device (e.g. --device-write-bps=/dev/sda:1mb)
# @option --device-write-iops* <string>     Limit write rate (IO per second) to a device (e.g. --device-write-iops=/dev/sda:1000)
# @option -m --memory <<number>[<unit>]>    Memory limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-reservation <<number>[<unit>]>  Memory soft limit (format: <number>[<unit>], where unit = b (bytes), k (kibibytes), m (mebibytes), or g (gibibytes))
# @option --memory-swap <string>            Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>         Tune container memory swappiness (0 to 100, or -1 for system default) (default -1)
# @option --pids-limit <int>                Tune container pids limit (set -1 for unlimited) (default -1)
# @arg container[`_choice_container`]
update() {
    :;
}
# }} podman update

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
# @option -d --driver <string>    Specify volume driver name (default "local")
# @flag --ignore                  Don't fail if volume already exists
# @option -l --label* <string>    Set metadata for a volume (default [])
# @option -o --opt* <string>      Set driver specific options (default [])
# @arg name
volume::create() {
    :;
}
# }}} podman volume create

# {{{ podman volume exists
# @cmd Check if volume exists
# @arg volume[`_choice_volume`]
volume::exists() {
    :;
}
# }}} podman volume exists

# {{{ podman volume inspect
# @cmd Display detailed information on one or more volumes
# @flag -a --all                  Inspect all volumes
# @option -f --format <string>    Format volume output using Go template (default "json")
# @arg volume*[`_choice_volume`]
volume::inspect() {
    :;
}
# }}} podman volume inspect

# {{{ podman volume ls
# @cmd List volumes
# @alias list
# @option -f --filter* <string>    Filter volume output
# @option --format <string>        Format volume output using Go template (default "{{range .}}{{.Driver}}\t{{.Name}}\n{{end -}}")
# @flag -n --noheading             Do not print headers
# @flag -q --quiet                 Print volume output in quiet mode
volume::ls() {
    :;
}
# }}} podman volume ls

# {{{ podman volume prune
# @cmd Remove all unused volumes
# @option --filter* <string>    Provide filter values (e.g. 'label=<key>=<value>')
# @flag -f --force              Do not prompt for confirmation
volume::prune() {
    :;
}
# }}} podman volume prune

# {{{ podman volume reload
# @cmd Reload all volumes from volume plugins
volume::reload() {
    :;
}
# }}} podman volume reload

# {{{ podman volume rm
# @cmd Remove one or more volumes
# @alias remove
# @flag -a --all             Remove all volumes
# @flag -f --force           Remove a volume by force, even if it is being used by a container
# @option -t --time <int>    Seconds to wait for running containers to stop before killing the container (default 10)
# @arg volume*[`_choice_volume`]
volume::rm() {
    :;
}
# }}} podman volume rm
# }} podman volume

# {{ podman wait
# @cmd Block on one or more containers
# @option --condition* <string>     Condition to wait on
# @flag --ignore                    Ignore if a container does not exist
# @option -i --interval <string>    Time Interval to wait before polling for completion (default "250ms")
# @arg container*[`_choice_container`]
wait() {
    :;
}
# }} podman wait

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_container() {
    podman ps --format json | yq '.[] | .Names[0] + "	" + .Image' 
}

_choice_network() {
    podman network ls --format json | yq '.[].Name'
}

_choice_container_cp() {
    _complete_container_path() {
        _argc_util_mode_kv ':'
        if [[ -z "$argc__kv_prefix" ]]; then
            if _argc_util_has_path_prefix; then
                echo "__argc_value=path"
                return
            fi
            _choice_container | _argc_util_transform suffix=: nospace
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

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_container_pod() {
    _argc_util_parallel _choice_container ::: _choice_pod
}

_choice_machine() {
    podman machine list | gawk '{ if (NR > 1) { gsub(/\*$/, "", $1); print $1}}'
}

_choice_pod() {
    podman pod list --format json | yq '.[].Name'
}

_choice_secret() {
    podman secret list --format '{{.Name}}'
}

_choice_volume() {
    podman volume list --format json | yq '.[] | .Name + "	" + .Driver'
}

_module_oci_podman_image() {
    podman image ls --format '{{.Repository}}={{.Tag}}' | _argc_util_comp_kv :
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

command eval "$(argc --argc-eval "$0" "$@")"