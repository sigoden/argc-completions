#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --file                       Specify an alternate compose file (default: docker-compose.yml)
# @option -p --project-name <NAME>        Specify an alternate project name (default: directory name)
# @option --profile <NAME>                Specify a profile to enable
# @option -c --context <NAME>             Specify a context name
# @flag --verbose                         Show more output
# @option --log-level[DEBUG|INFO|WARNING|ERROR|CRITICAL] <LEVEL>  Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
# @option --ansi <never|always|auto>      Control when to print ANSI control characters
# @flag --no-ansi                         Do not print ANSI control characters (DEPRECATED)
# @flag -v --version                      Print version and exit
# @option -H --host                       Daemon socket to connect to
# @flag --tls                             Use TLS; implied by --tlsverify
# @option --tlscacert <CA_PATH>           Trust certs signed only by this CA
# @option --tlscert <CLIENT_CERT_PATH>    Path to TLS certificate file
# @option --tlskey <TLS_KEY_PATH>         Path to TLS key file
# @flag --tlsverify                       Use TLS and verify the remote
# @flag --skip-hostname-check             Don't check the daemon's hostname against the name specified in the client certificate
# @option --project-directory <PATH>      Specify an alternate working directory (default: the path of the Compose file)
# @flag --compatibility                   If set, Compose will attempt to convert keys in v3 files to their non-Swarm equivalent (DEPRECATED)
# @option --env-file <PATH>               Specify an alternate environment file
# @arg ARGS*


# {{ docker-compose build
# @cmd Build or rebuild services
# @option --build-arg <key=val>                  Set build-time variables for services.
# @flag --compress                               Compress the build context using gzip.
# @flag --force-rm                               Always remove intermediate containers.
# @option -m --memory <MEM>                      Set memory limit for the build container.
# @flag --no-cache                               Do not use cache when building the image.
# @flag --no-rm                                  Do not remove intermediate containers after a successful build.
# @flag --parallel                               Build images in parallel.
# @option --progress[auto|plain|tty] <string>    Set type of progress output (auto, plain, tty).
# @flag --pull                                   Always attempt to pull a newer version of the image.
# @flag -q --quiet                               Don't print anything to STDOUT
# @arg SERVICE*[`_choice_service`]
build() {
    :;
}
# }} docker-compose build

# {{ docker-compose config
# @cmd Validate and view the Compose file
# @flag --resolve-image-digests    Pin image tags to digests.
# @flag --no-interpolate           Don't interpolate environment variables.
# @flag -q --quiet                 Only validate the configuration, don't print anything.
# @flag --profiles                 Print the profile names, one per line.
# @flag --services                 Print the service names, one per line.
# @flag --volumes                  Print the volume names, one per line.
# @option --hash <"*">             Print the service config hash, one per line.
config() {
    :;
}
# }} docker-compose config

# {{ docker-compose create
# @cmd Create services
# @flag --force-recreate    Recreate containers even if their configuration and image haven't changed.
# @flag --no-recreate       If containers already exist, don't recreate them.
# @flag --no-build          Don't build an image, even if it's missing.
# @flag --build             Build images before creating containers.
# @arg SERVICE*[`_choice_service`]
create() {
    :;
}
# }} docker-compose create

# {{ docker-compose down
# @cmd Stop and remove resources
# @option --rmi <type>      Remove images.
# @flag -v --volumes        Remove named volumes declared in the `volumes` section of the Compose file and anonymous volumes attached to containers.
# @flag --remove-orphans    Remove containers for services not defined in the Compose file
# @option -t --timeout      Specify a shutdown timeout in seconds. (default: 10)
down() {
    :;
}
# }} docker-compose down

# {{ docker-compose events
# @cmd Receive real time events from containers
# @flag --json     Output events as a stream of json objects
# @arg SERVICE*[`_choice_service`]
events() {
    :;
}
# }} docker-compose events

# {{ docker-compose exec
# @cmd Execute a command in a running container
# @flag -d --detach          Detached mode: Run command in the background.
# @flag --privileged         Give extended privileges to the process.
# @option -u --user          Run the command as this user.
# @flag -T                   Disable pseudo-tty allocation.
# @option --index <index>    index of the container if there are multiple instances of a service [default: 1]
# @flag -e --env             KEY=VAL Set environment variables (can be used multiple times, not supported in API < 1.25)
# @flag -w --workdir         DIR Path to workdir directory for this command.
# @arg SERVICE[`_choice_service`]
# @arg ARGS*
exec() {
    :;
}
# }} docker-compose exec

# {{ docker-compose images
# @cmd List images
# @flag -q --quiet    Only display IDs
# @arg SERVICE*[`_choice_service`]
images() {
    :;
}
# }} docker-compose images

# {{ docker-compose kill
# @cmd Kill containers
# @option -s <SIGNAL>    SIGNAL to send to the container. Default signal is SIGKILL.
# @arg SERVICE*[`_choice_service`]
kill() {
    :;
}
# }} docker-compose kill

# {{ docker-compose logs
# @cmd View output from containers
# @flag --no-color          Produce monochrome output.
# @flag -f --follow         Follow log output.
# @flag -t --timestamps     Show timestamps.
# @option --tail <"all">    Number of lines to show from the end of the logs for each container.
# @flag --no-log-prefix     Don't print prefix in logs.
# @arg SERVICE*[`_choice_service`]
logs() {
    :;
}
# }} docker-compose logs

# {{ docker-compose pause
# @cmd Pause services
# @arg SERVICE*[`_choice_service`]
pause() {
    :;
}
# }} docker-compose pause

# {{ docker-compose port
# @cmd Print the public port for a port binding
# @option --protocol <proto>    tcp or udp [default: tcp]
# @option --index <index>       index of the container if there are multiple instances of a service [default: 1]
# @arg SERVICE[`_choice_service`]
# @arg PRIVATE_PORT
port() {
    :;
}
# }} docker-compose port

# {{ docker-compose ps
# @cmd List containers
# @flag -q --quiet              Only display IDs
# @flag --services              Display services
# @option --filter <KEY=VAL>    Filter services by a property
# @flag -a --all                Show all stopped containers (including those created by the run command)
# @arg SERVICE*[`_choice_service`]
ps() {
    :;
}
# }} docker-compose ps

# {{ docker-compose pull
# @cmd Pull service images
# @flag --ignore-pull-failures    Pull what it can and ignores images with pull failures.
# @flag --parallel                Deprecated, pull multiple images in parallel (enabled by default).
# @flag --no-parallel             Disable parallel pulling.
# @flag -q --quiet                Pull without printing progress information
# @flag --include-deps            Also pull services declared as dependencies
# @arg SERVICE*[`_choice_service`]
pull() {
    :;
}
# }} docker-compose pull

# {{ docker-compose push
# @cmd Push service images
# @flag --ignore-push-failures    Push what it can and ignores images with push failures.
# @arg SERVICE*[`_choice_service`]
push() {
    :;
}
# }} docker-compose push

# {{ docker-compose restart
# @cmd Restart services
# @option -t --timeout    Specify a shutdown timeout in seconds. (default: 10)
# @arg SERVICE*[`_choice_service`]
restart() {
    :;
}
# }} docker-compose restart

# {{ docker-compose rm
# @cmd Remove stopped containers
# @flag -f --force    Don't ask to confirm removal
# @flag -s --stop     Stop the containers, if required, before removing
# @flag -v            Remove any anonymous volumes attached to containers
# @flag -a --all      Deprecated - no effect.
# @arg SERVICE*[`_choice_service`]
rm() {
    :;
}
# }} docker-compose rm

# {{ docker-compose run
# @cmd Run a one-off command
# @flag -d --detach               Detached mode: Run container in the background, print new container name.
# @option --name                  Assign a name to the container
# @option --entrypoint <CMD>      Override the entrypoint of the image.
# @option -e <KEY=VAL>            Set an environment variable (can be used multiple times)
# @option -l --label <KEY=VAL>    Add or override a label (can be used multiple times)
# @option -u --user               Run as specified username or uid
# @flag --no-deps                 Don't start linked services.
# @flag --rm                      Remove container after run. Ignored in detached mode.
# @flag -p --publish              Publish a container's port(s) to the host
# @flag --service-ports           Run command with the service's ports enabled and mapped to the host.
# @flag --use-aliases             Use the service's network aliases in the network(s) the container connects to.
# @flag -v --volume               Bind mount a volume (default [])
# @flag -T                        Disable pseudo-tty allocation. By default `docker-compose run` allocates a TTY.
# @option -w --workdir            Working directory inside the container
run() {
    :;
}
# }} docker-compose run

# {{ docker-compose scale
# @cmd Set number of containers for a service
# @option -t --timeout    Specify a shutdown timeout in seconds. (default: 10)
# @arg SERVICE-NUM*
scale() {
    :;
}
# }} docker-compose scale

# {{ docker-compose start
# @cmd Start services
# @arg SERVICE*[`_choice_service`]
start() {
    :;
}
# }} docker-compose start

# {{ docker-compose stop
# @cmd Stop services
# @option -t --timeout    Specify a shutdown timeout in seconds. (default: 10)
# @arg SERVICE*[`_choice_service`]
stop() {
    :;
}
# }} docker-compose stop

# {{ docker-compose top
# @cmd Display the running processes
# @arg SERVICE*[`_choice_service`]
top() {
    :;
}
# }} docker-compose top

# {{ docker-compose unpause
# @cmd Unpause services
# @arg SERVICE*[`_choice_service`]
unpause() {
    :;
}
# }} docker-compose unpause

# {{ docker-compose up
# @cmd Create and start containers
# @flag -d --detach                     Detached mode: Run containers in the background, print new container names.
# @flag --no-color                      Produce monochrome output.
# @flag --quiet-pull                    Pull without printing progress information
# @flag --no-deps                       Don't start linked services.
# @flag --force-recreate                Recreate containers even if their configuration and image haven't changed.
# @flag --always-recreate-deps          Recreate dependent containers. Incompatible with --no-recreate.
# @flag --no-recreate                   If containers already exist, don't recreate them.
# @flag --no-build                      Don't build an image, even if it's missing.
# @flag --no-start                      Don't start the services after creating them.
# @flag --build                         Build images before starting containers.
# @flag --abort-on-container-exit       Stops all containers if any container was stopped. Incompatible with -d.
# @flag --attach-dependencies           Attach to dependent containers.
# @option -t --timeout                  Use this timeout in seconds for container shutdown when attached or when containers are already running.
# @flag -V --renew-anon-volumes         Recreate anonymous volumes instead of retrieving data from the previous containers.
# @flag --remove-orphans                Remove containers for services not defined in the Compose file.
# @option --exit-code-from <SERVICE>    Return the exit code of the selected service container.
# @option --scale <SERVICE=NUM>         Scale SERVICE to NUM instances.
# @flag --no-log-prefix                 Don't print prefix in logs.
# @arg SERVICE*[`_choice_service`]
up() {
    :;
}
# }} docker-compose up

# {{ docker-compose version
# @cmd Show version information and quit
# @flag --short    Shows only Compose's version number.
version() {
    :;
}
# }} docker-compose version

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
}

_choice_service() {
    _docker_compose config --services
}

_argc_util_param_select_options() {
    local item argc_var argc_val
    for item in $@; do
        item_var="argc_$(echo "$item" | sed 's/^-\+//' | tr '-' '_')"
        item_val="${!var_name}"
        if [[ -n "$item_val" ]]; then
            if [[ "$item_val" -eq 1 ]]; then
                echo -n " $item"
            else
                echo -n " $item $item_val"
            fi
        fi
    done
}

eval "$(argc --argc-eval "$0" "$@")"