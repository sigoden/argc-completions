#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config <string>          Location of client config files (default "/home/sigo/.docker")
# @option -c --context <string>      Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with "docker context use")
# @flag -D --debug                   Enable debug mode
# @option -H --host <list>           Daemon socket(s) to connect to
# @option -l --log-level <string>    Set the logging level ("debug", "info", "warn", "error", "fatal") (default "info")
# @flag --tls                        Use TLS; implied by --tlsverify
# @option --tlscacert <string>       Trust certs signed only by this CA (default "/home/sigo/.docker/ca.pem")
# @option --tlscert <string>         Path to TLS certificate file (default "/home/sigo/.docker/cert.pem")
# @option --tlskey <string>          Path to TLS key file (default "/home/sigo/.docker/key.pem")
# @flag --tlsverify                  Use TLS and verify the remote
# @flag -v --version                 Print version information and quit


# {{ docker run
# @cmd Create and run a new container from an image
# @option --add-host <list>                   Add a custom host-to-IP mapping (host:ip)
# @option -a --attach <list>                  Attach to STDIN, STDOUT or STDERR
# @option --blkio-weight <uint16>             Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --blkio-weight-device <list>        Block IO weight (relative device weight) (default [])
# @option --cap-add <list>                    Add Linux capabilities
# @option --cap-drop <list>                   Drop Linux capabilities
# @option --cgroup-parent <string>            Optional parent cgroup for the container
# @option --cgroupns <string>                 Cgroup namespace to use (host|private) 'host': Run the container in the Docker host's cgroup namespace 'private': Run the container in its own private cgroup namespace '': Use the cgroup namespace as configured by the default-cgroupns-mode option on the daemon (default)
# @option --cidfile <string>                  Write the container ID to the file
# @option --cpu-period <int>                  Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                   Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>               Limit CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>              Limit CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>               CPU shares (relative weight)
# @option --cpus <decimal>                    Number of CPUs
# @option --cpuset-cpus <string>              CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>              MEMs in which to allow execution (0-3, 0,1)
# @flag -d --detach                           Run container in background and print container ID
# @option --detach-keys <string>              Override the key sequence for detaching a container
# @option --device <list>                     Add a host device to the container
# @option --device-cgroup-rule <list>         Add a rule to the cgroup allowed devices list
# @option --device-read-bps <list>            Limit read rate (bytes per second) from a device (default [])
# @option --device-read-iops <list>           Limit read rate (IO per second) from a device (default [])
# @option --device-write-bps <list>           Limit write rate (bytes per second) to a device (default [])
# @option --device-write-iops <list>          Limit write rate (IO per second) to a device (default [])
# @flag --disable-content-trust               Skip image verification (default true)
# @option --dns <list>                        Set custom DNS servers
# @option --dns-option <list>                 Set DNS options
# @option --dns-search <list>                 Set custom DNS search domains
# @option --domainname <string>               Container NIS domain name
# @option --entrypoint <string>               Overwrite the default ENTRYPOINT of the image
# @option -e --env <list>                     Set environment variables
# @option --env-file <list>                   Read in a file of environment variables
# @option --expose <list>                     Expose a port or a range of ports
# @option --gpus <gpu-request>                GPU devices to add to the container ('all' to pass all GPUs)
# @option --group-add <list>                  Add additional groups to join
# @option --health-cmd <string>               Command to run to check health
# @option --health-interval <duration>        Time between running the check (ms|s|m|h) (default 0s)
# @option --health-retries <int>              Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>    Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)
# @option --health-timeout <duration>         Maximum time to allow one check to run (ms|s|m|h) (default 0s)
# @flag --help                                Print usage
# @option -h --hostname <string>              Container host name
# @flag --init                                Run an init inside the container that forwards signals and reaps processes
# @flag -i --interactive                      Keep STDIN open even if not attached
# @option --ip <string>                       IPv4 address (e.g., 172.30.100.104)
# @option --ip6 <string>                      IPv6 address (e.g., 2001:db8::33)
# @option --ipc <string>                      IPC mode to use
# @option --isolation <string>                Container isolation technology
# @option --kernel-memory <bytes>             Kernel memory limit
# @option -l --label <list>                   Set meta data on a container
# @option --label-file <list>                 Read in a line delimited file of labels
# @option --link <list>                       Add link to another container
# @option --link-local-ip <list>              Container IPv4/IPv6 link-local addresses
# @option --log-driver <string>               Logging driver for the container
# @option --log-opt <list>                    Log driver options
# @option --mac-address <string>              Container MAC address (e.g., 92:d0:c6:0a:29:33)
# @option -m --memory <bytes>                 Memory limit
# @option --memory-reservation <bytes>        Memory soft limit
# @option --memory-swap <bytes>               Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>           Tune container memory swappiness (0 to 100) (default -1)
# @option --mount <mount>                     Attach a filesystem mount to the container
# @option --name <string>                     Assign a name to the container
# @option --network <network>                 Connect a container to a network
# @option --network-alias <list>              Add network-scoped alias for the container
# @flag --no-healthcheck                      Disable any container-specified HEALTHCHECK
# @flag --oom-kill-disable                    Disable OOM Killer
# @option --oom-score-adj <int>               Tune host's OOM preferences (-1000 to 1000)
# @option --pid <string>                      PID namespace to use
# @option --pids-limit <int>                  Tune container pids limit (set -1 for unlimited)
# @option --platform <string>                 Set platform if server is multi-platform capable
# @flag --privileged                          Give extended privileges to this container
# @option -p --publish <list>                 Publish a container's port(s) to the host
# @flag -P --publish-all                      Publish all exposed ports to random ports
# @option --pull <string>                     Pull image before running ("always", "missing", "never") (default "missing")
# @flag -q --quiet                            Suppress the pull output
# @flag --read-only                           Mount the container's root filesystem as read only
# @option --restart <string>                  Restart policy to apply when a container exits (default "no")
# @flag --rm                                  Automatically remove the container when it exits
# @option --runtime <string>                  Runtime to use for this container
# @option --security-opt <list>               Security Options
# @option --shm-size <bytes>                  Size of /dev/shm
# @flag --sig-proxy                           Proxy received signals to the process (default true)
# @option --stop-signal <string>              Signal to stop the container
# @option --stop-timeout <int>                Timeout (in seconds) to stop a container
# @option --storage-opt <list>                Storage driver options for the container
# @option --sysctl <map>                      Sysctl options (default map[])
# @option --tmpfs <list>                      Mount a tmpfs directory
# @flag -t --tty                              Allocate a pseudo-TTY
# @option --ulimit <ulimit>                   Ulimit options (default [])
# @option -u --user <string>                  Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                   User namespace to use
# @option --uts <string>                      UTS namespace to use
# @option -v --volume <list>                  Bind mount a volume
# @option --volume-driver <string>            Optional volume driver for the container
# @option --volumes-from <list>               Mount volumes from the specified container(s)
# @option -w --workdir <string>               Working directory inside the container
# @arg IMAGE[`_choice_image_repo_tag`]
# @arg ARG*
run() {
    :;
}
# }} docker run

# {{ docker exec
# @cmd Execute a command in a running container
# @flag -d --detach                 Detached mode: run command in the background
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @option -e --env <list>           Set environment variables
# @option --env-file <list>         Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag --privileged                Give extended privileges to the command
# @flag -t --tty                    Allocate a pseudo-TTY
# @option -u --user <string>        Username or UID (format: "<name|uid>[:<group|gid>]")
# @option -w --workdir <string>     Working directory inside the container
# @arg CONTAINER[`_choice_container_name`]
# @arg ARG*
exec() {
    :;
}
# }} docker exec

# {{ docker ps
# @cmd List containers
# @flag -a --all                  Show all containers (default shows just running)
# @option -f --filter[`_choice_container_ls_filter`] <filter>  Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @option -n --last <int>         Show n last created containers (includes all states) (default -1)
# @flag -l --latest               Show the latest created container (includes all states)
# @flag --no-trunc                Don't truncate output
# @flag -q --quiet                Only display container IDs
# @flag -s --size                 Display total file sizes
ps() {
    :;
}
# }} docker ps

# {{ docker build
# @cmd Build an image from a Dockerfile
# @option --add-host <strings>               Add a custom host-to-IP mapping (format: "host:ip")
# @option --allow <strings>                  Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
# @option --attest <stringArray>             Attestation parameters (format: "type=sbom,generator=image")
# @option --build-arg <stringArray>          Set build-time variables
# @option --build-context <stringArray>      Additional build contexts (e.g., name=path)
# @option --builder <string>                 Override the configured builder instance (default "default")
# @option --cache-from <stringArray>         External cache sources (e.g., "user/app:cache", "type=local,src=path/to/dir")
# @option --cache-to <stringArray>           Cache export destinations (e.g., "user/app:cache", "type=local,dest=path/to/dir")
# @option --cgroup-parent <string>           Optional parent cgroup for the container
# @option -f --file <string>                 Name of the Dockerfile (default: "PATH/Dockerfile")
# @option --iidfile <string>                 Write the image ID to the file
# @option --label <stringArray>              Set metadata for an image
# @flag --load                               Shorthand for "--output=type=docker"
# @option --metadata-file <string>           Write build result metadata to the file
# @option --network <string>                 Set the networking mode for the "RUN" instructions during build (default "default")
# @flag --no-cache                           Do not use cache when building the image
# @option --no-cache-filter <stringArray>    Do not cache specified stages
# @option -o --output <stringArray>          Output destination (format: "type=local,dest=path")
# @option --platform <stringArray>           Set target platform for build
# @option --progress <string>                Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>              Shortand for "--attest=type=provenance"
# @flag --pull                               Always attempt to pull all referenced images
# @flag --push                               Shorthand for "--output=type=registry"
# @flag -q --quiet                           Suppress the build output and print image ID on success
# @option --sbom <string>                    Shorthand for "--attest=type=sbom"
# @option --secret <stringArray>             Secret to expose to the build (format: "id=mysecret[,src=/local/secret]")
# @option --shm-size <bytes>                 Size of "/dev/shm"
# @option --ssh <stringArray>                SSH agent socket or keys to expose to the build (format: "default|<id>[=<socket>|<key>[,<key>]]")
# @option -t --tag <stringArray>             Name and optionally a tag (format: "name:tag")
# @option --target <string>                  Set the target build stage to build
# @option --ulimit <ulimit>                  Ulimit options (default [])
# @arg PATH-URL <PATH|URL|->
build() {
    :;
}
# }} docker build

# {{ docker pull
# @cmd Download an image from a registry
# @flag -a --all-tags                          Download all tagged images in the repository
# @flag --disable-content-trust                Skip image verification (default true)
# @option --platform <string>                  Set platform if server is multi-platform capable
# @flag -q --quiet                             Suppress verbose output
# @arg NAME-TAG-DIGEST <NAME[:TAG|@DIGEST]>
pull() {
    :;
}
# }} docker pull

# {{ docker push
# @cmd Upload an image to a registry
# @flag -a --all-tags              Push all tags of an image to the repository
# @flag --disable-content-trust    Skip image signing (default true)
# @flag -q --quiet                 Suppress verbose output
# @arg NAME-TAG <NAME[:TAG]>
push() {
    :;
}
# }} docker push

# {{ docker images
# @cmd List images
# @flag -a --all                            Show all images (default hides intermediate images)
# @flag --digests                           Show digests
# @option -f --filter[`_choice_image_ls_filter`] <filter>  Filter output based on conditions provided
# @option --format <string>                 Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-trunc                          Don't truncate output
# @flag -q --quiet                          Only show image IDs
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
images() {
    :;
}
# }} docker images

# {{ docker login
# @cmd Log in to a registry
# @option -p --password <string>    Password
# @flag --password-stdin            Take the password from stdin
# @option -u --username <string>    Username
# @arg SERVER
login() {
    :;
}
# }} docker login

# {{ docker logout
# @cmd Log out from a registry
# @arg SERVER
logout() {
    :;
}
# }} docker logout

# {{ docker search
# @cmd Search Docker Hub for images
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Pretty-print search using a Go template
# @option --limit <int>           Max number of search results
# @flag --no-trunc                Don't truncate output
# @arg TERM
search() {
    :;
}
# }} docker search

# {{ docker version
# @cmd Show the Docker version information
# @option -f --format <string>    Format the output using the given Go template
version() {
    :;
}
# }} docker version

# {{ docker info
# @cmd Display system-wide information
# @option -f --format <string>    Format the output using the given Go template
info() {
    :;
}
# }} docker info

# {{ docker builder
# @cmd Manage builds
# @option --builder <string>    Override the configured builder instance (default "default")
builder() {
    :;
}

# {{{ docker builder imagetools
# @cmd Commands to work on images in registry
# @option --builder <string>    Override the configured builder instance (default "default")
builder::imagetools() {
    :;
}

# {{{{ docker builder imagetools create
# @cmd Create a new image based on source images
# @flag --append                     Append to existing manifest
# @option --builder <string>         Override the configured builder instance (default "default")
# @flag --dry-run                    Show final image instead of pushing
# @option -f --file <stringArray>    Read source descriptor from file
# @option --progress <string>        Set type of progress output ("auto", "plain", "tty").
# @option -t --tag <stringArray>     Set reference for new image
# @arg SOURCE*
builder::imagetools::create() {
    :;
}
# }}}} docker builder imagetools create

# {{{{ docker builder imagetools inspect
# @cmd Show details of an image in the registry
# @option --builder <string>    Override the configured builder instance (default "default")
# @option --format <string>     Format the output using the given Go template
# @flag --raw                   Show original, unformatted JSON manifest
# @arg NAME[`_choice_builder`]
builder::imagetools::inspect() {
    :;
}
# }}}} docker builder imagetools inspect
# }}} docker builder imagetools

# {{{ docker builder bake
# @cmd Build from a file
# @option --builder <string>          Override the configured builder instance (default "default")
# @option -f --file <stringArray>     Build definition file
# @flag --load                        Shorthand for "--set=*.output=type=docker"
# @option --metadata-file <string>    Write build result metadata to the file
# @flag --no-cache                    Do not use cache when building the image
# @flag --print                       Print the options without building
# @option --progress <string>         Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>       Shorthand for "--set=*.attest=type=provenance"
# @flag --pull                        Always attempt to pull all referenced images
# @flag --push                        Shorthand for "--set=*.output=type=registry"
# @option --sbom <string>             Shorthand for "--set=*.attest=type=sbom"
# @option --set <stringArray>         Override target value (e.g., "targetpattern.key=value")
# @arg TARGET*
builder::bake() {
    :;
}
# }}} docker builder bake

# {{{ docker builder build
# @cmd Start a build
# @option --add-host <strings>               Add a custom host-to-IP mapping (format: "host:ip")
# @option --allow <strings>                  Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
# @option --attest <stringArray>             Attestation parameters (format: "type=sbom,generator=image")
# @option --build-arg <stringArray>          Set build-time variables
# @option --build-context <stringArray>      Additional build contexts (e.g., name=path)
# @option --builder <string>                 Override the configured builder instance (default "default")
# @option --cache-from <stringArray>         External cache sources (e.g., "user/app:cache", "type=local,src=path/to/dir")
# @option --cache-to <stringArray>           Cache export destinations (e.g., "user/app:cache", "type=local,dest=path/to/dir")
# @option --cgroup-parent <string>           Optional parent cgroup for the container
# @option -f --file <string>                 Name of the Dockerfile (default: "PATH/Dockerfile")
# @option --iidfile <string>                 Write the image ID to the file
# @option --label <stringArray>              Set metadata for an image
# @flag --load                               Shorthand for "--output=type=docker"
# @option --metadata-file <string>           Write build result metadata to the file
# @option --network <string>                 Set the networking mode for the "RUN" instructions during build (default "default")
# @flag --no-cache                           Do not use cache when building the image
# @option --no-cache-filter <stringArray>    Do not cache specified stages
# @option -o --output <stringArray>          Output destination (format: "type=local,dest=path")
# @option --platform <stringArray>           Set target platform for build
# @option --progress <string>                Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>              Shortand for "--attest=type=provenance"
# @flag --pull                               Always attempt to pull all referenced images
# @flag --push                               Shorthand for "--output=type=registry"
# @flag -q --quiet                           Suppress the build output and print image ID on success
# @option --sbom <string>                    Shorthand for "--attest=type=sbom"
# @option --secret <stringArray>             Secret to expose to the build (format: "id=mysecret[,src=/local/secret]")
# @option --shm-size <bytes>                 Size of "/dev/shm"
# @option --ssh <stringArray>                SSH agent socket or keys to expose to the build (format: "default|<id>[=<socket>|<key>[,<key>]]")
# @option -t --tag <stringArray>             Name and optionally a tag (format: "name:tag")
# @option --target <string>                  Set the target build stage to build
# @option --ulimit <ulimit>                  Ulimit options (default [])
# @arg PATH-URL <PATH|URL|->
builder::build() {
    :;
}
# }}} docker builder build

# {{{ docker builder create
# @cmd Create a new builder instance
# @flag --append                        Append a node to builder instead of changing it
# @flag --bootstrap                     Boot builder after creation
# @option --buildkitd-flags <string>    Flags for buildkitd daemon
# @option --config <string>             BuildKit config file
# @option --driver <string>             Driver to use (available: "docker-container", "kubernetes", "remote")
# @option --driver-opt <stringArray>    Options for the driver
# @flag --leave                         Remove a node from builder instead of changing it
# @option --name <string>               Builder instance name
# @option --node <string>               Create/modify node with given name
# @option --platform <stringArray>      Fixed platforms for current node
# @flag --use                           Set the current builder instance
# @arg CONTEXT-ENDPOINT
builder::create() {
    :;
}
# }}} docker builder create

# {{{ docker builder du
# @cmd Disk usage
# @option --builder <string>    Override the configured builder instance (default "default")
# @option --filter <filter>     Provide filter values
# @flag --verbose               Provide a more verbose output
builder::du() {
    :;
}
# }}} docker builder du

# {{{ docker builder inspect
# @cmd Inspect current builder instance
# @flag --bootstrap             Ensure builder has booted before inspecting
# @option --builder <string>    Override the configured builder instance (default "default")
# @arg NAME[`_choice_builder`]
builder::inspect() {
    :;
}
# }}} docker builder inspect

# {{{ docker builder ls
# @cmd List builder instances
builder::ls() {
    :;
}
# }}} docker builder ls

# {{{ docker builder prune
# @cmd Remove build cache
# @flag -a --all                    Include internal/frontend images
# @option --builder <string>        Override the configured builder instance (default "default")
# @option --filter <filter>         Provide filter values (e.g., "until=24h")
# @flag -f --force                  Do not prompt for confirmation
# @option --keep-storage <bytes>    Amount of disk space to keep for cache
# @flag --verbose                   Provide a more verbose output
builder::prune() {
    :;
}
# }}} docker builder prune

# {{{ docker builder rm
# @cmd Remove a builder instance
# @flag --all-inactive          Remove all inactive builders
# @option --builder <string>    Override the configured builder instance (default "default")
# @flag -f --force              Do not prompt for confirmation
# @flag --keep-daemon           Keep the buildkitd daemon running
# @flag --keep-state            Keep BuildKit state
# @arg NAME[`_choice_builder`]
builder::rm() {
    :;
}
# }}} docker builder rm

# {{{ docker builder stop
# @cmd Stop builder instance
# @option --builder <string>    Override the configured builder instance (default "default")
# @arg NAME[`_choice_builder`]
builder::stop() {
    :;
}
# }}} docker builder stop

# {{{ docker builder use
# @cmd Set the current builder instance
# @option --builder <string>    Override the configured builder instance (default "default")
# @flag --default               Set builder as default for current context
# @flag --global                Builder persists context changes
# @arg NAME[`_choice_builder`]
builder::use() {
    :;
}
# }}} docker builder use

# {{{ docker builder version
# @cmd Show buildx version information
builder::version() {
    :;
}
# }}} docker builder version
# }} docker builder

# {{ docker buildx
# @cmd Docker Buildx (Docker Inc., v0.10.2)
# @option --builder <string>    Override the configured builder instance
buildx() {
    :;
}

# {{{ docker buildx imagetools
# @cmd Commands to work on images in registry
# @option --builder <string>    Override the configured builder instance
buildx::imagetools() {
    :;
}

# {{{{ docker buildx imagetools create
# @cmd Create a new image based on source images
# @flag --append                     Append to existing manifest
# @option --builder <string>         Override the configured builder instance
# @flag --dry-run                    Show final image instead of pushing
# @option -f --file <stringArray>    Read source descriptor from file
# @option --progress <string>        Set type of progress output ("auto", "plain", "tty").
# @option -t --tag <stringArray>     Set reference for new image
# @arg SOURCE*
buildx::imagetools::create() {
    :;
}
# }}}} docker buildx imagetools create

# {{{{ docker buildx imagetools inspect
# @cmd Show details of an image in the registry
# @option --builder <string>    Override the configured builder instance
# @option --format <string>     Format the output using the given Go template
# @flag --raw                   Show original, unformatted JSON manifest
# @arg NAME[`_choice_builder`]
buildx::imagetools::inspect() {
    :;
}
# }}}} docker buildx imagetools inspect
# }}} docker buildx imagetools

# {{{ docker buildx bake
# @cmd Build from a file
# @option --builder <string>          Override the configured builder instance
# @option -f --file <stringArray>     Build definition file
# @flag --load                        Shorthand for "--set=*.output=type=docker"
# @option --metadata-file <string>    Write build result metadata to the file
# @flag --no-cache                    Do not use cache when building the image
# @flag --print                       Print the options without building
# @option --progress <string>         Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>       Shorthand for "--set=*.attest=type=provenance"
# @flag --pull                        Always attempt to pull all referenced images
# @flag --push                        Shorthand for "--set=*.output=type=registry"
# @option --sbom <string>             Shorthand for "--set=*.attest=type=sbom"
# @option --set <stringArray>         Override target value (e.g., "targetpattern.key=value")
# @arg TARGET*
buildx::bake() {
    :;
}
# }}} docker buildx bake

# {{{ docker buildx build
# @cmd Start a build
# @option --add-host <strings>               Add a custom host-to-IP mapping (format: "host:ip")
# @option --allow <strings>                  Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
# @option --attest <stringArray>             Attestation parameters (format: "type=sbom,generator=image")
# @option --build-arg <stringArray>          Set build-time variables
# @option --build-context <stringArray>      Additional build contexts (e.g., name=path)
# @option --builder <string>                 Override the configured builder instance
# @option --cache-from <stringArray>         External cache sources (e.g., "user/app:cache", "type=local,src=path/to/dir")
# @option --cache-to <stringArray>           Cache export destinations (e.g., "user/app:cache", "type=local,dest=path/to/dir")
# @option --cgroup-parent <string>           Optional parent cgroup for the container
# @option -f --file <string>                 Name of the Dockerfile (default: "PATH/Dockerfile")
# @option --iidfile <string>                 Write the image ID to the file
# @option --label <stringArray>              Set metadata for an image
# @flag --load                               Shorthand for "--output=type=docker"
# @option --metadata-file <string>           Write build result metadata to the file
# @option --network <string>                 Set the networking mode for the "RUN" instructions during build (default "default")
# @flag --no-cache                           Do not use cache when building the image
# @option --no-cache-filter <stringArray>    Do not cache specified stages
# @option -o --output <stringArray>          Output destination (format: "type=local,dest=path")
# @option --platform <stringArray>           Set target platform for build
# @option --progress <string>                Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>              Shortand for "--attest=type=provenance"
# @flag --pull                               Always attempt to pull all referenced images
# @flag --push                               Shorthand for "--output=type=registry"
# @flag -q --quiet                           Suppress the build output and print image ID on success
# @option --sbom <string>                    Shorthand for "--attest=type=sbom"
# @option --secret <stringArray>             Secret to expose to the build (format: "id=mysecret[,src=/local/secret]")
# @option --shm-size <bytes>                 Size of "/dev/shm"
# @option --ssh <stringArray>                SSH agent socket or keys to expose to the build (format: "default|<id>[=<socket>|<key>[,<key>]]")
# @option -t --tag <stringArray>             Name and optionally a tag (format: "name:tag")
# @option --target <string>                  Set the target build stage to build
# @option --ulimit <ulimit>                  Ulimit options (default [])
# @arg PATH-URL <PATH|URL|->
buildx::build() {
    :;
}
# }}} docker buildx build

# {{{ docker buildx create
# @cmd Create a new builder instance
# @flag --append                        Append a node to builder instead of changing it
# @flag --bootstrap                     Boot builder after creation
# @option --buildkitd-flags <string>    Flags for buildkitd daemon
# @option --config <string>             BuildKit config file
# @option --driver <string>             Driver to use (available: "docker-container", "kubernetes", "remote")
# @option --driver-opt <stringArray>    Options for the driver
# @flag --leave                         Remove a node from builder instead of changing it
# @option --name <string>               Builder instance name
# @option --node <string>               Create/modify node with given name
# @option --platform <stringArray>      Fixed platforms for current node
# @flag --use                           Set the current builder instance
# @arg CONTEXT-ENDPOINT
buildx::create() {
    :;
}
# }}} docker buildx create

# {{{ docker buildx du
# @cmd Disk usage
# @option --builder <string>    Override the configured builder instance
# @option --filter <filter>     Provide filter values
# @flag --verbose               Provide a more verbose output
buildx::du() {
    :;
}
# }}} docker buildx du

# {{{ docker buildx inspect
# @cmd Inspect current builder instance
# @flag --bootstrap             Ensure builder has booted before inspecting
# @option --builder <string>    Override the configured builder instance
# @arg NAME[`_choice_builder`]
buildx::inspect() {
    :;
}
# }}} docker buildx inspect

# {{{ docker buildx ls
# @cmd List builder instances
buildx::ls() {
    :;
}
# }}} docker buildx ls

# {{{ docker buildx prune
# @cmd Remove build cache
# @flag -a --all                    Include internal/frontend images
# @option --builder <string>        Override the configured builder instance
# @option --filter <filter>         Provide filter values (e.g., "until=24h")
# @flag -f --force                  Do not prompt for confirmation
# @option --keep-storage <bytes>    Amount of disk space to keep for cache
# @flag --verbose                   Provide a more verbose output
buildx::prune() {
    :;
}
# }}} docker buildx prune

# {{{ docker buildx rm
# @cmd Remove a builder instance
# @flag --all-inactive          Remove all inactive builders
# @option --builder <string>    Override the configured builder instance
# @flag -f --force              Do not prompt for confirmation
# @flag --keep-daemon           Keep the buildkitd daemon running
# @flag --keep-state            Keep BuildKit state
# @arg NAME[`_choice_builder`]
buildx::rm() {
    :;
}
# }}} docker buildx rm

# {{{ docker buildx stop
# @cmd Stop builder instance
# @option --builder <string>    Override the configured builder instance
# @arg NAME[`_choice_builder`]
buildx::stop() {
    :;
}
# }}} docker buildx stop

# {{{ docker buildx use
# @cmd Set the current builder instance
# @option --builder <string>    Override the configured builder instance
# @flag --default               Set builder as default for current context
# @flag --global                Builder persists context changes
# @arg NAME[`_choice_builder`]
buildx::use() {
    :;
}
# }}} docker buildx use

# {{{ docker buildx version
# @cmd Show buildx version information
buildx::version() {
    :;
}
# }}} docker buildx version
# }} docker buildx

# {{ docker compose
# @cmd Docker Compose (Docker Inc., v2.15.1)
# @option --ansi <string>                 Control when to print ANSI control characters ("never"|"always"|"auto") (default "auto")
# @flag --compatibility                   Run compose in backward compatibility mode
# @option --env-file <string>             Specify an alternate environment file.
# @option -f --file <stringArray>         Compose configuration files
# @option --parallel <int>                Control max parallelism, -1 for unlimited (default -1)
# @option --profile <stringArray>         Specify a profile to enable
# @option --project-directory <string>    Specify an alternate working directory (default: the path of the, first specified, Compose file)
# @option -p --project-name <string>      Project name
compose() {
    :;
}

# {{{ docker compose build
# @cmd Build or rebuild services
# @option --build-arg <stringArray>    Set build-time variables for services.
# @flag --no-cache                     Do not use cache when building the image
# @option --progress[auto|tty|plain|quiet] <string>  Set type of progress output (auto, tty, plain, quiet) (default "auto")
# @flag --pull                         Always attempt to pull a newer version of the image.
# @flag -q --quiet                     Don't print anything to STDOUT
# @option --ssh <string>               Set SSH authentications used when building service images.
# @arg SERVICE*[`_choice_compose_service`]
compose::build() {
    :;
}
# }}} docker compose build

# {{{ docker compose convert
# @cmd Converts the compose file to platform's canonical format
# @option --format <string>        Format the output. Values: [yaml | json] (default "yaml")
# @option --hash <string>          Print the service config hash, one per line.
# @flag --images                   Print the image names, one per line.
# @flag --no-consistency           Don't check model consistency - warning: may produce invalid Compose output
# @flag --no-interpolate           Don't interpolate environment variables.
# @flag --no-normalize             Don't normalize compose model.
# @option -o --output <string>     Save to file (default to stdout)
# @flag --profiles                 Print the profile names, one per line.
# @flag -q --quiet                 Only validate the configuration, don't print anything.
# @flag --resolve-image-digests    Pin image tags to digests.
# @flag --services                 Print the service names, one per line.
# @flag --volumes                  Print the volume names, one per line.
# @arg SERVICE*[`_choice_compose_service`]
compose::convert() {
    :;
}
# }}} docker compose convert

# {{{ docker compose cp
# @cmd Copy files/folders between a service container and the local filesystem
# @flag -a --archive        Archive mode (copy all uid/gid information)
# @flag -L --follow-link    Always follow symbol link in SRC_PATH
# @option --index <int>     Index of the container if there are multiple instances of a service .
# @arg SRC[`_choice_compose_cp`]
# @arg DEST[`_choice_compose_cp`]
compose::cp() {
    :;
}
# }}} docker compose cp

# {{{ docker compose create
# @cmd Creates containers for a service.
# @flag --build              Build images before starting containers.
# @flag --force-recreate     Recreate containers even if their configuration and image haven't changed.
# @flag --no-build           Don't build an image, even if it's missing.
# @flag --no-recreate        If containers already exist, don't recreate them.
# @option --pull <string>    Pull image before running ("always"|"missing"|"never") (default "missing")
# @arg SERVICE*[`_choice_compose_service`]
compose::create() {
    :;
}
# }}} docker compose create

# {{{ docker compose down
# @cmd Stop and remove containers, networks
# @flag --remove-orphans            Remove containers for services not defined in the Compose file.
# @option --rmi <string>            Remove images used by services.
# @option -t --timeout <int>        Specify a shutdown timeout in seconds (default 10)
# @option -v --volumes <volumes>    Remove named volumes declared in the volumes section of the Compose file and anonymous volumes attached to containers.
compose::down() {
    :;
}
# }}} docker compose down

# {{{ docker compose events
# @cmd Receive real time events from containers.
# @flag --json     Output events as a stream of json objects
# @arg SERVICE*[`_choice_compose_service`]
compose::events() {
    :;
}
# }}} docker compose events

# {{{ docker compose exec
# @cmd Execute a command in a running container.
# @flag -d --detach                 Detached mode: Run command in the background.
# @option -e --env <stringArray>    Set environment variables
# @option --index <int>             index of the container if there are multiple instances of a service [default: 1].
# @flag -T --no-TTY                 docker compose exec Disable pseudo-TTY allocation.
# @flag --privileged                Give extended privileges to the process.
# @option -u --user <string>        Run the command as this user.
# @option -w --workdir <string>     Path to workdir directory for this command.
# @arg SERVICE[`_choice_compose_service`]
# @arg ARGS*
compose::exec() {
    :;
}
# }}} docker compose exec

# {{{ docker compose images
# @cmd List images used by the created containers
# @option --format <string>    Format the output. Values: [table | json]. (default "table")
# @flag -q --quiet             Only display IDs
# @arg SERVICE*[`_choice_compose_service`]
compose::images() {
    :;
}
# }}} docker compose images

# {{{ docker compose kill
# @cmd Force stop service containers.
# @flag --remove-orphans          Remove containers for services not defined in the Compose file.
# @option -s --signal <string>    SIGNAL to send to the container. (default "SIGKILL")
# @arg SERVICE*[`_choice_compose_service`]
compose::kill() {
    :;
}
# }}} docker compose kill

# {{{ docker compose logs
# @cmd View output from containers
# @flag -f --follow           Follow log output.
# @flag --no-color            Produce monochrome output.
# @flag --no-log-prefix       Don't print prefix in logs.
# @option --since <string>    Show logs since timestamp (e.g.
# @option --tail <string>     Number of lines to show from the end of the logs for each container.
# @flag -t --timestamps       Show timestamps.
# @option --until <string>    Show logs before a timestamp (e.g.
# @arg SERVICE*[`_choice_compose_service`]
compose::logs() {
    :;
}
# }}} docker compose logs

# {{{ docker compose ls
# @cmd List running compose projects
# @flag -a --all               Show all stopped Compose projects
# @option --filter <filter>    Filter output based on conditions provided.
# @option --format <string>    Format the output. Values: [table | json]. (default "table")
# @flag -q --quiet             Only display IDs.
compose::ls() {
    :;
}
# }}} docker compose ls

# {{{ docker compose pause
# @cmd Pause services
# @arg SERVICE*[`_choice_compose_service`]
compose::pause() {
    :;
}
# }}} docker compose pause

# {{{ docker compose port
# @cmd Print the public port for a port binding.
# @option --index <int>          index of the container if service has multiple replicas (default 1)
# @option --protocol <string>    tcp or udp (default "tcp")
# @arg SERVICE[`_choice_compose_service`]
# @arg PRIVATE_PORT
compose::port() {
    :;
}
# }}} docker compose port

# {{{ docker compose ps
# @cmd List containers
# @flag -a --all                    Show all stopped containers (including those created by the run command)
# @option --filter <string>         Filter services by a property (supported filters: status).
# @option --format <string>         Format the output. Values: [table | json] (default "table")
# @flag -q --quiet                  Only display IDs
# @flag --services                  Display services
# @option --status <stringArray>    Filter services by status.
# @arg SERVICE*[`_choice_compose_service`]
compose::ps() {
    :;
}
# }}} docker compose ps

# {{{ docker compose pull
# @cmd Pull service images
# @flag --ignore-buildable        Ignore images that can be built.
# @flag --ignore-pull-failures    Pull what it can and ignores images with pull failures.
# @flag --include-deps            Also pull services declared as dependencies.
# @flag -q --quiet                Pull without printing progress information.
# @arg SERVICE*[`_choice_compose_service`]
compose::pull() {
    :;
}
# }}} docker compose pull

# {{{ docker compose push
# @cmd Push service images
# @flag --ignore-push-failures    Push what it can and ignores images with push failures
# @flag --include-deps            Also push images of services declared as dependencies
# @flag -q --quiet                Push without printing progress information
# @arg SERVICE*[`_choice_compose_service`]
compose::push() {
    :;
}
# }}} docker compose push

# {{{ docker compose restart
# @cmd Restart service containers
# @option -t --timeout <int>    Specify a shutdown timeout in seconds (default 10)
# @arg SERVICE*[`_choice_compose_service`]
compose::restart() {
    :;
}
# }}} docker compose restart

# {{{ docker compose rm
# @cmd Removes stopped service containers
# @flag -f --force      Don't ask to confirm removal
# @flag -s --stop       Stop the containers, if required, before removing
# @flag -v --volumes    Remove any anonymous volumes attached to containers
# @arg SERVICE*[`_choice_compose_service`]
compose::rm() {
    :;
}
# }}} docker compose rm

# {{{ docker compose run
# @cmd Run a one-off command on a service.
# @flag --build                         Build image before starting container.
# @flag -d --detach                     Run container in background and print container ID
# @option --entrypoint <string>         Override the entrypoint of the image
# @option -e --env <stringArray>        Set environment variables
# @flag -i --interactive                Keep STDIN open even if not attached. (default true)
# @option -l --label <stringArray>      Add or override a label
# @option --name <string>               Assign a name to the container
# @flag -T --no-TTY                     Disable pseudo-TTY allocation (default: auto-detected). (default true)
# @flag --no-deps                       Don't start linked services.
# @option -p --publish <stringArray>    Publish a container's port(s) to the host.
# @flag --quiet-pull                    Pull without printing progress information.
# @flag --rm                            Automatically remove the container when it exits
# @flag --service-ports                 Run command with the service's ports enabled and mapped to the host.
# @flag --use-aliases                   Use the service's network useAliases in the network(s) the container connects to.
# @option -u --user <string>            Run as specified username or uid
# @option -v --volume <stringArray>     Bind mount a volume.
# @option -w --workdir <string>         Working directory inside the container
# @arg SERVICE[`_choice_compose_service`]
# @arg ARGS*
compose::run() {
    :;
}
# }}} docker compose run

# {{{ docker compose start
# @cmd Start services
# @arg SERVICE*[`_choice_compose_service`]
compose::start() {
    :;
}
# }}} docker compose start

# {{{ docker compose stop
# @cmd Stop services
# @option -t --timeout <int>    Specify a shutdown timeout in seconds (default 10)
# @arg SERVICE*[`_choice_compose_service`]
compose::stop() {
    :;
}
# }}} docker compose stop

# {{{ docker compose top
# @cmd Display the running processes
# @arg SERVICES*[`_choice_compose_service`]
compose::top() {
    :;
}
# }}} docker compose top

# {{{ docker compose unpause
# @cmd Unpause services
# @arg SERVICE*[`_choice_compose_service`]
compose::unpause() {
    :;
}
# }}} docker compose unpause

# {{{ docker compose up
# @cmd Create and start containers
# @flag --abort-on-container-exit      Stops all containers if any container was stopped. Incompatible with -d
# @flag --always-recreate-deps         Recreate dependent containers. Incompatible with --no-recreate.
# @option --attach <stringArray>       Attach to service output.
# @flag --attach-dependencies          Attach to dependent containers.
# @flag --build                        Build images before starting containers.
# @flag -d --detach                    Detached mode: Run containers in the background
# @option --exit-code-from <string>    Return the exit code of the selected service container.
# @flag --force-recreate               Recreate containers even if their configuration and image haven't changed.
# @option --no-attach <stringArray>    Don't attach to specified service.
# @flag --no-build                     Don't build an image, even if it's missing.
# @flag --no-color                     Produce monochrome output.
# @flag --no-deps                      Don't start linked services.
# @flag --no-log-prefix                Don't print prefix in logs.
# @flag --no-recreate                  If containers already exist, don't recreate them.
# @flag --no-start                     Don't start the services after creating them.
# @option --pull <string>              Pull image before running ("always"|"missing"|"never") (default "missing")
# @flag --quiet-pull                   Pull without printing progress information.
# @flag --remove-orphans               Remove containers for services not defined in the Compose file.
# @flag -V --renew-anon-volumes        Recreate anonymous volumes instead of retrieving data from the previous containers.
# @option --scale <scale>              Scale SERVICE to NUM instances.
# @option -t --timeout <int>           Use this timeout in seconds for container shutdown when attached or when containers are already running.
# @flag --timestamps                   Show timestamps.
# @flag --wait                         Wait for services to be running|healthy. Implies detached mode.
# @arg SERVICE*[`_choice_compose_service`]
compose::up() {
    :;
}
# }}} docker compose up

# {{{ docker compose version
# @cmd Show the Docker Compose version information
# @option -f --format <string>    Format the output. Values: [pretty | json]. (Default: pretty)
# @flag --short                   Shows only Compose's version number.
compose::version() {
    :;
}
# }}} docker compose version
# }} docker compose

# {{ docker container
# @cmd Manage containers
container() {
    :;
}

# {{{ docker container attach
# @cmd Attach local standard input, output, and error streams to a running container
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @flag --no-stdin                  Do not attach STDIN
# @flag --sig-proxy                 Proxy all received signals to the process (default true)
# @arg CONTAINER[`_choice_container_name`]
container::attach() {
    :;
}
# }}} docker container attach

# {{{ docker container commit
# @cmd Create a new image from a container's changes
# @option -a --author <string>              Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")
# @option -c --change <list>                Apply Dockerfile instruction to the created image
# @option -m --message <string>             Commit message
# @flag -p --pause                          Pause container during commit (default true)
# @arg CONTAINER[`_choice_container_name`]
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
container::commit() {
    :;
}
# }}} docker container commit

# {{{ docker container cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive        Archive mode (copy all uid/gid information)
# @flag -L --follow-link    Always follow symbol link in SRC_PATH
# @flag -q --quiet          Suppress progress output during copy.
# @arg SRC[`_choice_container_cp`]
# @arg DEST[`_choice_container_cp`]
container::cp() {
    :;
}
# }}} docker container cp

# {{{ docker container create
# @cmd Create a new container
# @option --add-host <list>                   Add a custom host-to-IP mapping (host:ip)
# @option -a --attach <list>                  Attach to STDIN, STDOUT or STDERR
# @option --blkio-weight <uint16>             Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --blkio-weight-device <list>        Block IO weight (relative device weight) (default [])
# @option --cap-add <list>                    Add Linux capabilities
# @option --cap-drop <list>                   Drop Linux capabilities
# @option --cgroup-parent <string>            Optional parent cgroup for the container
# @option --cgroupns <string>                 Cgroup namespace to use (host|private) 'host': Run the container in the Docker host's cgroup namespace 'private': Run the container in its own private cgroup namespace '': Use the cgroup namespace as configured by the default-cgroupns-mode option on the daemon (default)
# @option --cidfile <string>                  Write the container ID to the file
# @option --cpu-period <int>                  Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                   Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>               Limit CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>              Limit CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>               CPU shares (relative weight)
# @option --cpus <decimal>                    Number of CPUs
# @option --cpuset-cpus <string>              CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>              MEMs in which to allow execution (0-3, 0,1)
# @option --device <list>                     Add a host device to the container
# @option --device-cgroup-rule <list>         Add a rule to the cgroup allowed devices list
# @option --device-read-bps <list>            Limit read rate (bytes per second) from a device (default [])
# @option --device-read-iops <list>           Limit read rate (IO per second) from a device (default [])
# @option --device-write-bps <list>           Limit write rate (bytes per second) to a device (default [])
# @option --device-write-iops <list>          Limit write rate (IO per second) to a device (default [])
# @flag --disable-content-trust               Skip image verification (default true)
# @option --dns <list>                        Set custom DNS servers
# @option --dns-option <list>                 Set DNS options
# @option --dns-search <list>                 Set custom DNS search domains
# @option --domainname <string>               Container NIS domain name
# @option --entrypoint <string>               Overwrite the default ENTRYPOINT of the image
# @option -e --env <list>                     Set environment variables
# @option --env-file <list>                   Read in a file of environment variables
# @option --expose <list>                     Expose a port or a range of ports
# @option --gpus <gpu-request>                GPU devices to add to the container ('all' to pass all GPUs)
# @option --group-add <list>                  Add additional groups to join
# @option --health-cmd <string>               Command to run to check health
# @option --health-interval <duration>        Time between running the check (ms|s|m|h) (default 0s)
# @option --health-retries <int>              Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>    Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)
# @option --health-timeout <duration>         Maximum time to allow one check to run (ms|s|m|h) (default 0s)
# @flag --help                                Print usage
# @option -h --hostname <string>              Container host name
# @flag --init                                Run an init inside the container that forwards signals and reaps processes
# @flag -i --interactive                      Keep STDIN open even if not attached
# @option --ip <string>                       IPv4 address (e.g., 172.30.100.104)
# @option --ip6 <string>                      IPv6 address (e.g., 2001:db8::33)
# @option --ipc <string>                      IPC mode to use
# @option --isolation <string>                Container isolation technology
# @option --kernel-memory <bytes>             Kernel memory limit
# @option -l --label <list>                   Set meta data on a container
# @option --label-file <list>                 Read in a line delimited file of labels
# @option --link <list>                       Add link to another container
# @option --link-local-ip <list>              Container IPv4/IPv6 link-local addresses
# @option --log-driver <string>               Logging driver for the container
# @option --log-opt <list>                    Log driver options
# @option --mac-address <string>              Container MAC address (e.g., 92:d0:c6:0a:29:33)
# @option -m --memory <bytes>                 Memory limit
# @option --memory-reservation <bytes>        Memory soft limit
# @option --memory-swap <bytes>               Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>           Tune container memory swappiness (0 to 100) (default -1)
# @option --mount <mount>                     Attach a filesystem mount to the container
# @option --name <string>                     Assign a name to the container
# @option --network <network>                 Connect a container to a network
# @option --network-alias <list>              Add network-scoped alias for the container
# @flag --no-healthcheck                      Disable any container-specified HEALTHCHECK
# @flag --oom-kill-disable                    Disable OOM Killer
# @option --oom-score-adj <int>               Tune host's OOM preferences (-1000 to 1000)
# @option --pid <string>                      PID namespace to use
# @option --pids-limit <int>                  Tune container pids limit (set -1 for unlimited)
# @option --platform <string>                 Set platform if server is multi-platform capable
# @flag --privileged                          Give extended privileges to this container
# @option -p --publish <list>                 Publish a container's port(s) to the host
# @flag -P --publish-all                      Publish all exposed ports to random ports
# @option --pull <string>                     Pull image before creating ("always", "|missing", "never") (default "missing")
# @flag -q --quiet                            Suppress the pull output
# @flag --read-only                           Mount the container's root filesystem as read only
# @option --restart <string>                  Restart policy to apply when a container exits (default "no")
# @flag --rm                                  Automatically remove the container when it exits
# @option --runtime <string>                  Runtime to use for this container
# @option --security-opt <list>               Security Options
# @option --shm-size <bytes>                  Size of /dev/shm
# @option --stop-signal <string>              Signal to stop the container
# @option --stop-timeout <int>                Timeout (in seconds) to stop a container
# @option --storage-opt <list>                Storage driver options for the container
# @option --sysctl <map>                      Sysctl options (default map[])
# @option --tmpfs <list>                      Mount a tmpfs directory
# @flag -t --tty                              Allocate a pseudo-TTY
# @option --ulimit <ulimit>                   Ulimit options (default [])
# @option -u --user <string>                  Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                   User namespace to use
# @option --uts <string>                      UTS namespace to use
# @option -v --volume <list>                  Bind mount a volume
# @option --volume-driver <string>            Optional volume driver for the container
# @option --volumes-from <list>               Mount volumes from the specified container(s)
# @option -w --workdir <string>               Working directory inside the container
# @arg IMAGE[`_choice_image_repo_tag`]
# @arg ARG*
container::create() {
    :;
}
# }}} docker container create

# {{{ docker container diff
# @cmd Inspect changes to files or directories on a container's filesystem
# @arg CONTAINER[`_choice_container_name`]
container::diff() {
    :;
}
# }}} docker container diff

# {{{ docker container exec
# @cmd Execute a command in a running container
# @flag -d --detach                 Detached mode: run command in the background
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @option -e --env <list>           Set environment variables
# @option --env-file <list>         Read in a file of environment variables
# @flag -i --interactive            Keep STDIN open even if not attached
# @flag --privileged                Give extended privileges to the command
# @flag -t --tty                    Allocate a pseudo-TTY
# @option -u --user <string>        Username or UID (format: "<name|uid>[:<group|gid>]")
# @option -w --workdir <string>     Working directory inside the container
# @arg CONTAINER[`_choice_container_name`]
# @arg ARG*
container::exec() {
    :;
}
# }}} docker container exec

# {{{ docker container export
# @cmd Export a container's filesystem as a tar archive
# @option -o --output <string>    Write to a file, instead of STDOUT
# @arg CONTAINER[`_choice_container_name`]
container::export() {
    :;
}
# }}} docker container export

# {{{ docker container inspect
# @cmd Display detailed information on one or more containers
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -s --size                 Display total file sizes
# @arg CONTAINER*[`_choice_container_name`]
container::inspect() {
    :;
}
# }}} docker container inspect

# {{{ docker container kill
# @cmd Kill one or more running containers
# @option -s --signal <string>    Signal to send to the container
# @arg CONTAINER*[`_choice_container_name`]
container::kill() {
    :;
}
# }}} docker container kill

# {{{ docker container logs
# @cmd Fetch the logs of a container
# @flag --details               Show extra details provided to logs
# @flag -f --follow             Follow log output
# @option --since <string>      Show logs since timestamp (e.g.
# @option -n --tail <string>    Number of lines to show from the end of the logs (default "all")
# @flag -t --timestamps         Show timestamps
# @option --until <string>      Show logs before a timestamp (e.g.
# @arg CONTAINER[`_choice_container_name`]
container::logs() {
    :;
}
# }}} docker container logs

# {{{ docker container list
# @cmd List containers
# @alias ls,ps
# @flag -a --all                  Show all containers (default shows just running)
# @option -f --filter[`_choice_container_ls_filter`] <filter>  Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @option -n --last <int>         Show n last created containers (includes all states) (default -1)
# @flag -l --latest               Show the latest created container (includes all states)
# @flag --no-trunc                Don't truncate output
# @flag -q --quiet                Only display container IDs
# @flag -s --size                 Display total file sizes
container::list() {
    :;
}
# }}} docker container list

# {{{ docker container pause
# @cmd Pause all processes within one or more containers
# @arg CONTAINER*[`_choice_container_name`]
container::pause() {
    :;
}
# }}} docker container pause

# {{{ docker container port
# @cmd List port mappings or a specific mapping for the container
# @arg CONTAINER[`_choice_container_name`]
# @arg PRIVATE_PORT-PROTO <PRIVATE_PORT[/PROTO]>
container::port() {
    :;
}
# }}} docker container port

# {{{ docker container prune
# @cmd Remove all stopped containers
# @option --filter <filter>    Provide filter values (e.g. "until=<timestamp>")
# @flag -f --force             Do not prompt for confirmation
container::prune() {
    :;
}
# }}} docker container prune

# {{{ docker container rename
# @cmd Rename a container
# @arg CONTAINER[`_choice_container_name`]
# @arg NEW_NAME
container::rename() {
    :;
}
# }}} docker container rename

# {{{ docker container restart
# @cmd Restart one or more containers
# @option -s --signal <string>    Signal to send to the container
# @option -t --time <int>         Seconds to wait before killing the container
# @arg CONTAINER*[`_choice_container_name`]
container::restart() {
    :;
}
# }}} docker container restart

# {{{ docker container rm
# @cmd Remove one or more containers
# @flag -f --force      Force the removal of a running container (uses SIGKILL)
# @flag -l --link       Remove the specified link
# @flag -v --volumes    Remove anonymous volumes associated with the container
# @arg CONTAINER*[`_choice_container_name`]
container::rm() {
    :;
}
# }}} docker container rm

# {{{ docker container run
# @cmd Create and run a new container from an image
# @option --add-host <list>                   Add a custom host-to-IP mapping (host:ip)
# @option -a --attach <list>                  Attach to STDIN, STDOUT or STDERR
# @option --blkio-weight <uint16>             Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --blkio-weight-device <list>        Block IO weight (relative device weight) (default [])
# @option --cap-add <list>                    Add Linux capabilities
# @option --cap-drop <list>                   Drop Linux capabilities
# @option --cgroup-parent <string>            Optional parent cgroup for the container
# @option --cgroupns <string>                 Cgroup namespace to use (host|private) 'host': Run the container in the Docker host's cgroup namespace 'private': Run the container in its own private cgroup namespace '': Use the cgroup namespace as configured by the default-cgroupns-mode option on the daemon (default)
# @option --cidfile <string>                  Write the container ID to the file
# @option --cpu-period <int>                  Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                   Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>               Limit CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>              Limit CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>               CPU shares (relative weight)
# @option --cpus <decimal>                    Number of CPUs
# @option --cpuset-cpus <string>              CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>              MEMs in which to allow execution (0-3, 0,1)
# @flag -d --detach                           Run container in background and print container ID
# @option --detach-keys <string>              Override the key sequence for detaching a container
# @option --device <list>                     Add a host device to the container
# @option --device-cgroup-rule <list>         Add a rule to the cgroup allowed devices list
# @option --device-read-bps <list>            Limit read rate (bytes per second) from a device (default [])
# @option --device-read-iops <list>           Limit read rate (IO per second) from a device (default [])
# @option --device-write-bps <list>           Limit write rate (bytes per second) to a device (default [])
# @option --device-write-iops <list>          Limit write rate (IO per second) to a device (default [])
# @flag --disable-content-trust               Skip image verification (default true)
# @option --dns <list>                        Set custom DNS servers
# @option --dns-option <list>                 Set DNS options
# @option --dns-search <list>                 Set custom DNS search domains
# @option --domainname <string>               Container NIS domain name
# @option --entrypoint <string>               Overwrite the default ENTRYPOINT of the image
# @option -e --env <list>                     Set environment variables
# @option --env-file <list>                   Read in a file of environment variables
# @option --expose <list>                     Expose a port or a range of ports
# @option --gpus <gpu-request>                GPU devices to add to the container ('all' to pass all GPUs)
# @option --group-add <list>                  Add additional groups to join
# @option --health-cmd <string>               Command to run to check health
# @option --health-interval <duration>        Time between running the check (ms|s|m|h) (default 0s)
# @option --health-retries <int>              Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>    Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)
# @option --health-timeout <duration>         Maximum time to allow one check to run (ms|s|m|h) (default 0s)
# @flag --help                                Print usage
# @option -h --hostname <string>              Container host name
# @flag --init                                Run an init inside the container that forwards signals and reaps processes
# @flag -i --interactive                      Keep STDIN open even if not attached
# @option --ip <string>                       IPv4 address (e.g., 172.30.100.104)
# @option --ip6 <string>                      IPv6 address (e.g., 2001:db8::33)
# @option --ipc <string>                      IPC mode to use
# @option --isolation <string>                Container isolation technology
# @option --kernel-memory <bytes>             Kernel memory limit
# @option -l --label <list>                   Set meta data on a container
# @option --label-file <list>                 Read in a line delimited file of labels
# @option --link <list>                       Add link to another container
# @option --link-local-ip <list>              Container IPv4/IPv6 link-local addresses
# @option --log-driver <string>               Logging driver for the container
# @option --log-opt <list>                    Log driver options
# @option --mac-address <string>              Container MAC address (e.g., 92:d0:c6:0a:29:33)
# @option -m --memory <bytes>                 Memory limit
# @option --memory-reservation <bytes>        Memory soft limit
# @option --memory-swap <bytes>               Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>           Tune container memory swappiness (0 to 100) (default -1)
# @option --mount <mount>                     Attach a filesystem mount to the container
# @option --name <string>                     Assign a name to the container
# @option --network <network>                 Connect a container to a network
# @option --network-alias <list>              Add network-scoped alias for the container
# @flag --no-healthcheck                      Disable any container-specified HEALTHCHECK
# @flag --oom-kill-disable                    Disable OOM Killer
# @option --oom-score-adj <int>               Tune host's OOM preferences (-1000 to 1000)
# @option --pid <string>                      PID namespace to use
# @option --pids-limit <int>                  Tune container pids limit (set -1 for unlimited)
# @option --platform <string>                 Set platform if server is multi-platform capable
# @flag --privileged                          Give extended privileges to this container
# @option -p --publish <list>                 Publish a container's port(s) to the host
# @flag -P --publish-all                      Publish all exposed ports to random ports
# @option --pull <string>                     Pull image before running ("always", "missing", "never") (default "missing")
# @flag -q --quiet                            Suppress the pull output
# @flag --read-only                           Mount the container's root filesystem as read only
# @option --restart <string>                  Restart policy to apply when a container exits (default "no")
# @flag --rm                                  Automatically remove the container when it exits
# @option --runtime <string>                  Runtime to use for this container
# @option --security-opt <list>               Security Options
# @option --shm-size <bytes>                  Size of /dev/shm
# @flag --sig-proxy                           Proxy received signals to the process (default true)
# @option --stop-signal <string>              Signal to stop the container
# @option --stop-timeout <int>                Timeout (in seconds) to stop a container
# @option --storage-opt <list>                Storage driver options for the container
# @option --sysctl <map>                      Sysctl options (default map[])
# @option --tmpfs <list>                      Mount a tmpfs directory
# @flag -t --tty                              Allocate a pseudo-TTY
# @option --ulimit <ulimit>                   Ulimit options (default [])
# @option -u --user <string>                  Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                   User namespace to use
# @option --uts <string>                      UTS namespace to use
# @option -v --volume <list>                  Bind mount a volume
# @option --volume-driver <string>            Optional volume driver for the container
# @option --volumes-from <list>               Mount volumes from the specified container(s)
# @option -w --workdir <string>               Working directory inside the container
# @arg IMAGE[`_choice_image_repo_tag`]
# @arg ARG*
container::run() {
    :;
}
# }}} docker container run

# {{{ docker container start
# @cmd Start one or more stopped containers
# @flag -a --attach                 Attach STDOUT/STDERR and forward signals
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @flag -i --interactive            Attach container's STDIN
# @arg CONTAINER*[`_choice_container_name`]
container::start() {
    :;
}
# }}} docker container start

# {{{ docker container stats
# @cmd Display a live stream of container(s) resource usage statistics
# @flag -a --all               Show all containers (default shows just running)
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-stream            Disable streaming stats and only pull the first result
# @flag --no-trunc             Do not truncate output
# @arg CONTAINER*[`_choice_container_name`]
container::stats() {
    :;
}
# }}} docker container stats

# {{{ docker container stop
# @cmd Stop one or more running containers
# @option -s --signal <string>    Signal to send to the container
# @option -t --time <int>         Seconds to wait before killing the container
# @arg CONTAINER*[`_choice_container_name`]
container::stop() {
    :;
}
# }}} docker container stop

# {{{ docker container top
# @cmd Display the running processes of a container
# @arg CONTAINER[`_choice_container_name`]
container::top() {
    :;
}
# }}} docker container top

# {{{ docker container unpause
# @cmd Unpause all processes within one or more containers
# @arg CONTAINER*[`_choice_container_name`]
container::unpause() {
    :;
}
# }}} docker container unpause

# {{{ docker container update
# @cmd Update configuration of one or more containers
# @option --blkio-weight <uint16>         Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --cpu-period <int>              Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>               Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>           Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>          Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>           CPU shares (relative weight)
# @option --cpus <decimal>                Number of CPUs
# @option --cpuset-cpus <string>          CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>          MEMs in which to allow execution (0-3, 0,1)
# @option -m --memory <bytes>             Memory limit
# @option --memory-reservation <bytes>    Memory soft limit
# @option --memory-swap <bytes>           Swap limit equal to memory plus swap: -1 to enable unlimited swap
# @option --pids-limit <int>              Tune container pids limit (set -1 for unlimited)
# @option --restart <string>              Restart policy to apply when a container exits
# @arg CONTAINER*[`_choice_container_name`]
container::update() {
    :;
}
# }}} docker container update

# {{{ docker container wait
# @cmd Block until one or more containers stop, then print their exit codes
# @arg CONTAINER*[`_choice_container_name`]
container::wait() {
    :;
}
# }}} docker container wait
# }} docker container

# {{ docker context
# @cmd Manage contexts
context() {
    :;
}

# {{{ docker context create
# @cmd Create a context
# @option --description <string>       Description of the context
# @option --docker <stringToString>    set the docker endpoint (default [])
# @option --from <string>              create context from a named context
# @arg CONTEXT[`_choice_context`]
context::create() {
    :;
}
# }}} docker context create

# {{{ docker context export
# @cmd Export a context to a tar archive FILE or a tar stream on STDOUT.
# @arg CONTEXT[`_choice_context`]
# @arg FILE <FILE|->
context::export() {
    :;
}
# }}} docker context export

# {{{ docker context import
# @cmd Import a context from a tar or zip file
# @arg CONTEXT[`_choice_context`]
# @arg FILE <FILE|->
context::import() {
    :;
}
# }}} docker context import

# {{{ docker context inspect
# @cmd Display detailed information on one or more contexts
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @arg CONTEXT*[`_choice_context`]
context::inspect() {
    :;
}
# }}} docker context inspect

# {{{ docker context ls
# @cmd List contexts
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet             Only show context names
context::ls() {
    :;
}
# }}} docker context ls

# {{{ docker context rm
# @cmd Remove one or more contexts
# @flag -f --force    Force the removal of a context in use
# @arg CONTEXT*[`_choice_context`]
context::rm() {
    :;
}
# }}} docker context rm

# {{{ docker context show
# @cmd Print the name of the current context
context::show() {
    :;
}
# }}} docker context show

# {{{ docker context update
# @cmd Update a context
# @option --description <string>       Description of the context
# @option --docker <stringToString>    set the docker endpoint (default [])
# @arg CONTEXT[`_choice_context`]
context::update() {
    :;
}
# }}} docker context update

# {{{ docker context use
# @cmd Set the current docker context
# @arg CONTEXT[`_choice_context`]
context::use() {
    :;
}
# }}} docker context use
# }} docker context

# {{ docker image
# @cmd Manage images
image() {
    :;
}

# {{{ docker image build
# @cmd Build an image from a Dockerfile
# @option --add-host <strings>               Add a custom host-to-IP mapping (format: "host:ip")
# @option --allow <strings>                  Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
# @option --attest <stringArray>             Attestation parameters (format: "type=sbom,generator=image")
# @option --build-arg <stringArray>          Set build-time variables
# @option --build-context <stringArray>      Additional build contexts (e.g., name=path)
# @option --builder <string>                 Override the configured builder instance (default "default")
# @option --cache-from <stringArray>         External cache sources (e.g., "user/app:cache", "type=local,src=path/to/dir")
# @option --cache-to <stringArray>           Cache export destinations (e.g., "user/app:cache", "type=local,dest=path/to/dir")
# @option --cgroup-parent <string>           Optional parent cgroup for the container
# @option -f --file <string>                 Name of the Dockerfile (default: "PATH/Dockerfile")
# @option --iidfile <string>                 Write the image ID to the file
# @option --label <stringArray>              Set metadata for an image
# @flag --load                               Shorthand for "--output=type=docker"
# @option --metadata-file <string>           Write build result metadata to the file
# @option --network <string>                 Set the networking mode for the "RUN" instructions during build (default "default")
# @flag --no-cache                           Do not use cache when building the image
# @option --no-cache-filter <stringArray>    Do not cache specified stages
# @option -o --output <stringArray>          Output destination (format: "type=local,dest=path")
# @option --platform <stringArray>           Set target platform for build
# @option --progress <string>                Set type of progress output ("auto", "plain", "tty").
# @option --provenance <string>              Shortand for "--attest=type=provenance"
# @flag --pull                               Always attempt to pull all referenced images
# @flag --push                               Shorthand for "--output=type=registry"
# @flag -q --quiet                           Suppress the build output and print image ID on success
# @option --sbom <string>                    Shorthand for "--attest=type=sbom"
# @option --secret <stringArray>             Secret to expose to the build (format: "id=mysecret[,src=/local/secret]")
# @option --shm-size <bytes>                 Size of "/dev/shm"
# @option --ssh <stringArray>                SSH agent socket or keys to expose to the build (format: "default|<id>[=<socket>|<key>[,<key>]]")
# @option -t --tag <stringArray>             Name and optionally a tag (format: "name:tag")
# @option --target <string>                  Set the target build stage to build
# @option --ulimit <ulimit>                  Ulimit options (default [])
# @arg PATH-URL <PATH|URL|->
image::build() {
    :;
}
# }}} docker image build

# {{{ docker image history
# @cmd Show the history of an image
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -H --human             Print sizes and dates in human readable format (default true)
# @flag --no-trunc             Don't truncate output
# @flag -q --quiet             Only show image IDs
# @arg IMAGE[`_choice_image_repo_tag`]
image::history() {
    :;
}
# }}} docker image history

# {{{ docker image import
# @cmd Import the contents from a tarball to create a filesystem image
# @option -c --change <list>                Apply Dockerfile instruction to the created image
# @option -m --message <string>             Set commit message for imported image
# @option --platform <string>               Set platform if server is multi-platform capable
# @arg file-URL <file|URL|->
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
image::import() {
    :;
}
# }}} docker image import

# {{{ docker image inspect
# @cmd Display detailed information on one or more images
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @arg IMAGE*[`_choice_image_repo_tag`]
image::inspect() {
    :;
}
# }}} docker image inspect

# {{{ docker image load
# @cmd Load an image from a tar archive or STDIN
# @option -i --input <string>    Read from tar archive file, instead of STDIN
# @flag -q --quiet               Suppress the load output
image::load() {
    :;
}
# }}} docker image load

# {{{ docker image list
# @cmd List images
# @alias ls
# @flag -a --all                            Show all images (default hides intermediate images)
# @flag --digests                           Show digests
# @option -f --filter[`_choice_image_ls_filter`] <filter>  Filter output based on conditions provided
# @option --format <string>                 Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-trunc                          Don't truncate output
# @flag -q --quiet                          Only show image IDs
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
image::list() {
    :;
}
# }}} docker image list

# {{{ docker image prune
# @cmd Remove unused images
# @flag -a --all               Remove all unused images, not just dangling ones
# @option --filter <filter>    Provide filter values (e.g. "until=<timestamp>")
# @flag -f --force             Do not prompt for confirmation
image::prune() {
    :;
}
# }}} docker image prune

# {{{ docker image pull
# @cmd Download an image from a registry
# @flag -a --all-tags                          Download all tagged images in the repository
# @flag --disable-content-trust                Skip image verification (default true)
# @option --platform <string>                  Set platform if server is multi-platform capable
# @flag -q --quiet                             Suppress verbose output
# @arg NAME-TAG-DIGEST <NAME[:TAG|@DIGEST]>
image::pull() {
    :;
}
# }}} docker image pull

# {{{ docker image push
# @cmd Upload an image to a registry
# @flag -a --all-tags              Push all tags of an image to the repository
# @flag --disable-content-trust    Skip image signing (default true)
# @flag -q --quiet                 Suppress verbose output
# @arg NAME-TAG <NAME[:TAG]>
image::push() {
    :;
}
# }}} docker image push

# {{{ docker image rm
# @cmd Remove one or more images
# @flag -f --force    Force removal of the image
# @flag --no-prune    Do not delete untagged parents
# @arg IMAGE*[`_choice_image_repo_tag`]
image::rm() {
    :;
}
# }}} docker image rm

# {{{ docker image save
# @cmd Save one or more images to a tar archive (streamed to STDOUT by default)
# @option -o --output <string>    Write to a file, instead of STDOUT
# @arg IMAGE*[`_choice_image_repo_tag`]
image::save() {
    :;
}
# }}} docker image save

# {{{ docker image tag
# @cmd Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
# @arg SOURCE_IMAGE-TAG[`_choice_image_repo_tag`] <SOURCE_IMAGE[:TAG]>
# @arg TARGET_IMAGE-TAG[`_choice_image_repo_tag`] <TARGET_IMAGE[:TAG]>
image::tag() {
    :;
}
# }}} docker image tag
# }} docker image

# {{ docker manifest
# @cmd Manage Docker image manifests and manifest lists
manifest() {
    :;
}

# {{{ docker manifest annotate
# @cmd Add additional information to a local image manifest
# @option --arch <string>            Set architecture
# @option --os <string>              Set operating system
# @option --os-features <strings>    Set operating system feature
# @option --os-version <string>      Set operating system version
# @option --variant <string>         Set architecture variant
# @arg MANIFEST_LIST
# @arg MANIFEST
manifest::annotate() {
    :;
}
# }}} docker manifest annotate

# {{{ docker manifest create
# @cmd Create a local manifest list for annotating and pushing to a registry
# @flag -a --amend      Amend an existing manifest list
# @flag --insecure      Allow communication with an insecure registry
# @arg MANIFEST_LIST
# @arg MANIFEST*
manifest::create() {
    :;
}
# }}} docker manifest create

# {{{ docker manifest inspect
# @cmd Display an image manifest, or manifest list
# @flag --insecure      Allow communication with an insecure registry
# @flag -v --verbose    Output additional info including layers and platform
# @arg MANIFEST_LIST
# @arg MANIFEST
manifest::inspect() {
    :;
}
# }}} docker manifest inspect

# {{{ docker manifest push
# @cmd Push a manifest list to a repository
# @flag --insecure      Allow push to an insecure registry
# @flag -p --purge      Remove the local manifest list after push
# @arg MANIFEST_LIST
manifest::push() {
    :;
}
# }}} docker manifest push

# {{{ docker manifest rm
# @cmd Delete one or more manifest lists from local storage
# @arg MANIFEST_LIST*
manifest::rm() {
    :;
}
# }}} docker manifest rm
# }} docker manifest

# {{ docker network
# @cmd Manage networks
network() {
    :;
}

# {{{ docker network connect
# @cmd Connect a container to a network
# @option --alias <strings>            Add network-scoped alias for the container
# @option --driver-opt <strings>       driver options for the network
# @option --ip <string>                IPv4 address (e.g., "172.30.100.104")
# @option --ip6 <string>               IPv6 address (e.g., "2001:db8::33")
# @option --link <list>                Add link to another container
# @option --link-local-ip <strings>    Add a link-local address for the container
# @arg NETWORK[`_choice_network`]
# @arg CONTAINER[`_choice_container_name`]
network::connect() {
    :;
}
# }}} docker network connect

# {{{ docker network create
# @cmd Create a network
# @flag --attachable                Enable manual container attachment
# @option --aux-address <map>       Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])
# @option --config-from <string>    The network from which to copy the configuration
# @flag --config-only               Create a configuration only network
# @option -d --driver <string>      Driver to manage the Network (default "bridge")
# @option --gateway <strings>       IPv4 or IPv6 Gateway for the master subnet
# @flag --ingress                   Create swarm routing-mesh network
# @flag --internal                  Restrict external access to the network
# @option --ip-range <strings>      Allocate container ip from a sub-range
# @option --ipam-driver <string>    IP Address Management Driver (default "default")
# @option --ipam-opt <map>          Set IPAM driver specific options (default map[])
# @flag --ipv6                      Enable IPv6 networking
# @option --label <list>            Set metadata on a network
# @option -o --opt <map>            Set driver specific options (default map[])
# @option --scope <string>          Control the network's scope
# @option --subnet <strings>        Subnet in CIDR format that represents a network segment
# @arg NETWORK[`_choice_network`]
network::create() {
    :;
}
# }}} docker network create

# {{{ docker network disconnect
# @cmd Disconnect a container from a network
# @flag -f --force    Force the container to disconnect from a network
# @arg NETWORK[`_choice_network`]
# @arg CONTAINER[`_choice_container_name`]
network::disconnect() {
    :;
}
# }}} docker network disconnect

# {{{ docker network inspect
# @cmd Display detailed information on one or more networks
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -v --verbose              Verbose output for diagnostics
# @arg NETWORK*[`_choice_network`]
network::inspect() {
    :;
}
# }}} docker network inspect

# {{{ docker network ls
# @cmd List networks
# @option -f --filter <filter>    Provide filter values (e.g. "driver=bridge")
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-trunc                Do not truncate the output
# @flag -q --quiet                Only display network IDs
network::ls() {
    :;
}
# }}} docker network ls

# {{{ docker network prune
# @cmd Remove all unused networks
# @option --filter <filter>    Provide filter values (e.g. "until=<timestamp>")
# @flag -f --force             Do not prompt for confirmation
network::prune() {
    :;
}
# }}} docker network prune

# {{{ docker network rm
# @cmd Remove one or more networks
# @flag -f --force    Do not error if the network does not exist
# @arg NETWORK*[`_choice_network`]
network::rm() {
    :;
}
# }}} docker network rm
# }} docker network

# {{ docker plugin
# @cmd Manage plugins
plugin() {
    :;
}

# {{{ docker plugin create
# @cmd Create a plugin from a rootfs and configuration.
# @flag --compress        Compress the context using gzip
# @arg PLUGIN[`_choice_plugin`]
# @arg PLUGIN-DATA-DIR
plugin::create() {
    :;
}
# }}} docker plugin create

# {{{ docker plugin disable
# @cmd Disable a plugin
# @flag -f --force    Force the disable of an active plugin
# @arg PLUGIN[`_choice_plugin`]
plugin::disable() {
    :;
}
# }}} docker plugin disable

# {{{ docker plugin enable
# @cmd Enable a plugin
# @option --timeout <int>    HTTP client timeout (in seconds) (default 30)
# @arg PLUGIN[`_choice_plugin`]
plugin::enable() {
    :;
}
# }}} docker plugin enable

# {{{ docker plugin inspect
# @cmd Display detailed information on one or more plugins
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @arg PLUGIN*[`_choice_plugin`]
plugin::inspect() {
    :;
}
# }}} docker plugin inspect

# {{{ docker plugin install
# @cmd Install a plugin
# @option --alias <string>         Local name for plugin
# @flag --disable                  Do not enable the plugin on install
# @flag --disable-content-trust    Skip image verification (default true)
# @flag --grant-all-permissions    Grant all permissions necessary to run the plugin
# @arg PLUGIN[`_choice_plugin`]
# @arg KEY-VALUE*
plugin::install() {
    :;
}
# }}} docker plugin install

# {{{ docker plugin ls
# @cmd List plugins
# @option -f --filter <filter>    Provide filter values (e.g. "enabled=true")
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-trunc                Don't truncate output
# @flag -q --quiet                Only display plugin IDs
plugin::ls() {
    :;
}
# }}} docker plugin ls

# {{{ docker plugin push
# @cmd Push a plugin to a registry
# @flag --disable-content-trust     Skip image signing (default true)
# @arg PLUGIN-TAG <PLUGIN[:TAG]>
plugin::push() {
    :;
}
# }}} docker plugin push

# {{{ docker plugin rm
# @cmd Remove one or more plugins
# @flag -f --force    Force the removal of an active plugin
# @arg PLUGIN*[`_choice_plugin`]
plugin::rm() {
    :;
}
# }}} docker plugin rm

# {{{ docker plugin set
# @cmd Change settings for a plugin
# @arg PLUGIN[`_choice_plugin`]
# @arg KEY-VALUE*
plugin::set() {
    :;
}
# }}} docker plugin set

# {{{ docker plugin upgrade
# @cmd Upgrade an existing plugin
# @flag --disable-content-trust    Skip image verification (default true)
# @flag --grant-all-permissions    Grant all permissions necessary to run the plugin
# @flag --skip-remote-check        Do not check if specified remote plugin matches existing plugin image
# @arg PLUGIN[`_choice_plugin`]
# @arg REMOTE
plugin::upgrade() {
    :;
}
# }}} docker plugin upgrade
# }} docker plugin

# {{ docker scan
# @cmd Docker Scan (Docker Inc., v0.23.0)
# @flag --accept-license         Accept using a third party scanning provider
# @flag --dependency-tree        Show dependency tree with scan results
# @flag --exclude-base           Exclude base image from vulnerability scanning (requires --file)
# @option -f --file <string>     Dockerfile associated with image, provides more detailed results
# @flag --group-issues           Aggregate duplicated vulnerabilities and group them to a single one (requires --json)
# @flag --json                   Output results in JSON format
# @flag --login                  Authenticate to the scan provider using an optional token (with --token), or web base token if empty
# @flag --reject-license         Reject using a third party scanning provider
# @option --severity <string>    Only report vulnerabilities of provided level or higher (low|medium|high)
# @option --token <string>       Authentication token to login to the third party scanning provider
# @flag --version                Display version of the scan plugin
# @arg IMAGE[`_choice_image_repo_tag`]
scan() {
    :;
}
# }} docker scan

# {{ docker system
# @cmd Manage Docker
system() {
    :;
}

# {{{ docker system df
# @cmd Show docker disk usage
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -v --verbose           Show detailed information on space usage
system::df() {
    :;
}
# }}} docker system df

# {{{ docker system events
# @cmd Get real time events from the server
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format the output using the given Go template
# @option --since <string>        Show all events created since timestamp
# @option --until <string>        Stream events until this timestamp
system::events() {
    :;
}
# }}} docker system events

# {{{ docker system info
# @cmd Display system-wide information
# @option -f --format <string>    Format the output using the given Go template
system::info() {
    :;
}
# }}} docker system info

# {{{ docker system prune
# @cmd Remove unused data
# @flag -a --all               Remove all unused images not just dangling ones
# @option --filter <filter>    Provide filter values (e.g. "label=<key>=<value>")
# @flag -f --force             Do not prompt for confirmation
# @flag --volumes              Prune volumes
system::prune() {
    :;
}
# }}} docker system prune
# }} docker system

# {{ docker trust
# @cmd Manage trust on Docker images
trust() {
    :;
}

# {{{ docker trust key
# @cmd Manage keys for signing Docker images
trust::key() {
    :;
}

# {{{{ docker trust key generate
# @cmd Generate and load a signing key-pair
# @option --dir <string>    Directory to generate key in, defaults to current directory
# @arg NAME
trust::key::generate() {
    :;
}
# }}}} docker trust key generate

# {{{{ docker trust key load
# @cmd Load a private key file for signing
# @option --name <string>    Name for the loaded key (default "signer")
# @arg KEYFILE
trust::key::load() {
    :;
}
# }}}} docker trust key load
# }}} docker trust key

# {{{ docker trust signer
# @cmd Manage entities who can sign Docker images
trust::signer() {
    :;
}

# {{{{ docker trust signer add
# @cmd Add a signer
# @option --key <list>    Path to the signer's public key file
# @arg NAME
# @arg REPOSITORY*[`_choice_image_repo`]
trust::signer::add() {
    :;
}
# }}}} docker trust signer add

# {{{{ docker trust signer remove
# @cmd Remove a signer
# @flag -f --force    Do not prompt for confirmation before removing the most recent signer
# @arg NAME
# @arg REPOSITORY*[`_choice_image_repo`]
trust::signer::remove() {
    :;
}
# }}}} docker trust signer remove
# }}} docker trust signer

# {{{ docker trust inspect
# @cmd Return low-level information about keys and signatures
# @flag --pretty                     Print the information in a human friendly format
# @arg IMAGE-TAG <IMAGE[:TAG]...>
trust::inspect() {
    :;
}
# }}} docker trust inspect

# {{{ docker trust revoke
# @cmd Remove trust for an image
# @flag -y --yes                  Do not prompt for confirmation
# @arg IMAGE-TAG <IMAGE[:TAG]>
trust::revoke() {
    :;
}
# }}} docker trust revoke

# {{{ docker trust sign
# @cmd Sign an image
# @flag --local     Sign a locally tagged image
# @arg IMAGE-TAG[`_choice_image_repo_tag`]
trust::sign() {
    :;
}
# }}} docker trust sign
# }} docker trust

# {{ docker volume
# @cmd Manage volumes
volume() {
    :;
}

# {{{ docker volume create
# @cmd Create a volume
# @option -d --driver <string>    Specify volume driver name (default "local")
# @option --label <list>          Set metadata for a volume
# @option -o --opt <map>          Set driver specific options (default map[])
# @arg VOLUME[`_choice_volume`]
volume::create() {
    :;
}
# }}} docker volume create

# {{{ docker volume inspect
# @cmd Display detailed information on one or more volumes
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @arg VOLUME*[`_choice_volume`]
volume::inspect() {
    :;
}
# }}} docker volume inspect

# {{{ docker volume ls
# @cmd List volumes
# @option -f --filter <filter>    Provide filter values (e.g. "dangling=true")
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display volume names
volume::ls() {
    :;
}
# }}} docker volume ls

# {{{ docker volume prune
# @cmd Remove all unused local volumes
# @option --filter <filter>    Provide filter values (e.g. "label=<label>")
# @flag -f --force             Do not prompt for confirmation
volume::prune() {
    :;
}
# }}} docker volume prune

# {{{ docker volume rm
# @cmd Remove one or more volumes
# @flag -f --force    Force the removal of one or more volumes
# @arg VOLUME*[`_choice_volume`]
volume::rm() {
    :;
}
# }}} docker volume rm
# }} docker volume

# {{ docker swarm
# @cmd Manage Swarm
swarm() {
    :;
}

# {{{ docker swarm init
# @cmd Initialize a swarm
# @option --advertise-addr <string>            Advertised address (format: "<ip|interface>[:port]")
# @flag --autolock                             Enable manager autolocking (requiring an unlock key to start a stopped manager)
# @option --availability <string>              Availability of the node ("active", "pause", "drain") (default "active")
# @option --cert-expiry <duration>             Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)
# @option --data-path-addr <string>            Address or interface to use for data path traffic (format: "<ip|interface>")
# @option --data-path-port <uint32>            Port number to use for data path traffic (1024 - 49151).
# @option --default-addr-pool <ipNetSlice>     default address pool in CIDR format (default [])
# @option --default-addr-pool-mask-length <uint32>  default address pool subnet mask length (default 24)
# @option --dispatcher-heartbeat <duration>    Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)
# @option --external-ca <external-ca>          Specifications of one or more certificate signing endpoints
# @flag --force-new-cluster                    Force create a new cluster from current state
# @option --listen-addr <node-addr>            Listen address (format: "<ip|interface>[:port]") (default 0.0.0.0:2377)
# @option --max-snapshots <uint>               Number of additional Raft snapshots to retain
# @option --snapshot-interval <uint>           Number of log entries between Raft snapshots (default 10000)
# @option --task-history-limit <int>           Task history retention limit (default 5)
swarm::init() {
    :;
}
# }}} docker swarm init

# {{{ docker swarm join
# @cmd Join a swarm as a node and/or manager
# @option --advertise-addr <string>    Advertised address (format: "<ip|interface>[:port]")
# @option --availability <string>      Availability of the node ("active", "pause", "drain") (default "active")
# @option --data-path-addr <string>    Address or interface to use for data path traffic (format: "<ip|interface>")
# @option --listen-addr <node-addr>    Listen address (format: "<ip|interface>[:port]") (default 0.0.0.0:2377)
# @option --token <string>             Token for entry into the swarm
# @arg HOST-PORT
swarm::join() {
    :;
}
# }}} docker swarm join
# }} docker swarm

# {{ docker attach
# @cmd Attach local standard input, output, and error streams to a running container
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @flag --no-stdin                  Do not attach STDIN
# @flag --sig-proxy                 Proxy all received signals to the process (default true)
# @arg CONTAINER[`_choice_container_name`]
attach() {
    :;
}
# }} docker attach

# {{ docker commit
# @cmd Create a new image from a container's changes
# @option -a --author <string>              Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")
# @option -c --change <list>                Apply Dockerfile instruction to the created image
# @option -m --message <string>             Commit message
# @flag -p --pause                          Pause container during commit (default true)
# @arg CONTAINER[`_choice_container_name`]
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
commit() {
    :;
}
# }} docker commit

# {{ docker cp
# @cmd Copy files/folders between a container and the local filesystem
# @flag -a --archive        Archive mode (copy all uid/gid information)
# @flag -L --follow-link    Always follow symbol link in SRC_PATH
# @flag -q --quiet          Suppress progress output during copy.
# @arg SRC[`_choice_container_cp`]
# @arg DEST[`_choice_container_cp`]
cp() {
    :;
}
# }} docker cp

# {{ docker create
# @cmd Create a new container
# @option --add-host <list>                   Add a custom host-to-IP mapping (host:ip)
# @option -a --attach <list>                  Attach to STDIN, STDOUT or STDERR
# @option --blkio-weight <uint16>             Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --blkio-weight-device <list>        Block IO weight (relative device weight) (default [])
# @option --cap-add <list>                    Add Linux capabilities
# @option --cap-drop <list>                   Drop Linux capabilities
# @option --cgroup-parent <string>            Optional parent cgroup for the container
# @option --cgroupns <string>                 Cgroup namespace to use (host|private) 'host': Run the container in the Docker host's cgroup namespace 'private': Run the container in its own private cgroup namespace '': Use the cgroup namespace as configured by the default-cgroupns-mode option on the daemon (default)
# @option --cidfile <string>                  Write the container ID to the file
# @option --cpu-period <int>                  Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>                   Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>               Limit CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>              Limit CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>               CPU shares (relative weight)
# @option --cpus <decimal>                    Number of CPUs
# @option --cpuset-cpus <string>              CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>              MEMs in which to allow execution (0-3, 0,1)
# @option --device <list>                     Add a host device to the container
# @option --device-cgroup-rule <list>         Add a rule to the cgroup allowed devices list
# @option --device-read-bps <list>            Limit read rate (bytes per second) from a device (default [])
# @option --device-read-iops <list>           Limit read rate (IO per second) from a device (default [])
# @option --device-write-bps <list>           Limit write rate (bytes per second) to a device (default [])
# @option --device-write-iops <list>          Limit write rate (IO per second) to a device (default [])
# @flag --disable-content-trust               Skip image verification (default true)
# @option --dns <list>                        Set custom DNS servers
# @option --dns-option <list>                 Set DNS options
# @option --dns-search <list>                 Set custom DNS search domains
# @option --domainname <string>               Container NIS domain name
# @option --entrypoint <string>               Overwrite the default ENTRYPOINT of the image
# @option -e --env <list>                     Set environment variables
# @option --env-file <list>                   Read in a file of environment variables
# @option --expose <list>                     Expose a port or a range of ports
# @option --gpus <gpu-request>                GPU devices to add to the container ('all' to pass all GPUs)
# @option --group-add <list>                  Add additional groups to join
# @option --health-cmd <string>               Command to run to check health
# @option --health-interval <duration>        Time between running the check (ms|s|m|h) (default 0s)
# @option --health-retries <int>              Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>    Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)
# @option --health-timeout <duration>         Maximum time to allow one check to run (ms|s|m|h) (default 0s)
# @flag --help                                Print usage
# @option -h --hostname <string>              Container host name
# @flag --init                                Run an init inside the container that forwards signals and reaps processes
# @flag -i --interactive                      Keep STDIN open even if not attached
# @option --ip <string>                       IPv4 address (e.g., 172.30.100.104)
# @option --ip6 <string>                      IPv6 address (e.g., 2001:db8::33)
# @option --ipc <string>                      IPC mode to use
# @option --isolation <string>                Container isolation technology
# @option --kernel-memory <bytes>             Kernel memory limit
# @option -l --label <list>                   Set meta data on a container
# @option --label-file <list>                 Read in a line delimited file of labels
# @option --link <list>                       Add link to another container
# @option --link-local-ip <list>              Container IPv4/IPv6 link-local addresses
# @option --log-driver <string>               Logging driver for the container
# @option --log-opt <list>                    Log driver options
# @option --mac-address <string>              Container MAC address (e.g., 92:d0:c6:0a:29:33)
# @option -m --memory <bytes>                 Memory limit
# @option --memory-reservation <bytes>        Memory soft limit
# @option --memory-swap <bytes>               Swap limit equal to memory plus swap: '-1' to enable unlimited swap
# @option --memory-swappiness <int>           Tune container memory swappiness (0 to 100) (default -1)
# @option --mount <mount>                     Attach a filesystem mount to the container
# @option --name <string>                     Assign a name to the container
# @option --network <network>                 Connect a container to a network
# @option --network-alias <list>              Add network-scoped alias for the container
# @flag --no-healthcheck                      Disable any container-specified HEALTHCHECK
# @flag --oom-kill-disable                    Disable OOM Killer
# @option --oom-score-adj <int>               Tune host's OOM preferences (-1000 to 1000)
# @option --pid <string>                      PID namespace to use
# @option --pids-limit <int>                  Tune container pids limit (set -1 for unlimited)
# @option --platform <string>                 Set platform if server is multi-platform capable
# @flag --privileged                          Give extended privileges to this container
# @option -p --publish <list>                 Publish a container's port(s) to the host
# @flag -P --publish-all                      Publish all exposed ports to random ports
# @option --pull <string>                     Pull image before creating ("always", "|missing", "never") (default "missing")
# @flag -q --quiet                            Suppress the pull output
# @flag --read-only                           Mount the container's root filesystem as read only
# @option --restart <string>                  Restart policy to apply when a container exits (default "no")
# @flag --rm                                  Automatically remove the container when it exits
# @option --runtime <string>                  Runtime to use for this container
# @option --security-opt <list>               Security Options
# @option --shm-size <bytes>                  Size of /dev/shm
# @option --stop-signal <string>              Signal to stop the container
# @option --stop-timeout <int>                Timeout (in seconds) to stop a container
# @option --storage-opt <list>                Storage driver options for the container
# @option --sysctl <map>                      Sysctl options (default map[])
# @option --tmpfs <list>                      Mount a tmpfs directory
# @flag -t --tty                              Allocate a pseudo-TTY
# @option --ulimit <ulimit>                   Ulimit options (default [])
# @option -u --user <string>                  Username or UID (format: <name|uid>[:<group|gid>])
# @option --userns <string>                   User namespace to use
# @option --uts <string>                      UTS namespace to use
# @option -v --volume <list>                  Bind mount a volume
# @option --volume-driver <string>            Optional volume driver for the container
# @option --volumes-from <list>               Mount volumes from the specified container(s)
# @option -w --workdir <string>               Working directory inside the container
# @arg IMAGE[`_choice_image_repo_tag`]
# @arg ARG*
create() {
    :;
}
# }} docker create

# {{ docker diff
# @cmd Inspect changes to files or directories on a container's filesystem
# @arg CONTAINER[`_choice_container_name`]
diff() {
    :;
}
# }} docker diff

# {{ docker events
# @cmd Get real time events from the server
# @option -f --filter[`_choice_event_filter`] <filter>  Filter output based on conditions provided
# @option --format <string>       Format the output using the given Go template
# @option --since <string>        Show all events created since timestamp
# @option --until <string>        Stream events until this timestamp
events() {
    :;
}
# }} docker events

# {{ docker export
# @cmd Export a container's filesystem as a tar archive
# @option -o --output <string>    Write to a file, instead of STDOUT
# @arg CONTAINER[`_choice_container_name`]
export() {
    :;
}
# }} docker export

# {{ docker history
# @cmd Show the history of an image
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -H --human             Print sizes and dates in human readable format (default true)
# @flag --no-trunc             Don't truncate output
# @flag -q --quiet             Only show image IDs
# @arg IMAGE[`_choice_image_repo_tag`]
history() {
    :;
}
# }} docker history

# {{ docker import
# @cmd Import the contents from a tarball to create a filesystem image
# @option -c --change <list>                Apply Dockerfile instruction to the created image
# @option -m --message <string>             Set commit message for imported image
# @option --platform <string>               Set platform if server is multi-platform capable
# @arg file-URL <file|URL|->
# @arg REPOSITORY-TAG[`_choice_image_repo_tag`] <REPOSITORY[:TAG]>
import() {
    :;
}
# }} docker import

# {{ docker inspect
# @cmd Return low-level information on Docker objects
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -s --size                 Display total file sizes if the type is container
# @option --type <string>         Return JSON for specified type
# @arg NAME-ID*
inspect() {
    :;
}
# }} docker inspect

# {{ docker kill
# @cmd Kill one or more running containers
# @option -s --signal <string>    Signal to send to the container
# @arg CONTAINER*[`_choice_container_name`]
kill() {
    :;
}
# }} docker kill

# {{ docker load
# @cmd Load an image from a tar archive or STDIN
# @option -i --input <string>    Read from tar archive file, instead of STDIN
# @flag -q --quiet               Suppress the load output
load() {
    :;
}
# }} docker load

# {{ docker logs
# @cmd Fetch the logs of a container
# @flag --details               Show extra details provided to logs
# @flag -f --follow             Follow log output
# @option --since <string>      Show logs since timestamp (e.g.
# @option -n --tail <string>    Number of lines to show from the end of the logs (default "all")
# @flag -t --timestamps         Show timestamps
# @option --until <string>      Show logs before a timestamp (e.g.
# @arg CONTAINER[`_choice_container_name`]
logs() {
    :;
}
# }} docker logs

# {{ docker pause
# @cmd Pause all processes within one or more containers
# @arg CONTAINER*[`_choice_container_name`]
pause() {
    :;
}
# }} docker pause

# {{ docker port
# @cmd List port mappings or a specific mapping for the container
# @arg CONTAINER[`_choice_container_name`]
# @arg PRIVATE_PORT-PROTO <PRIVATE_PORT[/PROTO]>
port() {
    :;
}
# }} docker port

# {{ docker rename
# @cmd Rename a container
# @arg CONTAINER[`_choice_container_name`]
# @arg NEW_NAME
rename() {
    :;
}
# }} docker rename

# {{ docker restart
# @cmd Restart one or more containers
# @option -s --signal <string>    Signal to send to the container
# @option -t --time <int>         Seconds to wait before killing the container
# @arg CONTAINER*[`_choice_container_name`]
restart() {
    :;
}
# }} docker restart

# {{ docker rm
# @cmd Remove one or more containers
# @flag -f --force      Force the removal of a running container (uses SIGKILL)
# @flag -l --link       Remove the specified link
# @flag -v --volumes    Remove anonymous volumes associated with the container
# @arg CONTAINER*[`_choice_container_name`]
rm() {
    :;
}
# }} docker rm

# {{ docker rmi
# @cmd Remove one or more images
# @flag -f --force    Force removal of the image
# @flag --no-prune    Do not delete untagged parents
# @arg IMAGE*[`_choice_image_repo_tag`]
rmi() {
    :;
}
# }} docker rmi

# {{ docker save
# @cmd Save one or more images to a tar archive (streamed to STDOUT by default)
# @option -o --output <string>    Write to a file, instead of STDOUT
# @arg IMAGE*[`_choice_image_repo_tag`]
save() {
    :;
}
# }} docker save

# {{ docker start
# @cmd Start one or more stopped containers
# @flag -a --attach                 Attach STDOUT/STDERR and forward signals
# @option --detach-keys <string>    Override the key sequence for detaching a container
# @flag -i --interactive            Attach container's STDIN
# @arg CONTAINER*[`_choice_container_name`]
start() {
    :;
}
# }} docker start

# {{ docker stats
# @cmd Display a live stream of container(s) resource usage statistics
# @flag -a --all               Show all containers (default shows just running)
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-stream            Disable streaming stats and only pull the first result
# @flag --no-trunc             Do not truncate output
# @arg CONTAINER*[`_choice_container_name`]
stats() {
    :;
}
# }} docker stats

# {{ docker stop
# @cmd Stop one or more running containers
# @option -s --signal <string>    Signal to send to the container
# @option -t --time <int>         Seconds to wait before killing the container
# @arg CONTAINER*[`_choice_container_name`]
stop() {
    :;
}
# }} docker stop

# {{ docker tag
# @cmd Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
# @arg SOURCE_IMAGE-TAG[`_choice_image_repo_tag`] <SOURCE_IMAGE[:TAG]>
# @arg TARGET_IMAGE-TAG[`_choice_image_repo_tag`] <TARGET_IMAGE[:TAG]>
tag() {
    :;
}
# }} docker tag

# {{ docker top
# @cmd Display the running processes of a container
# @arg CONTAINER[`_choice_container_name`]
top() {
    :;
}
# }} docker top

# {{ docker unpause
# @cmd Unpause all processes within one or more containers
# @arg CONTAINER*[`_choice_container_name`]
unpause() {
    :;
}
# }} docker unpause

# {{ docker update
# @cmd Update configuration of one or more containers
# @option --blkio-weight <uint16>         Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
# @option --cpu-period <int>              Limit CPU CFS (Completely Fair Scheduler) period
# @option --cpu-quota <int>               Limit CPU CFS (Completely Fair Scheduler) quota
# @option --cpu-rt-period <int>           Limit the CPU real-time period in microseconds
# @option --cpu-rt-runtime <int>          Limit the CPU real-time runtime in microseconds
# @option -c --cpu-shares <int>           CPU shares (relative weight)
# @option --cpus <decimal>                Number of CPUs
# @option --cpuset-cpus <string>          CPUs in which to allow execution (0-3, 0,1)
# @option --cpuset-mems <string>          MEMs in which to allow execution (0-3, 0,1)
# @option -m --memory <bytes>             Memory limit
# @option --memory-reservation <bytes>    Memory soft limit
# @option --memory-swap <bytes>           Swap limit equal to memory plus swap: -1 to enable unlimited swap
# @option --pids-limit <int>              Tune container pids limit (set -1 for unlimited)
# @option --restart <string>              Restart policy to apply when a container exits
# @arg CONTAINER*[`_choice_container_name`]
update() {
    :;
}
# }} docker update

# {{ docker wait
# @cmd Block until one or more containers stop, then print their exit codes
# @arg CONTAINER*[`_choice_container_name`]
wait() {
    :;
}
# }} docker wait

# {{ docker config
# @cmd Manage Swarm configs
config() {
    :;
}

# {{{ docker config create
# @cmd Create a config from a file or STDIN
# @option -l --label <list>             Config labels
# @option --template-driver <string>    Template driver
# @arg CONFIG[`_choice_config`]
# @arg file <file|->
config::create() {
    :;
}
# }}} docker config create

# {{{ docker config inspect
# @cmd Display detailed information on one or more configs
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --pretty                  Print the information in a human friendly format
# @arg CONFIG*[`_choice_config`]
config::inspect() {
    :;
}
# }}} docker config inspect

# {{{ docker config ls
# @cmd List configs
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display IDs
config::ls() {
    :;
}
# }}} docker config ls

# {{{ docker config rm
# @cmd Remove one or more configs
# @arg CONFIG*[`_choice_config`]
config::rm() {
    :;
}
# }}} docker config rm
# }} docker config

# {{ docker node
# @cmd Manage Swarm nodes
node() {
    :;
}

# {{{ docker node demote
# @cmd Demote one or more nodes from manager in the swarm
# @arg NODE*[`_choice_node`]
node::demote() {
    :;
}
# }}} docker node demote

# {{{ docker node inspect
# @cmd Display detailed information on one or more nodes
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --pretty                  Print the information in a human friendly format
# @arg self-NODE
# @arg NODE*[`_choice_node`]
node::inspect() {
    :;
}
# }}} docker node inspect

# {{{ docker node ls
# @cmd List nodes in the swarm
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display IDs
node::ls() {
    :;
}
# }}} docker node ls

# {{{ docker node promote
# @cmd Promote one or more nodes to manager in the swarm
# @arg NODE*[`_choice_node`]
node::promote() {
    :;
}
# }}} docker node promote

# {{{ docker node ps
# @cmd List tasks running on one or more nodes, defaults to current node
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Pretty-print tasks using a Go template
# @flag --no-resolve              Do not map IDs to Names
# @flag --no-trunc                Do not truncate output
# @flag -q --quiet                Only display task IDs
# @arg NODE*[`_choice_node`]
node::ps() {
    :;
}
# }}} docker node ps

# {{{ docker node rm
# @cmd Remove one or more nodes from the swarm
# @flag -f --force    Force remove a node from the swarm
# @arg NODE*[`_choice_node`]
node::rm() {
    :;
}
# }}} docker node rm

# {{{ docker node update
# @cmd Update a node
# @option --availability <string>    Availability of the node ("active", "pause", "drain")
# @option --label-add <list>         Add or update a node label ("key=value")
# @option --label-rm <list>          Remove a node label if exists
# @option --role <string>            Role of the node ("worker", "manager")
# @arg NODE[`_choice_node`]
node::update() {
    :;
}
# }}} docker node update
# }} docker node

# {{ docker secret
# @cmd Manage Swarm secrets
secret() {
    :;
}

# {{{ docker secret create
# @cmd Create a secret from a file or STDIN as content
# @option -d --driver <string>          Secret driver
# @option -l --label <list>             Secret labels
# @option --template-driver <string>    Template driver
# @arg SECRET[`_choice_secret`]
# @arg file <file|->
secret::create() {
    :;
}
# }}} docker secret create

# {{{ docker secret inspect
# @cmd Display detailed information on one or more secrets
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --pretty                  Print the information in a human friendly format
# @arg SECRET*[`_choice_secret`]
secret::inspect() {
    :;
}
# }}} docker secret inspect

# {{{ docker secret ls
# @cmd List secrets
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display IDs
secret::ls() {
    :;
}
# }}} docker secret ls

# {{{ docker secret rm
# @cmd Remove one or more secrets
# @arg SECRET*[`_choice_secret`]
secret::rm() {
    :;
}
# }}} docker secret rm
# }} docker secret

# {{ docker service
# @cmd Manage Swarm services
service() {
    :;
}

# {{{ docker service create
# @cmd Create a new service
# @option --cap-add <list>                        Add Linux capabilities
# @option --cap-drop <list>                       Drop Linux capabilities
# @option --config <config>                       Specify configurations to expose to the service
# @option --constraint <list>                     Placement constraints
# @option --container-label <list>                Container labels
# @option --credential-spec <credential-spec>     Credential spec for managed service account (Windows only)
# @flag -d --detach                               Exit immediately instead of waiting for the service to converge
# @option --dns <list>                            Set custom DNS servers
# @option --dns-option <list>                     Set DNS options
# @option --dns-search <list>                     Set custom DNS search domains
# @option --endpoint-mode <string>                Endpoint mode (vip or dnsrr) (default "vip")
# @option -e --env <list>                         Set environment variables
# @option --env-file <list>                       Read in a file of environment variables
# @option --generic-resource <list>               User defined resources
# @option --group <list>                          Set one or more supplementary user groups for the container
# @option --health-cmd <string>                   Command to run to check health
# @option --health-interval <duration>            Time between running the check (ms|s|m|h)
# @option --health-retries <int>                  Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>        Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)
# @option --health-timeout <duration>             Maximum time to allow one check to run (ms|s|m|h)
# @option --host <list>                           Set one or more custom host-to-IP mappings (host:ip)
# @option --hostname <string>                     Container hostname
# @flag --init                                    Use an init inside each service container to forward signals and reap processes
# @option --isolation <string>                    Service container isolation mode
# @option -l --label <list>                       Service labels
# @option --limit-cpu <decimal>                   Limit CPUs
# @option --limit-memory <bytes>                  Limit Memory
# @option --limit-pids <int>                      Limit maximum number of processes (default 0 = unlimited)
# @option --log-driver <string>                   Logging driver for service
# @option --log-opt <list>                        Logging driver options
# @option --max-concurrent <uint>                 Number of job tasks to run concurrently (default equal to --replicas)
# @option --mode <string>                         Service mode ("replicated", "global", "replicated-job", "global-job") (default "replicated")
# @option --mount <mount>                         Attach a filesystem mount to the service
# @option --name <string>                         Service name
# @option --network <network>                     Network attachments
# @flag --no-healthcheck                          Disable any container-specified HEALTHCHECK
# @flag --no-resolve-image                        Do not query the registry to resolve image digest and supported platforms
# @option --placement-pref <pref>                 Add a placement preference
# @option -p --publish <port>                     Publish a port as a node port
# @flag -q --quiet                                Suppress progress output
# @flag --read-only                               Mount the container's root filesystem as read only
# @option --replicas <uint>                       Number of tasks
# @option --replicas-max-per-node <uint>          Maximum number of tasks per node (default 0 = unlimited)
# @option --reserve-cpu <decimal>                 Reserve CPUs
# @option --reserve-memory <bytes>                Reserve Memory
# @option --restart-condition <string>            Restart when condition is met ("none", "on-failure", "any") (default "any")
# @option --restart-delay <duration>              Delay between restart attempts (ns|us|ms|s|m|h) (default 5s)
# @option --restart-max-attempts <uint>           Maximum number of restarts before giving up
# @option --restart-window <duration>             Window used to evaluate the restart policy (ns|us|ms|s|m|h)
# @option --rollback-delay <duration>             Delay between task rollbacks (ns|us|ms|s|m|h) (default 0s)
# @option --rollback-failure-action <string>      Action on rollback failure ("pause", "continue") (default "pause")
# @option --rollback-max-failure-ratio <float>    Failure rate to tolerate during a rollback (default 0)
# @option --rollback-monitor <duration>           Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h) (default 5s)
# @option --rollback-order <string>               Rollback order ("start-first", "stop-first") (default "stop-first")
# @option --rollback-parallelism <uint>           Maximum number of tasks rolled back simultaneously (0 to roll back all at once) (default 1)
# @option --secret <secret>                       Specify secrets to expose to the service
# @option --stop-grace-period <duration>          Time to wait before force killing a container (ns|us|ms|s|m|h) (default 10s)
# @option --stop-signal <string>                  Signal to stop the container
# @option --sysctl <list>                         Sysctl options
# @flag -t --tty                                  Allocate a pseudo-TTY
# @option --ulimit <ulimit>                       Ulimit options (default [])
# @option --update-delay <duration>               Delay between updates (ns|us|ms|s|m|h) (default 0s)
# @option --update-failure-action <string>        Action on update failure ("pause", "continue", "rollback") (default "pause")
# @option --update-max-failure-ratio <float>      Failure rate to tolerate during an update (default 0)
# @option --update-monitor <duration>             Duration after each task update to monitor for failure (ns|us|ms|s|m|h) (default 5s)
# @option --update-order <string>                 Update order ("start-first", "stop-first") (default "stop-first")
# @option --update-parallelism <uint>             Maximum number of tasks updated simultaneously (0 to update all at once) (default 1)
# @option -u --user <string>                      Username or UID (format: <name|uid>[:<group|gid>])
# @flag --with-registry-auth                      Send registry authentication details to swarm agents
# @option -w --workdir <string>                   Working directory inside the container
# @arg IMAGE[`_choice_image_repo_tag`]
# @arg ARG*
service::create() {
    :;
}
# }}} docker service create

# {{{ docker service inspect
# @cmd Display detailed information on one or more services
# @option -f --format <string>    Format output using a custom template: 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --pretty                  Print the information in a human friendly format
# @arg SERVICE*[`_choice_service`]
service::inspect() {
    :;
}
# }}} docker service inspect

# {{{ docker service logs
# @cmd Fetch the logs of a service or task
# @flag --details               Show extra details provided to logs
# @flag -f --follow             Follow log output
# @flag --no-resolve            Do not map IDs to Names in output
# @flag --no-task-ids           Do not include task IDs in output
# @flag --no-trunc              Do not truncate output
# @flag --raw                   Do not neatly format logs
# @option --since <string>      Show logs since timestamp (e.g.
# @option -n --tail <string>    Number of lines to show from the end of the logs (default "all")
# @flag -t --timestamps         Show timestamps
# @arg SERVICE-TASK[`_choice_service`]
service::logs() {
    :;
}
# }}} docker service logs

# {{{ docker service ls
# @cmd List services
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display IDs
service::ls() {
    :;
}
# }}} docker service ls

# {{{ docker service ps
# @cmd List the tasks of one or more services
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Pretty-print tasks using a Go template
# @flag --no-resolve              Do not map IDs to Names
# @flag --no-trunc                Do not truncate output
# @flag -q --quiet                Only display task IDs
# @arg SERVICE*[`_choice_service`]
service::ps() {
    :;
}
# }}} docker service ps

# {{{ docker service rm
# @cmd Remove one or more services
# @arg SERVICE*[`_choice_service`]
service::rm() {
    :;
}
# }}} docker service rm

# {{{ docker service rollback
# @cmd Revert changes to a service's configuration
# @flag -d --detach    Exit immediately instead of waiting for the service to converge
# @flag -q --quiet     Suppress progress output
# @arg SERVICE[`_choice_service`]
service::rollback() {
    :;
}
# }}} docker service rollback

# {{{ docker service scale
# @cmd Scale one or multiple replicated services
# @flag -d --detach         Exit immediately instead of waiting for the service to converge
# @arg SERVICE-REPLICAS*[`_choice_service`]
service::scale() {
    :;
}
# }}} docker service scale

# {{{ docker service update
# @cmd Update a service
# @option --cap-add <list>                        Add Linux capabilities
# @option --cap-drop <list>                       Drop Linux capabilities
# @option --config-add <config>                   Add or update a config file on a service
# @option --config-rm <list>                      Remove a configuration file
# @option --constraint-add <list>                 Add or update a placement constraint
# @option --constraint-rm <list>                  Remove a constraint
# @option --container-label-add <list>            Add or update a container label
# @option --container-label-rm <list>             Remove a container label by its key
# @option --credential-spec <credential-spec>     Credential spec for managed service account (Windows only)
# @flag -d --detach                               Exit immediately instead of waiting for the service to converge
# @option --dns-add <list>                        Add or update a custom DNS server
# @option --dns-option-add <list>                 Add or update a DNS option
# @option --dns-option-rm <list>                  Remove a DNS option
# @option --dns-rm <list>                         Remove a custom DNS server
# @option --dns-search-add <list>                 Add or update a custom DNS search domain
# @option --dns-search-rm <list>                  Remove a DNS search domain
# @option --endpoint-mode <string>                Endpoint mode (vip or dnsrr)
# @option --env-add <list>                        Add or update an environment variable
# @option --env-rm <list>                         Remove an environment variable
# @flag --force                                   Force update even if no changes require it
# @option --generic-resource-add <list>           Add a Generic resource
# @option --generic-resource-rm <list>            Remove a Generic resource
# @option --group-add <list>                      Add an additional supplementary user group to the container
# @option --group-rm <list>                       Remove a previously added supplementary user group from the container
# @option --health-cmd <string>                   Command to run to check health
# @option --health-interval <duration>            Time between running the check (ms|s|m|h)
# @option --health-retries <int>                  Consecutive failures needed to report unhealthy
# @option --health-start-period <duration>        Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)
# @option --health-timeout <duration>             Maximum time to allow one check to run (ms|s|m|h)
# @option --host-add <list>                       Add a custom host-to-IP mapping ("host:ip")
# @option --host-rm <list>                        Remove a custom host-to-IP mapping ("host:ip")
# @option --hostname <string>                     Container hostname
# @option --image <string>                        Service image tag
# @flag --init                                    Use an init inside each service container to forward signals and reap processes
# @option --isolation <string>                    Service container isolation mode
# @option --label-add <list>                      Add or update a service label
# @option --label-rm <list>                       Remove a label by its key
# @option --limit-cpu <decimal>                   Limit CPUs
# @option --limit-memory <bytes>                  Limit Memory
# @option --limit-pids <int>                      Limit maximum number of processes (default 0 = unlimited)
# @option --log-driver <string>                   Logging driver for service
# @option --log-opt <list>                        Logging driver options
# @option --max-concurrent <uint>                 Number of job tasks to run concurrently (default equal to --replicas)
# @option --mount-add <mount>                     Add or update a mount on a service
# @option --mount-rm <list>                       Remove a mount by its target path
# @option --network-add <network>                 Add a network
# @option --network-rm <list>                     Remove a network
# @flag --no-healthcheck                          Disable any container-specified HEALTHCHECK
# @flag --no-resolve-image                        Do not query the registry to resolve image digest and supported platforms
# @option --placement-pref-add <pref>             Add a placement preference
# @option --placement-pref-rm <pref>              Remove a placement preference
# @option --publish-add <port>                    Add or update a published port
# @option --publish-rm <port>                     Remove a published port by its target port
# @flag -q --quiet                                Suppress progress output
# @flag --read-only                               Mount the container's root filesystem as read only
# @option --replicas <uint>                       Number of tasks
# @option --replicas-max-per-node <uint>          Maximum number of tasks per node (default 0 = unlimited)
# @option --reserve-cpu <decimal>                 Reserve CPUs
# @option --reserve-memory <bytes>                Reserve Memory
# @option --restart-condition <string>            Restart when condition is met ("none", "on-failure", "any")
# @option --restart-delay <duration>              Delay between restart attempts (ns|us|ms|s|m|h)
# @option --restart-max-attempts <uint>           Maximum number of restarts before giving up
# @option --restart-window <duration>             Window used to evaluate the restart policy (ns|us|ms|s|m|h)
# @flag --rollback                                Rollback to previous specification
# @option --rollback-delay <duration>             Delay between task rollbacks (ns|us|ms|s|m|h)
# @option --rollback-failure-action <string>      Action on rollback failure ("pause", "continue")
# @option --rollback-max-failure-ratio <float>    Failure rate to tolerate during a rollback
# @option --rollback-monitor <duration>           Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h)
# @option --rollback-order <string>               Rollback order ("start-first", "stop-first")
# @option --rollback-parallelism <uint>           Maximum number of tasks rolled back simultaneously (0 to roll back all at once)
# @option --secret-add <secret>                   Add or update a secret on a service
# @option --secret-rm <list>                      Remove a secret
# @option --stop-grace-period <duration>          Time to wait before force killing a container (ns|us|ms|s|m|h)
# @option --stop-signal <string>                  Signal to stop the container
# @option --sysctl-add <list>                     Add or update a Sysctl option
# @option --sysctl-rm <list>                      Remove a Sysctl option
# @flag -t --tty                                  Allocate a pseudo-TTY
# @option --ulimit-add <ulimit>                   Add or update a ulimit option (default [])
# @option --ulimit-rm <list>                      Remove a ulimit option
# @option --update-delay <duration>               Delay between updates (ns|us|ms|s|m|h)
# @option --update-failure-action <string>        Action on update failure ("pause", "continue", "rollback")
# @option --update-max-failure-ratio <float>      Failure rate to tolerate during an update
# @option --update-monitor <duration>             Duration after each task update to monitor for failure (ns|us|ms|s|m|h)
# @option --update-order <string>                 Update order ("start-first", "stop-first")
# @option --update-parallelism <uint>             Maximum number of tasks updated simultaneously (0 to update all at once)
# @option -u --user <string>                      Username or UID (format: <name|uid>[:<group|gid>])
# @flag --with-registry-auth                      Send registry authentication details to swarm agents
# @option -w --workdir <string>                   Working directory inside the container
# @arg SERVICE[`_choice_service`]
service::update() {
    :;
}
# }}} docker service update
# }} docker service

# {{ docker stack
# @cmd Manage Swarm stacks
stack() {
    :;
}

# {{{ docker stack config
# @cmd Outputs the final config file, after doing merges and interpolations
# @option -c --compose-file <strings>    Path to a Compose file, or "-" to read from stdin
# @flag --skip-interpolation             Skip interpolation and output only merged config
stack::config() {
    :;
}
# }}} docker stack config

# {{{ docker stack deploy
# @cmd Deploy a new stack or update an existing stack
# @option -c --compose-file <strings>    Path to a Compose file, or "-" to read from stdin
# @flag --prune                          Prune services that are no longer referenced
# @option --resolve-image <string>       Query the registry to resolve image digest and supported platforms ("always", "changed", "never") (default "always")
# @flag --with-registry-auth             Send registry authentication details to Swarm agents
# @arg STACK[`_choice_stack`]
stack::deploy() {
    :;
}
# }}} docker stack deploy

# {{{ docker stack ls
# @cmd List stacks
# @option --format <string>    Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
stack::ls() {
    :;
}
# }}} docker stack ls

# {{{ docker stack ps
# @cmd List the tasks in the stack
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag --no-resolve              Do not map IDs to Names
# @flag --no-trunc                Do not truncate output
# @flag -q --quiet                Only display task IDs
# @arg STACK[`_choice_stack`]
stack::ps() {
    :;
}
# }}} docker stack ps

# {{{ docker stack rm
# @cmd Remove one or more stacks
# @arg STACK*[`_choice_stack`]
stack::rm() {
    :;
}
# }}} docker stack rm

# {{{ docker stack services
# @cmd List the services in the stack
# @option -f --filter <filter>    Filter output based on conditions provided
# @option --format <string>       Format output using a custom template: 'table': Print output in table format with column headers (default) 'table TEMPLATE': Print output in table format using the given Go template 'json': Print in JSON format 'TEMPLATE': Print output using the given Go template.
# @flag -q --quiet                Only display IDs
# @arg STACK[`_choice_stack`]
stack::services() {
    :;
}
# }}} docker stack services
# }} docker stack

_docker() {
    docker $(_argc_util_select_options --host --config --context) "$@"
}

_choice_config() {
    _docker config ls --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_container_name() {
    _docker ps --format '{{.Names}}\t{{.Image}} ({{.Status}})'
}

_choice_container_id() {
    _docker ps --format '{{.ID}}\t{{.Image}} ({{.Status}})'
}

_choice_image_repo() {
    _docker image ls --format '{{.Repository}}'
}

_choice_image_repo_tag() {
    _docker image ls --format '{{.Repository}}:{{.Tag}}'
}

_choice_context() {
    _docker context list --format '{{.Name}}\t{{.Description}}'
}

_choice_network() {
    _docker network list --format '{{.Name}}\t{{.Driver}}/{{.Scope}}'
}

_choice_node() {
    _docker node list --format '{{.ID}}\t{{.Hostname}} {{.ManagerStatus}}'
}

_choice_plugin() {
    _docker plugin list --format '{{.Name}}\t{{.Description}}'
}

_choice_secret() {
    _docker secret list --format '{{.Name}}\tupdated {{.UpdatedAt}}'
}

_choice_service() {
    _docker service list --format '{{.Name}}\t{{.Image}} {{.Mode}} {{.Replicas}}'
}

_choice_stack() {
    _docker stack list --format '{{.Name}}\t{{.Driver}}'
}

_choice_volume() {
    _docker volume list --format '{{.Name}}\t{{.Services}} on {{.Orchestrator}}'
}

_choice_builder() {
    _docker buildx ls | tail -n +2 | awk '{if (match($0, /^\w+/)) {print $1} }'
}

_choice_container_cp() {
    if [[ "$(_argc_util_positional_len)" -gt 1 ]]; then
        prev_arg="$(_argc_util_positional -2)"
        if [[ "$prev_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            last_arg="$(_argc_util_positional -1)"
            if [[ ! "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_container_name
            else
                _helper_container_path "$last_arg"
            fi
        fi
    else
        last_arg="$(_argc_util_positional -1)"
        if [[ "$last_arg" == "" ]] || [[ "$last_arg" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_container_name
        elif [[ "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_container_path "$last_arg"
        else
            echo "__argc_comp:file"
        fi
    fi
}

_choice_compose_service() {
    _docker compose ls --format json | jq -r '.[] | .Name'
}

_choice_compose_cp() {
    if [[ "$(_argc_util_positional_len)" -gt 1 ]]; then
        prev_arg="$(_argc_util_positional -2)"
        if [[ "$prev_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            echo "__argc_comp:file"
        else
            last_arg="$(_argc_util_positional -1)"
            if [[ ! "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
                _choice_compose_service
            else
                _helper_compose_service_path "$last_arg"
            fi
        fi
    else
        last_arg="$(_argc_util_positional -1)"
        if [[ "$last_arg" == "" ]] || [[ "$last_arg" =~ ^[A-Za-z0-9_-]+$ ]]; then
            _choice_compose_service
        elif [[ "$last_arg" =~ ^[A-Za-z0-9_-]+: ]]; then
            _helper_compose_service_path "$last_arg"
        else
            echo "__argc_comp:file"
        fi
    fi
}

_choice_container_ls_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            ancestor)
                _choice_image_repo_tag
                ;;
            before | since)
                _choice_container_name
                ;;
            health)
                health_opts=('healthy' 'none' 'starting' 'unhealthy')
                printf "%s\n" "${health_opts[@]}"
                ;;
            id)
                _choice_container_id
                ;;
            is-task)
                bool_opts=('true' 'false')
                printf "%s\n" "${bool_opts[@]}"
                ;;
            isolation)
                isolation_opts=('default' 'process' 'hyperv')
                printf "%s\n" "${isolation_opts[@]}"
                ;;
            name)
                _choice_container_name
                ;;
            network)
                _choice_network
                ;;
            status)
                status_opts=('created' 'dead' 'exited' 'paused' 'restarting' 'running' 'removing')
                printf "%s\n" "${status_opts[@]}"
                ;;
            volume)
                _choice_volume
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('ancestor' 'before' 'exited' 'expose' 'health' 'id' 'label' 'name' 'network' 'publish' 'since' 'status' 'volume')
        printf "%s=\n" "${opts[@]}"
    fi
}

_choice_image_ls_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            before|reference|since)
                _choice_image_repo_tag
                ;;
            dangling)
                bool_opts=('true' 'false')
                printf "%s\n" "${bool_opts[@]}"
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('before' 'dangling' 'label' 'reference' 'since')
        printf "%s=\n" "${opts[@]}"
    fi
}

_choice_event_filter() {
    if [[ "$argc_filter" == *'='* ]]; then
        name="${argc_filter%%=*}"
        output="$(
        case "${name}" in
            config)
                _choice_config
                ;;
            container)
                _choice_container_name
                ;;
            event)
                event_opts=('attach' 'commit' 'connect' 'copy' 'create' 'delete' 'destroy' 'detach' 'die' 'disable' 'disconnect' 'enable' 'exec_create' 'exec_detach'
                'exec_start' 'export' 'health_status' 'import' 'install' 'kill' 'load'  'mount' 'oom' 'pause' 'pull' 'push' 'reload' 'remove' 'rename' 'resize'
                'restart' 'save' 'start' 'stop' 'tag' 'top' 'unmount' 'unpause' 'untag' 'update')
                printf "%s\n" "${event_opts[@]}"
                ;;
            image)
                _choice_image_repo_tag
                ;;
            network)
                _choice_network
                ;;
            node)
                _choice_node
                ;;
            plugin)
                _choice_plugin
                ;;
            scope)
                scope_opts=('local' 'swarm')
                printf "%s\n" "${scope_opts[@]}"
                ;;
            secret)
                _choice_secret
                ;;
            service)
                _choice_service
                ;;
            type)
                type_opts=('container' 'daemon' 'image' 'network' 'volume')
                printf "%s\n" "${type_opts[@]}"
                ;;
            volume)
                _choice_volume
                ;;
            *)
                ;;
        esac
        )"
        echo "$output" | xargs -I% echo $name=%
    else
        opts=('config' 'container' 'daemon' 'event' 'image' 'label' 'network' 'node' 'plugin' 'scope' 'secret' 'service' 'type' 'volume')
        printf "%s=\n" "${opts[@]}"
    fi
}

_helper_container_path() {
    container="${1%%:*}"
    path="${1#*:}"
    if [[ "$path" == '' ]] || [[ "$path" == '/' ]]; then
        search_path="/"
    elif [[ "$path" != *'/' ]]; then
        search_path="$(dirname "$path")"
        if [[ "$search_path" != *'/' ]]; then
            search_path="$search_path/"
        fi
    else
        search_path="$path"
    fi
    _docker exec "$container" ls -1 -p "$search_path" | xargs -I% echo "$container:$search_path%"
}


_helper_compose_service_path() {
    service="${1%%:*}"
    path="${1#*:}"
    if [[ "$path" == '' ]] || [[ "$path" == '/' ]]; then
        search_path="/"
    elif [[ "$path" != *'/' ]]; then
        search_path="$(dirname "$path")"
        if [[ "$search_path" != *'/' ]]; then
            search_path="$search_path/"
        fi
    else
        search_path="$path"
    fi
    _docker compose exec "$service" ls -1 -p "$search_path" | xargs -I% echo "$service:$search_path%"
}

_argc_util_select_options() {
    local name var_name opts
    for name in $@; do
        var_name="argc_$(echo "$name" | sed 's/^-\+//' | tr '-' '_')"
        if [[ -n "${!var_name}" ]]; then
            if [[ "${!var_name}" -eq 1 ]]; then
                opts="$opts $name"
            else
                opts="$opts $name ${!var_name}"
            fi
        fi
    done
    echo "$opts"
}

_argc_util_positional_len() {
    if [[ -z "$argc__words" ]]; then
        echo 0
    else
        echo "${#argc__words[@]}"
    fi
}

_argc_util_positional() {
    if [[ -z "$argc__words" ]]; then
        echo ""
    else
        echo "${argc__words[$1]:-}"
    fi
}

eval "$(argc --argc-eval "$0" "$@")"