#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V                                       output the version number
# @flag -v --version                             print pm2 version
# @flag -s --silent                              hide all messages
# @option --ext <extensions>                     watch only this file extensions
# @option -n --name <name>                       set a name for the process in the process list
# @flag -m --mini-list                           display a compacted list without formatting
# @option --interpreter <interpreter>            set a specific interpreter to use for executing app, default: node
# @option --interpreter-args <arguments>         set arguments to pass to the interpreter (alias of --node-args)
# @option --node-args <node_args>                space delimited arguments to pass to node
# @option -o --output <path>                     specify log file for stdout
# @option -e --error <path>                      specify log file for stderr
# @option -l --log <path>                        specify log file which gathers both stdout and stderr
# @option --filter-env <envs>                    filter out outgoing global values that contain provided strings (default: )
# @option --log-type[raw|json] <type>            specify log output style (raw by default, json optional)
# @option --log-date-format <date format>        add custom prefix timestamp to logs
# @flag --time                                   enable time logging
# @flag --disable-logs                           disable all logs storage
# @option --env <environment_name>               specify which set of environment variables from ecosystem file must be injected
# @flag -a --update-env                          force an update of the environment with restart/reload (-a <=> apply)
# @flag -f --force                               force actions
# @option -i --instances <number>                launch [number] instances (for networked app)(load balanced)
# @option --parallel <number>                    number of parallel actions (for restart/reload)
# @option --shutdown-with-message[pid|SIGINT]    shutdown an application with process.send('shutdown') instead of process.kill
# @option -p --pid <path>                        specify pid file
# @option -k --kill-timeout <delay>              delay before sending final SIGKILL signal to process
# @option --listen-timeout <delay>               listen timeout on application reload
# @option --max-memory-restart <memory>          Restart the app if an amount of memory is exceeded (in bytes)
# @option --restart-delay <delay>                specify a delay between restarts (in milliseconds)
# @option --exp-backoff-restart-delay <delay>    specify a delay between restarts (in milliseconds)
# @flag -x --execute-command                     execute a program using fork system
# @option --max-restarts <count>                 only restart the script COUNT times
# @option -u --user[`_module_os_user`] <username>  define user when generating startup script
# @option --uid[`_module_os_uid`] <uid>          run target script with <uid> rights
# @option --gid[`_module_os_gid`] <gid>          run target script with <gid> rights
# @option --namespace <ns>                       start application within specified namespace
# @option --cwd <path>                           run target script from path <cwd>
# @option --hp <home path>                       define home path when generating startup script
# @flag --wait-ip                                override systemd script to wait for full internet connectivity to launch pm2
# @option --service-name <name>                  define service name when generating startup script
# @option -c --cron <cron_pattern>               restart a running process based on a cron pattern
# @option --cron-restart <cron_pattern>          (alias) restart a running process based on a cron pattern
# @flag -w --write                               write configuration in local folder
# @flag --no-daemon                              run pm2 daemon in the foreground if it doesn't exist already
# @flag --source-map-support                     force source map support
# @option --only <application-name>              with json declaration, allow to only act on one application
# @flag --disable-source-map-support             force source map support
# @flag --wait-ready                             ask pm2 to wait for ready event from your app
# @flag --merge-logs                             merge logs from different instances but keep error and out separated
# @option --watch <paths>                        watch application folder for changes (default: )
# @option --ignore-watch <folders|files>         List of paths to ignore (name or regex)
# @option --watch-delay <delay>                  specify a restart delay after changing files (--watch-delay 4 (in sec) or 4000ms)
# @flag --no-color                               skip colors
# @flag --no-vizion                              start an app without vizion feature (versioning control)
# @flag --no-autorestart                         start an app without automatic restart
# @flag --no-treekill                            Only kill the main process, not detached children
# @flag --no-pmx                                 start an app without pmx
# @flag --no-automation                          start an app without pmx
# @flag --trace                                  enable transaction tracing with km
# @flag --disable-trace                          disable transaction tracing with km
# @option --sort <field_name:sort>               sort process according to field's name
# @flag --attach                                 attach logging after your start/restart/stop/reload
# @flag --v8                                     enable v8 data collecting
# @flag --event-loop-inspector                   enable event-loop-inspector dump in pmx
# @flag --deep-monitoring                        enable all monitoring tools (equivalent to --v8 --event-loop-inspector --trace)
# @flag -h --help                                output usage information

# {{ pm2 start
# @cmd start and daemonize an app
# @flag -V                                       output the version number
# @flag -v --version                             print pm2 version
# @flag -s --silent                              hide all messages
# @option --ext <extensions>                     watch only this file extensions
# @option -n --name <name>                       set a name for the process in the process list
# @flag -m --mini-list                           display a compacted list without formatting
# @option --interpreter <interpreter>            set a specific interpreter to use for executing app, default: node
# @option --interpreter-args <arguments>         set arguments to pass to the interpreter (alias of --node-args)
# @option --node-args <node_args>                space delimited arguments to pass to node
# @option -o --output <path>                     specify log file for stdout
# @option -e --error <path>                      specify log file for stderr
# @option -l --log <path>                        specify log file which gathers both stdout and stderr
# @option --filter-env <envs>                    filter out outgoing global values that contain provided strings (default: )
# @option --log-type[raw|json] <type>            specify log output style (raw by default, json optional)
# @option --log-date-format <date format>        add custom prefix timestamp to logs
# @flag --time                                   enable time logging
# @flag --disable-logs                           disable all logs storage
# @option --env <environment_name>               specify which set of environment variables from ecosystem file must be injected
# @flag -a --update-env                          force an update of the environment with restart/reload (-a <=> apply)
# @flag -f --force                               force actions
# @option -i --instances <number>                launch [number] instances (for networked app)(load balanced)
# @option --parallel <number>                    number of parallel actions (for restart/reload)
# @option --shutdown-with-message[pid|SIGINT]    shutdown an application with process.send('shutdown') instead of process.kill
# @option -p --pid <path>                        specify pid file
# @option -k --kill-timeout <delay>              delay before sending final SIGKILL signal to process
# @option --listen-timeout <delay>               listen timeout on application reload
# @option --max-memory-restart <memory>          Restart the app if an amount of memory is exceeded (in bytes)
# @option --restart-delay <delay>                specify a delay between restarts (in milliseconds)
# @option --exp-backoff-restart-delay <delay>    specify a delay between restarts (in milliseconds)
# @flag -x --execute-command                     execute a program using fork system
# @option --max-restarts <count>                 only restart the script COUNT times
# @option -u --user[`_module_os_user`] <username>  define user when generating startup script
# @option --uid[`_module_os_uid`] <uid>          run target script with <uid> rights
# @option --gid[`_module_os_gid`] <gid>          run target script with <gid> rights
# @option --namespace <ns>                       start application within specified namespace
# @option --cwd <path>                           run target script from path <cwd>
# @option --hp <home path>                       define home path when generating startup script
# @flag --wait-ip                                override systemd script to wait for full internet connectivity to launch pm2
# @option --service-name <name>                  define service name when generating startup script
# @option -c --cron <cron_pattern>               restart a running process based on a cron pattern
# @option --cron-restart <cron_pattern>          (alias) restart a running process based on a cron pattern
# @flag -w --write                               write configuration in local folder
# @flag --no-daemon                              run pm2 daemon in the foreground if it doesn't exist already
# @flag --source-map-support                     force source map support
# @option --only <application-name>              with json declaration, allow to only act on one application
# @flag --disable-source-map-support             force source map support
# @flag --wait-ready                             ask pm2 to wait for ready event from your app
# @flag --merge-logs                             merge logs from different instances but keep error and out separated
# @option --ignore-watch <folders|files>         List of paths to ignore (name or regex)
# @option --watch-delay <delay>                  specify a restart delay after changing files (--watch-delay 4 (in sec) or 4000ms)
# @flag --no-color                               skip colors
# @flag --no-vizion                              start an app without vizion feature (versioning control)
# @flag --no-autorestart                         start an app without automatic restart
# @flag --no-treekill                            Only kill the main process, not detached children
# @flag --no-pmx                                 start an app without pmx
# @flag --no-automation                          start an app without pmx
# @flag --trace                                  enable transaction tracing with km
# @flag --disable-trace                          disable transaction tracing with km
# @option --sort <field_name:sort>               sort process according to field's name
# @flag --attach                                 attach logging after your start/restart/stop/reload
# @flag --v8                                     enable v8 data collecting
# @flag --event-loop-inspector                   enable event-loop-inspector dump in pmx
# @flag --deep-monitoring                        enable all monitoring tools (equivalent to --v8 --event-loop-inspector --trace)
# @flag --watch                                  Watch folder for changes
# @flag --fresh                                  Rebuild Dockerfile
# @flag --daemon                                 Run container in Daemon mode (debug purposes)
# @flag --container                              Start application in container mode
# @flag --dist                                   with --container; change local Dockerfile to containerize all files in current directory
# @option --image-name <name>                    with --dist; set the exported image name
# @option --node-version <major>                 with --container, set a specific major Node.js version
# @flag --dockerdaemon                           for debugging purpose
# @flag -h --help                                output usage information
# @arg target[`_choice_start`]
start() {
    :;
}
# }} pm2 start

# {{ pm2 trigger
# @cmd trigger process action
# @flag -h --help    output usage information
# @arg target[`_choice_reload`]
# @arg action_name
# @arg param
trigger() {
    :;
}
# }} pm2 trigger

# {{ pm2 deploy
# @cmd deploy your json
# @flag -h --help    output usage information
# @arg file-environment! <file|environment>
deploy() {
    :;
}
# }} pm2 deploy

# {{ pm2 startOrRestart
# @cmd start or restart JSON file
# @flag -h --help    output usage information
# @arg file-json <file:.json>
startOrRestart() {
    :;
}
# }} pm2 startOrRestart

# {{ pm2 startOrReload
# @cmd start or gracefully reload JSON file
# @flag -h --help    output usage information
# @arg file-json <file:.json>
startOrReload() {
    :;
}
# }} pm2 startOrReload

# {{ pm2 pid
# @cmd return pid of [app_name] or all
# @flag -h --help    output usage information
# @arg app_name[`_choice_name`]
pid() {
    :;
}
# }} pm2 pid

# {{ pm2 create
# @cmd return pid of [app_name] or all
# @flag -h --help    output usage information
create() {
    :;
}
# }} pm2 create

# {{ pm2 startOrGracefulReload
# @cmd start or gracefully reload JSON file
# @flag -h --help    output usage information
# @arg file-json <file:.json>
startOrGracefulReload() {
    :;
}
# }} pm2 startOrGracefulReload

# {{ pm2 stop
# @cmd stop a process
# @flag --watch      Stop watching folder for changes
# @flag -h --help    output usage information
# @arg target[`_choice_stop`]
stop() {
    :;
}
# }} pm2 stop

# {{ pm2 restart
# @cmd restart a process
# @flag --watch      Toggle watching folder for changes
# @flag -h --help    output usage information
# @arg target[`_choice_stop`]
restart() {
    :;
}
# }} pm2 restart

# {{ pm2 scale
# @cmd scale up/down a process in cluster mode depending on total_number param
# @flag -h --help    output usage information
# @arg app_name![`_choice_name`]
# @arg number!
scale() {
    :;
}
# }} pm2 scale

# {{ pm2 profile:mem
# @cmd Sample PM2 heap memory
# @flag -h --help    output usage information
# @arg time
profile:mem() {
    :;
}
# }} pm2 profile:mem

# {{ pm2 profile:cpu
# @cmd Profile PM2 cpu
# @flag -h --help    output usage information
# @arg time
profile:cpu() {
    :;
}
# }} pm2 profile:cpu

# {{ pm2 reload
# @cmd reload processes (note that its for app using HTTP/HTTPS)
# @flag -h --help    output usage information
# @arg target[`_choice_reload`]
reload() {
    :;
}
# }} pm2 reload

# {{ pm2 id
# @cmd get process id by name
# @flag -h --help    output usage information
# @arg name![`_choice_name`]
id() {
    :;
}
# }} pm2 id

# {{ pm2 inspect
# @cmd inspect a process
# @flag -h --help    output usage information
# @arg name![`_choice_name`]
inspect() {
    :;
}
# }} pm2 inspect

# {{ pm2 delete
# @cmd stop and delete a process from pm2 process list
# @alias del
# @flag -h --help    output usage information
# @arg target[`_choice_stop`]
delete() {
    :;
}
# }} pm2 delete

# {{ pm2 sendSignal
# @cmd send a system signal to the target process
# @flag -h --help    output usage information
# @arg signal!
# @arg pm2_id-name![`_choice_id_name`] <pm2_id|name>
sendSignal() {
    :;
}
# }} pm2 sendSignal

# {{ pm2 ping
# @cmd ping pm2 daemon - if not up it will launch it
# @flag -h --help    output usage information
ping() {
    :;
}
# }} pm2 ping

# {{ pm2 updatePM2
# @cmd update in-memory PM2 with local PM2
# @flag -h --help    output usage information
updatePM2() {
    :;
}
# }} pm2 updatePM2

# {{ pm2 update
# @cmd (alias) update in-memory PM2 with local PM2
# @flag -h --help    output usage information
update() {
    :;
}
# }} pm2 update

# {{ pm2 install
# @cmd install or update a module and run it forever
# @alias module:install
# @flag --tarball          is local tarball
# @flag --install          run yarn install before starting module
# @flag --docker           is docker container
# @flag --v1               install module in v1 manner (do not use it)
# @option --safe <time>    keep module backup, if new module fail = restore with previous
# @flag -h --help          output usage information
# @arg module-git! <module|git:/>
install() {
    :;
}
# }} pm2 install

# {{ pm2 module:update
# @cmd update a module and run it forever
# @flag -h --help    output usage information
# @arg module-git! <module|git:/>
module:update() {
    :;
}
# }} pm2 module:update

# {{ pm2 module:generate
# @cmd Generate a sample module in current folder
# @flag -h --help    output usage information
# @arg app_name
module:generate() {
    :;
}
# }} pm2 module:generate

# {{ pm2 uninstall
# @cmd stop and uninstall a module
# @alias module:uninstall
# @flag -h --help    output usage information
# @arg module!
uninstall() {
    :;
}
# }} pm2 uninstall

# {{ pm2 package
# @cmd Check & Package TAR type module
# @flag -h --help    output usage information
# @arg target
package() {
    :;
}
# }} pm2 package

# {{ pm2 publish
# @cmd Publish the module you are currently on
# @alias module:publish
# @flag --npm        publish on npm
# @flag -h --help    output usage information
# @arg dir!
publish() {
    :;
}
# }} pm2 publish

# {{ pm2 set
# @cmd sets the specified config <key> <value>
# @flag -h --help    output usage information
# @arg key
# @arg value
set() {
    :;
}
# }} pm2 set

# {{ pm2 multiset
# @cmd multiset eg "key1 val1 key2 val2
# @flag -h --help    output usage information
# @arg value!
multiset() {
    :;
}
# }} pm2 multiset

# {{ pm2 get
# @cmd get value for <key>
# @flag -h --help    output usage information
# @arg key
get() {
    :;
}
# }} pm2 get

# {{ pm2 conf
# @cmd get / set module config values
# @flag -h --help    output usage information
# @arg key
# @arg value
conf() {
    :;
}
# }} pm2 conf

# {{ pm2 config
# @cmd get / set module config values
# @flag -h --help    output usage information
# @arg key!
# @arg value
config() {
    :;
}
# }} pm2 config

# {{ pm2 unset
# @cmd clears the specified config <key>
# @flag -h --help    output usage information
# @arg key!
unset() {
    :;
}
# }} pm2 unset

# {{ pm2 report
# @cmd give a full pm2 report for https://github.com/Unitech/pm2/issues
# @flag -h --help    output usage information
report() {
    :;
}
# }} pm2 report

# {{ pm2 link
# @cmd link with the pm2 monitoring dashboard
# @option --info-node <url>    set url info node
# @flag -h --help              output usage information
# @arg secret
# @arg public
# @arg name
link() {
    :;
}
# }} pm2 link

# {{ pm2 unlink
# @cmd unlink with the pm2 monitoring dashboard
# @flag -h --help    output usage information
unlink() {
    :;
}
# }} pm2 unlink

# {{ pm2 monitor
# @cmd monitor target process
# @flag -h --help    output usage information
# @arg name[`_choice_name`]
monitor() {
    :;
}
# }} pm2 monitor

# {{ pm2 unmonitor
# @cmd unmonitor target process
# @flag -h --help    output usage information
# @arg name[`_choice_name`]
unmonitor() {
    :;
}
# }} pm2 unmonitor

# {{ pm2 open
# @cmd open the pm2 monitoring dashboard
# @flag -h --help    output usage information
open() {
    :;
}
# }} pm2 open

# {{ pm2 plus
# @cmd enable pm2 plus
# @alias register
# @option --info-node <url>    set url info node for on-premise pm2 plus
# @flag -d --discrete          silent mode
# @flag -a --install-all       install all modules (force yes)
# @flag -h --help              output usage information
# @arg command
plus() {
    :;
}
# }} pm2 plus

# {{ pm2 login
# @cmd Login to pm2 plus
# @flag -h --help    output usage information
login() {
    :;
}
# }} pm2 login

# {{ pm2 logout
# @cmd Logout from pm2 plus
# @flag -h --help    output usage information
logout() {
    :;
}
# }} pm2 logout

# {{ pm2 dump
# @cmd dump all processes for resurrecting them later
# @alias save
# @flag --force      force deletion of dump file, even if empty
# @flag -h --help    output usage information
dump() {
    :;
}
# }} pm2 dump

# {{ pm2 cleardump
# @cmd Create empty dump file
# @flag -h --help    output usage information
cleardump() {
    :;
}
# }} pm2 cleardump

# {{ pm2 send
# @cmd send stdin to <pm_id>
# @flag -h --help    output usage information
# @arg pm_id![`_choice_pm_id`]
# @arg line!
send() {
    :;
}
# }} pm2 send

# {{ pm2 attach
# @cmd attach stdin/stdout to application identified by <pm_id>
# @flag -h --help    output usage information
# @arg pm_id![`_choice_pm_id`]
# @arg comman
attach() {
    :;
}
# }} pm2 attach

# {{ pm2 resurrect
# @cmd resurrect previously dumped processes
# @flag -h --help    output usage information
resurrect() {
    :;
}
# }} pm2 resurrect

# {{ pm2 unstartup
# @cmd disable the pm2 startup hook
# @flag -h --help    output usage information
# @arg platform
unstartup() {
    :;
}
# }} pm2 unstartup

# {{ pm2 startup
# @cmd enable the pm2 startup hook
# @flag -h --help    output usage information
# @arg platform
startup() {
    :;
}
# }} pm2 startup

# {{ pm2 logrotate
# @cmd copy default logrotate configuration
# @flag -h --help    output usage information
logrotate() {
    :;
}
# }} pm2 logrotate

# {{ pm2 ecosystem
# @cmd generate a process conf file.
# @alias init
# @flag -h --help    output usage information
# @arg mode
ecosystem() {
    :;
}
# }} pm2 ecosystem

# {{ pm2 reset
# @cmd reset counters for process
# @flag -h --help    output usage information
# @arg target[`_choice_reset`]
reset() {
    :;
}
# }} pm2 reset

# {{ pm2 describe
# @cmd describe all parameters of a process
# @alias desc
# @flag -h --help    output usage information
# @arg name-id![`_choice_id_name`] <name|id>
describe() {
    :;
}
# }} pm2 describe

# {{ pm2 info
# @cmd (alias) describe all parameters of a process
# @alias show
# @flag -h --help    output usage information
# @arg name-id![`_choice_id_name`] <name|id>
info() {
    :;
}
# }} pm2 info

# {{ pm2 env
# @cmd list all environment variables of a process id
# @flag -h --help    output usage information
# @arg id![`_choice_pm_id`]
env() {
    :;
}
# }} pm2 env

# {{ pm2 list
# @cmd list all processes
# @alias ls,l,ps,status
# @flag -h --help    output usage information
list() {
    :;
}
# }} pm2 list

# {{ pm2 jlist
# @cmd list all processes in JSON format
# @flag -h --help    output usage information
jlist() {
    :;
}
# }} pm2 jlist

# {{ pm2 sysmonit
# @cmd start system monitoring daemon
# @flag -h --help    output usage information
sysmonit() {
    :;
}
# }} pm2 sysmonit

# {{ pm2 slist
# @cmd list system infos in JSON
# @alias sysinfos
# @flag -t --tree    show as tree
# @flag -h --help    output usage information
slist() {
    :;
}
# }} pm2 slist

# {{ pm2 prettylist
# @cmd print json in a prettified JSON
# @flag -h --help    output usage information
prettylist() {
    :;
}
# }} pm2 prettylist

# {{ pm2 monit
# @cmd launch termcaps monitoring
# @flag -h --help    output usage information
monit() {
    :;
}
# }} pm2 monit

# {{ pm2 imonit
# @cmd launch legacy termcaps monitoring
# @flag -h --help    output usage information
imonit() {
    :;
}
# }} pm2 imonit

# {{ pm2 dashboard
# @cmd launch dashboard with monitoring and logs
# @alias dash
# @flag -h --help    output usage information
dashboard() {
    :;
}
# }} pm2 dashboard

# {{ pm2 flush
# @cmd flush logs
# @flag -h --help    output usage information
# @arg api
flush() {
    :;
}
# }} pm2 flush

# {{ pm2 reloadLogs
# @cmd reload all logs
# @flag -h --help    output usage information
reloadLogs() {
    :;
}
# }} pm2 reloadLogs

# {{ pm2 logs
# @cmd stream logs file.
# @flag --json                    json log output
# @flag --format                  formated log output
# @flag --raw                     raw output
# @flag --err                     only shows error output
# @flag --out                     only shows standard output
# @option --lines <n>             output the last N lines, instead of the last 15 by default
# @option --timestamp <format>    add timestamps (default format YYYY-MM-DD-HH:mm:ss)
# @flag --nostream                print logs without launching the log stream
# @option --highlight <value>     highlights the given value
# @flag -h --help                 output usage information
# @arg target[`_choice_log`]
logs() {
    :;
}
# }} pm2 logs

# {{ pm2 kill
# @cmd kill daemon
# @flag -h --help    output usage information
kill() {
    :;
}
# }} pm2 kill

# {{ pm2 pull
# @cmd updates repository for a given app
# @flag -h --help    output usage information
# @arg name!
# @arg commit_id
pull() {
    :;
}
# }} pm2 pull

# {{ pm2 forward
# @cmd updates repository to the next commit for a given app
# @flag -h --help    output usage information
# @arg name![`_choice_name`]
forward() {
    :;
}
# }} pm2 forward

# {{ pm2 backward
# @cmd downgrades repository to the previous commit for a given app
# @flag -h --help    output usage information
# @arg name![`_choice_name`]
backward() {
    :;
}
# }} pm2 backward

# {{ pm2 deepUpdate
# @cmd performs a deep update of PM2
# @flag -h --help    output usage information
deepUpdate() {
    :;
}
# }} pm2 deepUpdate

# {{ pm2 serve
# @cmd serve a directory over http via port
# @alias expose
# @option --port <port>                       specify port to listen to
# @flag --spa                                 always serving index.html on inexistant sub path
# @option --basic-auth-username <username>    set basic auth username
# @option --basic-auth-password <password>    set basic auth password
# @option --monitor <frontend-app>            frontend app monitoring (auto integrate snippet on html files)
# @flag -h --help                             output usage information
# @arg path
# @arg port
serve() {
    :;
}
# }} pm2 serve

# {{ pm2 autoinstall
# @cmd
# @flag -h --help    output usage information
autoinstall() {
    :;
}
# }} pm2 autoinstall

# {{ pm2 examples
# @cmd display pm2 usage examples
# @flag -h --help    output usage information
examples() {
    :;
}
# }} pm2 examples

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_start() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_log
}

_choice_reload() {
    _choice_log
    echo all
}

_choice_name() {
    pm2 jlist | yq '.[].name'
}

_choice_stop() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_log
    echo all
}

_choice_id_name() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name, .[].name'
}

_choice_pm_id() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name'
}

_choice_reset() {
    _choice_id_name
    echo all
}

_choice_log() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name, .[].name, .[].pm2_env.namespace // ""'
}

_module_os_gid() {
    command cat /etc/group | gawk -F: '{print $3 "\t" $1}'
}

_module_os_uid() {
    command cat /etc/passwd | gawk -F: '{print $3 "\t" $1}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"