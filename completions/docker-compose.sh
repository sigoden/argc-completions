#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --ansi[never|always|auto] <string>    Control when to print ANSI control characters (default "auto")
# @flag --compatibility                         Run compose in backward compatibility mode
# @flag --dry-run                               Execute command in dry run mode
# @option --env-file* <file>                    Specify an alternate environment file.
# @option -f --file* <file>                     Compose configuration files
# @option --parallel <int>                      Control max parallelism, -1 for unlimited (default -1)
# @option --profile* <file>                     Specify a profile to enable
# @option --progress[auto|tty|plain|quiet] <string>  Set type of progress output (default "auto")
# @option --project-directory <path>            Specify an alternate working directory (default: the path of the, first specified, Compose file)
# @option -p --project-name <string>            Project name

# {{ docker-compose build
# @cmd Build or rebuild services
# @option --build-arg* <string>    Set build-time variables for services.
# @option --builder <string>       Set builder to use.
# @flag --dry-run                  Execute command in dry run mode
# @option -m --memory <bytes>      Set memory limit for the build container.
# @flag --no-cache                 Do not use cache when building the image
# @flag --pull                     Always attempt to pull a newer version of the image.
# @flag --push                     Push service images.
# @flag -q --quiet                 Don't print anything to STDOUT
# @option --ssh <string>           Set SSH authentications used when building service images.
# @arg service*[`_choice_service`]
build() {
    :;
}
# }} docker-compose build

# {{ docker-compose config
# @cmd Parse, resolve and render compose file in canonical format
# @flag --dry-run                  Execute command in dry run mode
# @option --format <string>        Format the output.
# @option --hash <string>          Print the service config hash, one per line.
# @flag --images                   Print the image names, one per line.
# @flag --no-consistency           Don't check model consistency - warning: may produce invalid Compose output
# @flag --no-interpolate           Don't interpolate environment variables.
# @flag --no-normalize             Don't normalize compose model.
# @flag --no-path-resolution       Don't resolve file paths.
# @option -o --output <file>       Save to file (default to stdout)
# @flag --profiles                 Print the profile names, one per line.
# @flag -q --quiet                 Only validate the configuration, don't print anything.
# @flag --resolve-image-digests    Pin image tags to digests.
# @flag --services                 Print the service names, one per line.
# @flag --volumes                  Print the volume names, one per line.
# @arg service*[`_choice_service`]
config() {
    :;
}
# }} docker-compose config

# {{ docker-compose cp
# @cmd Copy files/folders between a service container and the local filesystem
# @flag -a --archive        Archive mode (copy all uid/gid information)
# @flag --dry-run           Execute command in dry run mode
# @flag -L --follow-link    Always follow symbol link in SRC_PATH
# @option --index <int>     index of the container if service has multiple replicas
# @arg service-src_path <SERVICE:SRC_PATH>
# @arg dest_path <DEST_PATH|->
cp() {
    :;
}
# }} docker-compose cp

# {{ docker-compose create
# @cmd Creates containers for a service.
# @flag --build              Build images before starting containers.
# @flag --dry-run            Execute command in dry run mode
# @flag --force-recreate     Recreate containers even if their configuration and image haven't changed.
# @flag --no-build           Don't build an image, even if it's policy.
# @flag --no-recreate        If containers already exist, don't recreate them.
# @option --pull[always|missing|never|build] <string>  Pull image before running (default "policy")
# @flag --remove-orphans     Remove containers for services not defined in the Compose file.
# @option --scale <scale>    Scale SERVICE to NUM instances.
# @arg service*[`_choice_service`]
create() {
    :;
}
# }} docker-compose create

# {{ docker-compose down
# @cmd Stop and remove containers, networks
# @flag --dry-run                      Execute command in dry run mode
# @flag --remove-orphans               Remove containers for services not defined in the Compose file.
# @option --rmi[local|all] <string>    Remove images used by services.
# @option -t --timeout <int>           Specify a shutdown timeout in seconds
# @flag -v --volumes                   Remove named volumes declared in the "volumes" section of the Compose file and anonymous volumes attached to containers.
# @arg services*
down() {
    :;
}
# }} docker-compose down

# {{ docker-compose events
# @cmd Receive real time events from containers.
# @flag --dry-run    Execute command in dry run mode
# @flag --json       Output events as a stream of json objects
# @arg service*[`_choice_service`]
events() {
    :;
}
# }} docker-compose events

# {{ docker-compose exec
# @cmd Execute a command in a running container.
# @flag -d --detach                                Detached mode: Run command in the background.
# @flag --dry-run                                  Execute command in dry run mode
# @option -e --env* <string>                       Set environment variables
# @option --index <int>                            index of the container if service has multiple replicas
# @option -T --no-TTY <docker> <compose> <exec>    Disable pseudo-TTY allocation.
# @flag --privileged                               Give extended privileges to the process.
# @option -u --user <string>                       Run the command as this user.
# @option -w --workdir <dir>                       Path to workdir directory for this command.
# @arg service[`_choice_service`]
# @arg command[`_module_os_command`]
# @arg args~[`_choice_args`]
exec() {
    :;
}
# }} docker-compose exec

# {{ docker-compose images
# @cmd List images used by the created containers
# @flag --dry-run              Execute command in dry run mode
# @option --format <string>    Format the output.
# @flag -q --quiet             Only display IDs
# @arg service*[`_choice_service`]
images() {
    :;
}
# }} docker-compose images

# {{ docker-compose kill
# @cmd Force stop service containers.
# @flag --dry-run                 Execute command in dry run mode
# @flag --remove-orphans          Remove containers for services not defined in the Compose file.
# @option -s --signal <string>    SIGNAL to send to the container.
# @arg service*[`_choice_service`]
kill() {
    :;
}
# }} docker-compose kill

# {{ docker-compose logs
# @cmd View output from containers
# @flag --dry-run               Execute command in dry run mode
# @flag -f --follow             Follow log output.
# @flag --no-color              Produce monochrome output.
# @flag --no-log-prefix         Don't print prefix in logs.
# @option --since <string>      Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
# @option -n --tail <string>    Number of lines to show from the end of the logs for each container.
# @flag -t --timestamps         Show timestamps.
# @option --until <string>      Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
# @arg service*[`_choice_service`]
logs() {
    :;
}
# }} docker-compose logs

# {{ docker-compose ls
# @cmd List running compose projects
# @flag -a --all               Show all stopped Compose projects
# @flag --dry-run              Execute command in dry run mode
# @option --filter <filter>    Filter output based on conditions provided.
# @option --format <string>    Format the output.
# @flag -q --quiet             Only display IDs.
ls() {
    :;
}
# }} docker-compose ls

# {{ docker-compose pause
# @cmd Pause services
# @flag --dry-run    Execute command in dry run mode
# @arg service*[`_choice_service`]
pause() {
    :;
}
# }} docker-compose pause

# {{ docker-compose port
# @cmd Print the public port for a port binding.
# @flag --dry-run                Execute command in dry run mode
# @option --index <int>          index of the container if service has multiple replicas
# @option --protocol <string>    tcp or udp (default "tcp")
# @arg service[`_choice_service`]
# @arg private_port
port() {
    :;
}
# }} docker-compose port

# {{ docker-compose ps
# @cmd List containers
# @flag -a --all               Show all stopped containers (including those created by the run command)
# @flag --dry-run              Execute command in dry run mode
# @option --filter <string>    Filter services by a property (supported filters: status).
# @option --format <string>    Format output using a custom template:
# @flag --no-trunc             Don't truncate output
# @flag -q --quiet             Only display IDs
# @flag --services             Display services
# @option --status*[paused|restarting|removing|running|dead|created|exited] <string>  Filter services by status.
# @arg service*[`_choice_service`]
ps() {
    :;
}
# }} docker-compose ps

# {{ docker-compose pull
# @cmd Pull service images
# @flag --dry-run                              Execute command in dry run mode
# @flag --ignore-buildable                     Ignore images that can be built.
# @flag --ignore-pull-failures                 Pull what it can and ignores images with pull failures.
# @flag --include-deps                         Also pull services declared as dependencies.
# @option --policy[missing|always] <string>    Apply pull policy.
# @flag -q --quiet                             Pull without printing progress information.
# @arg service*[`_choice_service`]
pull() {
    :;
}
# }} docker-compose pull

# {{ docker-compose push
# @cmd Push service images
# @flag --dry-run                 Execute command in dry run mode
# @flag --ignore-push-failures    Push what it can and ignores images with push failures
# @flag --include-deps            Also push images of services declared as dependencies
# @flag -q --quiet                Push without printing progress information
# @arg service*[`_choice_service`]
push() {
    :;
}
# }} docker-compose push

# {{ docker-compose restart
# @cmd Restart service containers
# @flag --dry-run               Execute command in dry run mode
# @flag --no-deps               Don't restart dependent services.
# @option -t --timeout <int>    Specify a shutdown timeout in seconds
# @arg service*[`_choice_service`]
restart() {
    :;
}
# }} docker-compose restart

# {{ docker-compose rm
# @cmd Removes stopped service containers
# @flag --dry-run       Execute command in dry run mode
# @flag -f --force      Don't ask to confirm removal
# @flag -s --stop       Stop the containers, if required, before removing
# @flag -v --volumes    Remove any anonymous volumes attached to containers
# @arg service*[`_choice_service`]
rm() {
    :;
}
# }} docker-compose rm

# {{ docker-compose run
# @cmd Run a one-off command on a service.
# @flag --build                     Build image before starting container.
# @option --cap-add <list>          Add Linux capabilities
# @option --cap-drop <list>         Drop Linux capabilities
# @flag -d --detach                 Run container in background and print container ID
# @flag --dry-run                   Execute command in dry run mode
# @option --entrypoint <string>     Override the entrypoint of the image
# @option -e --env* <string>        Set environment variables
# @flag -i --interactive            Keep STDIN open even if not attached.
# @option -l --label* <string>      Add or override a label
# @option --name <string>           Assign a name to the container
# @flag -T --no-TTY                 Disable pseudo-TTY allocation (default: auto-detected).
# @flag --no-deps                   Don't start linked services.
# @option -p --publish* <string>    Publish a container's port(s) to the host.
# @flag --quiet-pull                Pull without printing progress information.
# @flag --remove-orphans            Remove containers for services not defined in the Compose file.
# @flag --rm                        Automatically remove the container when it exits
# @flag --service-ports             Run command with the service's ports enabled and mapped to the host.
# @flag --use-aliases               Use the service's network useAliases in the network(s) the container connects to.
# @option -u --user <string>        Run as specified username or uid
# @option -v --volume* <string>     Bind mount a volume.
# @option -w --workdir <dir>        Working directory inside the container
# @arg service[`_choice_service`]
# @arg command
# @arg args*
run() {
    :;
}
# }} docker-compose run

# {{ docker-compose scale
# @cmd Scale services
# @flag --dry-run    Execute command in dry run mode
# @flag --no-deps    Don't start linked services.
# @arg service-replicas* <SERVICE=REPLICAS>
scale() {
    :;
}
# }} docker-compose scale

# {{ docker-compose start
# @cmd Start services
# @flag --dry-run    Execute command in dry run mode
# @arg service*[`_choice_service`]
start() {
    :;
}
# }} docker-compose start

# {{ docker-compose stop
# @cmd Stop services
# @flag --dry-run               Execute command in dry run mode
# @option -t --timeout <int>    Specify a shutdown timeout in seconds
# @arg service*[`_choice_service`]
stop() {
    :;
}
# }} docker-compose stop

# {{ docker-compose top
# @cmd Display the running processes
# @flag --dry-run    Execute command in dry run mode
# @arg services*
top() {
    :;
}
# }} docker-compose top

# {{ docker-compose unpause
# @cmd Unpause services
# @flag --dry-run    Execute command in dry run mode
# @arg service*[`_choice_service`]
unpause() {
    :;
}
# }} docker-compose unpause

# {{ docker-compose up
# @cmd Create and start containers
# @flag --abort-on-container-exit                  Stops all containers if any container was stopped.
# @flag --always-recreate-deps                     Recreate dependent containers.
# @option --attach* <string>                       Restrict attaching to the specified services.
# @flag --attach-dependencies                      Automatically attach to log output of dependent services.
# @flag --build                                    Build images before starting containers.
# @flag -d --detach                                Detached mode: Run containers in the background
# @flag --dry-run                                  Execute command in dry run mode
# @option --exit-code-from <string>                Return the exit code of the selected service container.
# @flag --force-recreate                           Recreate containers even if their configuration and image haven't changed.
# @option --no-attach* <string>                    Do not attach (stream logs) to the specified services.
# @flag --no-build                                 Don't build an image, even if it's policy.
# @flag --no-color                                 Produce monochrome output.
# @flag --no-deps                                  Don't start linked services.
# @flag --no-log-prefix                            Don't print prefix in logs.
# @flag --no-recreate                              If containers already exist, don't recreate them.
# @flag --no-start                                 Don't start the services after creating them.
# @option --pull[always|missing|never] <string>    Pull image before running (default "policy")
# @flag --quiet-pull                               Pull without printing progress information.
# @flag --remove-orphans                           Remove containers for services not defined in the Compose file.
# @flag -V --renew-anon-volumes                    Recreate anonymous volumes instead of retrieving data from the previous containers.
# @option --scale <scale>                          Scale SERVICE to NUM instances.
# @option -t --timeout <int>                       Use this timeout in seconds for container shutdown when attached or when containers are already running.
# @flag --timestamps                               Show timestamps.
# @flag --wait                                     Wait for services to be running|healthy.
# @option --wait-timeout <int>                     Maximum duration to wait for the project to be running|healthy.
# @arg service*[`_choice_service`]
up() {
    :;
}
# }} docker-compose up

# {{ docker-compose version
# @cmd Show the Docker Compose version information
# @flag --dry-run                 Execute command in dry run mode
# @option -f --format <string>    Format the output.
# @flag --short                   Shows only Compose's version number.
version() {
    :;
}
# }} docker-compose version

# {{ docker-compose wait
# @cmd Block until the first service container stops
# @flag --down-project    Drops project when the first container stops
# @flag --dry-run         Execute command in dry run mode
# @arg service*[`_choice_service`]
wait() {
    :;
}
# }} docker-compose wait

# {{ docker-compose watch
# @cmd Watch build context for service and rebuild/refresh containers when files are updated
# @flag --dry-run    Execute command in dry run mode
# @flag --no-up      Do not build & start services before watching
# @flag --quiet      hide build output
# @arg service*[`_choice_service`]
watch() {
    :;
}
# }} docker-compose watch

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_service() {
    _docker_compose config --services
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_docker_compose() {
    docker-compose $(_argc_util_param_select_options --file) "$@"
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