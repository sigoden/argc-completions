#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ snap find
# @cmd Find packages to install
# @flag --private                         Search private snaps.
# @flag --narrow                          Only search for snaps in “stable”.
# @option --section                       Restrict the search to a given section.
# @option --color[auto|never|always]      Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @arg query*
find() {
    :;
}
# }} snap find

# {{ snap info
# @cmd Show detailed information about snaps
# @option --color[auto|never|always]      Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @flag --abs-time                        Display absolute times (in RFC 3339 format).
# @flag --verbose                         Include more details on the snap (expanded notes, base, etc.)
# @arg snap+[`_choice_installed_snap`]
info() {
    :;
}
# }} snap info

# {{ snap install
# @cmd Install snaps on the system
# @option --color[auto|never|always]            Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]          Use a little bit of Unicode to improve legibility.
# @flag --no-wait                               Do not wait for the operation to finish but just print the change id.
# @option --channel                             Use this channel instead of stable
# @flag --edge                                  Install from the edge channel
# @flag --beta                                  Install from the beta channel
# @flag --candidate                             Install from the candidate channel
# @flag --stable                                Install from the stable channel
# @flag --devmode                               Put snap in development mode and disable security confinement
# @flag --jailmode                              Put snap in enforced confinement mode
# @flag --classic                               Put snap in classic mode and disable security confinement
# @option --revision                            Install the given revision of a snap, to which you must have developer access
# @flag --dangerous                             Install the given snap file even if there are no pre-acknowledged signatures for it, meaning it was not verified and could be dangerous (--devmode implies this)
# @flag --unaliased                             Install the given snap without enabling its automatic aliases
# @option --name                                Install the snap file under the given instance name
# @option --cohort                              Install the snap in the given cohort
# @flag --ignore-validation                     Ignore validation by other snaps blocking the installation
# @option --transaction <all-snaps|per-snap>    Have one transaction per-snap or one for all the specified snaps (default: per-snap)
# @option --quota-group                         Add the snap to a quota group on install
# @arg snap+
install() {
    :;
}
# }} snap install

# {{ snap remove
# @cmd Remove snaps from the system
# @flag --no-wait       Do not wait for the operation to finish but just print the change id.
# @option --revision    Remove only the given revision
# @flag --purge         Remove the snap without saving a snapshot of its data
# @arg snap+[`_choice_installed_snap`]
remove() {
    :;
}
# }} snap remove

# {{ snap list
# @cmd List installed snaps
# @flag --all                             Show all revisions
# @option --color[auto|never|always]      Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @arg snap*[`_choice_installed_snap`]
list() {
    :;
}
# }} snap list

# {{ snap refresh
# @cmd Refresh snaps in the system
# @option --color[auto|never|always]            Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]          Use a little bit of Unicode to improve legibility.
# @flag --abs-time                              Display absolute times (in RFC 3339 format).
# @flag --no-wait                               Do not wait for the operation to finish but just print the change id.
# @option --channel                             Use this channel instead of stable
# @flag --edge                                  Install from the edge channel
# @flag --beta                                  Install from the beta channel
# @flag --candidate                             Install from the candidate channel
# @flag --stable                                Install from the stable channel
# @flag --devmode                               Put snap in development mode and disable security confinement
# @flag --jailmode                              Put snap in enforced confinement mode
# @flag --classic                               Put snap in classic mode and disable security confinement
# @flag --amend                                 Allow refresh attempt on snap unknown to the store
# @option --revision                            Refresh to the given revision, to which you must have developer access
# @option --cohort                              Refresh the snap into the given cohort
# @flag --leave-cohort                          Refresh the snap out of its cohort
# @flag --list                                  Show the new versions of snaps that would be updated with the next refresh
# @flag --time                                  Show auto refresh information but do not perform a refresh
# @flag --ignore-validation                     Ignore validation by other snaps blocking the refresh
# @option --transaction <all-snaps|per-snap>    Have one transaction per-snap or one for all the specified snaps (default: per-snap)
# @option --hold                                Hold refreshes for a specified duration (or forever, if no value is specified)
# @flag --unhold                                Remove refresh hold
# @arg snap*[`_choice_installed_snap`]
refresh() {
    :;
}
# }} snap refresh

# {{ snap revert
# @cmd Reverts the given snap to the previous state
# @flag --no-wait       Do not wait for the operation to finish but just print the change id.
# @flag --devmode       Put snap in development mode and disable security confinement
# @flag --jailmode      Put snap in enforced confinement mode
# @flag --classic       Put snap in classic mode and disable security confinement
# @option --revision    Revert to the given revision
# @arg snap![`_choice_installed_snap`]
revert() {
    :;
}
# }} snap revert

# {{ snap switch
# @cmd Switches snap to a different channel
# @flag --no-wait         Do not wait for the operation to finish but just print the change id.
# @option --channel       Use this channel instead of stable
# @flag --edge            Install from the edge channel
# @flag --beta            Install from the beta channel
# @flag --candidate       Install from the candidate channel
# @flag --stable          Install from the stable channel
# @option --cohort        Switch the snap into the given cohort
# @flag --leave-cohort    Switch the snap out of its cohort
# @arg snap![`_choice_installed_snap`]
switch() {
    :;
}
# }} snap switch

# {{ snap disable
# @cmd Disable a snap in the system
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg snap![`_choice_enabled_snap`]
disable() {
    :;
}
# }} snap disable

# {{ snap enable
# @cmd Enable a snap in the system
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg snap![`_choice_disabled_snap`]
enable() {
    :;
}
# }} snap enable

# {{ snap create-cohort
# @cmd Create cohort keys for a set of snaps
# @arg snap+[`_choice_installed_snap`]
create-cohort() {
    :;
}
# }} snap create-cohort

# {{ snap changes
# @cmd List system changes
# @flag --abs-time    Display absolute times (in RFC 3339 format).
# @arg snap[`_choice_installed_snap`]
changes() {
    :;
}
# }} snap changes

# {{ snap tasks
# @cmd List a change's tasks
# @flag --abs-time    Display absolute times (in RFC 3339 format).
# @option --last      Select last change of given type (install, refresh, remove, try, auto-refresh, etc.).
# @arg change-id[`_choice_change`] <<change-id>:>  Change ID
tasks() {
    :;
}
# }} snap tasks

# {{ snap abort
# @cmd Abort a pending change
# @option --last    Select last change of given type (install, refresh, remove, try, auto-refresh, etc.).
# @arg change-id[`_choice_change`] <<change-id>:>  Change ID
abort() {
    :;
}
# }} snap abort

# {{ snap watch
# @cmd Watch a change in progress
# @option --last    Select last change of given type (install, refresh, remove, try, auto-refresh, etc.).
# @arg change-id[`_choice_change`] <<change-id>:>  Change ID
watch() {
    :;
}
# }} snap watch

# {{ snap services
# @cmd Query the status of services
# @arg service[`_choice_service`] <<service>:>    A service specification, which can be just a snap name (for all services in the snap), or <snap>.<app> for a single service.
services() {
    :;
}
# }} snap services

# {{ snap start
# @cmd Start services
# @flag --no-wait                                 Do not wait for the operation to finish but just print the change id.
# @flag --enable                                  As well as starting the service now, arrange for it to be started on boot.
# @arg service[`_choice_service`] <<service>:>    A service specification, which can be just a snap name (for all services in the snap), or <snap>.<app> for a single service.
start() {
    :;
}
# }} snap start

# {{ snap stop
# @cmd Stop services
# @flag --no-wait                                 Do not wait for the operation to finish but just print the change id.
# @flag --disable                                 As well as stopping the service now, arrange for it to no longer be started on boot.
# @arg service[`_choice_service`] <<service>:>    A service specification, which can be just a snap name (for all services in the snap), or <snap>.<app> for a single service.
stop() {
    :;
}
# }} snap stop

# {{ snap restart
# @cmd Restart services
# @flag --no-wait                                 Do not wait for the operation to finish but just print the change id.
# @flag --reload                                  If the service has a reload command, use it instead of restarting.
# @arg service[`_choice_service`] <<service>:>    A service specification, which can be just a snap name (for all services in the snap), or <snap>.<app> for a single service.
restart() {
    :;
}
# }} snap restart

# {{ snap logs
# @cmd Retrieve logs for services
# @option -n                                      Show only the given number of lines, or 'all'.
# @flag -f                                        Wait for new lines and print them as they come in.
# @arg service[`_choice_service`] <<service>:>    A service specification, which can be just a snap name (for all services in the snap), or <snap>.<app> for a single service.
logs() {
    :;
}
# }} snap logs

# {{ snap connections
# @cmd List interface connections
# @flag --all                                      Show connected and unconnected plugs and slots
# @arg snap[`_choice_installed_snap`] <<snap>:>    Constrain listing to a specific snap
connections() {
    :;
}
# }} snap connections

# {{ snap interface
# @cmd Show details of snap interfaces
# @flag --attrs    Show interface attributes
# @flag --all      Include unused interfaces
# @arg interface[`_choice_interface`] <<interface>:>  Show details of a specific interface
interface() {
    :;
}
# }} snap interface

# {{ snap connect
# @cmd Connect a plug to a slot
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg snap-plug[`_choice_snap_plug`] <<snap>:<plug>>
# @arg snap-slot[`_choice_snap_slot`] <<snap>:<slot>>
connect() {
    :;
}
# }} snap connect

# {{ snap disconnect
# @cmd Disconnect a plug from a slot
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @flag --forget     Forget remembered state about the given connection.
# @arg snap-plug[`_choice_snap_plug`] <<snap>:<plug>>
# @arg snap-slot[`_choice_snap_slot`] <<snap>:<slot>>
disconnect() {
    :;
}
# }} snap disconnect

# {{ snap get
# @cmd Print configuration options
# @flag -t                                         Strict typing with nulls and quoted strings
# @flag -d                                         Always return document, even with single key
# @flag -l                                         Always return list, even with single key
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap whose conf is being requested
# @arg key <<key>:>                                Key of interest within the configuration
get() {
    :;
}
# }} snap get

# {{ snap set
# @cmd Change configuration options
# @flag -t                                         Parse the value strictly as JSON document
# @flag -s                                         Parse the value as a string
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap to configure (e.g. hello-world)
# @arg conf-value <<conf value>:>                  Set (key=value) or unset (key!) configuration value
set() {
    :;
}
# }} snap set

# {{ snap unset
# @cmd Remove configuration options
# @flag --no-wait                                  Do not wait for the operation to finish but just print the change id.
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap to configure (e.g. hello-world)
# @arg conf-key <<conf key>:>                      Configuration key to unset
unset() {
    :;
}
# }} snap unset

# {{ snap wait
# @cmd Wait for configuration
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap for which configuration will be checked
# @arg key <<key>:>                                Key of interest within the configuration
wait() {
    :;
}
# }} snap wait

# {{ snap alias
# @cmd Set up a manual alias
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg snap-app! <snap.app>
# @arg alias!
alias() {
    :;
}
# }} snap alias

# {{ snap aliases
# @cmd List aliases in the system
# @arg snap[`_choice_installed_snap`]
aliases() {
    :;
}
# }} snap aliases

# {{ snap unalias
# @cmd Remove a manual alias, or the aliases for an entire snap
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg alias-or-snap![`_choice_alias_or_snap`]
unalias() {
    :;
}
# }} snap unalias

# {{ snap prefer
# @cmd Enable aliases from a snap, disabling any conflicting aliases
# @flag --no-wait    Do not wait for the operation to finish but just print the change id.
# @arg snap![`_choice_installed_snap`]
prefer() {
    :;
}
# }} snap prefer

# {{ snap login
# @cmd Authenticate to snapd and the store
# @arg email <<email>:>    The login.ubuntu.com email to login as
login() {
    :;
}
# }} snap login

# {{ snap logout
# @cmd Log out of snapd and the store
logout() {
    :;
}
# }} snap logout

# {{ snap whoami
# @cmd Show the email the user is logged in with
whoami() {
    :;
}
# }} snap whoami

# {{ snap saved
# @cmd List currently stored snapshots
# @flag --abs-time    Display absolute times (in RFC 3339 format).
# @option --id        Show only a specific snapshot.
# @arg snap*[`_choice_installed_snap`]
saved() {
    :;
}
# }} snap saved

# {{ snap save
# @cmd Save a snapshot of the current data
# @flag --no-wait     Do not wait for the operation to finish but just print the change id.
# @flag --abs-time    Display absolute times (in RFC 3339 format).
# @option --users     Snapshot data of only specific users (comma-separated) (default: all users)
# @arg snap*[`_choice_installed_snap`]
save() {
    :;
}
# }} snap save

# {{ snap check-snapshot
# @cmd Check a snapshot
# @flag --no-wait                                  Do not wait for the operation to finish but just print the change id.
# @option --users                                  Check data of only specific users (comma-separated) (default: all users)
# @arg id <<id>:>                                  Set id of snapshot to verify (see 'snap help saved')
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap for which data will be verified
check-snapshot() {
    :;
}
# }} snap check-snapshot

# {{ snap restore
# @cmd Restore a snapshot
# @flag --no-wait                                  Do not wait for the operation to finish but just print the change id.
# @option --users                                  Restore data of only specific users (comma-separated) (default: all users)
# @arg id <<id>:>                                  Set id of snapshot to restore (see 'snap help saved')
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap for which data will be restored
restore() {
    :;
}
# }} snap restore

# {{ snap forget
# @cmd Delete a snapshot
# @flag --no-wait                                  Do not wait for the operation to finish but just print the change id.
# @arg id <<id>:>                                  Set id of snapshot to delete (see 'snap help saved')
# @arg snap[`_choice_installed_snap`] <<snap>:>    The snap for which data will be deleted
forget() {
    :;
}
# }} snap forget

# {{ snap export-snapshot
# @cmd Export a snapshot
# @arg id <<id>:>                Set id of snapshot to export
# @arg filename <<filename>:>    The filename of the export
export-snapshot() {
    :;
}
# }} snap export-snapshot

# {{ snap import-snapshot
# @cmd Import a snapshot
# @flag --abs-time
# @arg filename <<filename>:>    Name of the snapshot export file to use
import-snapshot() {
    :;
}
# }} snap import-snapshot

# {{ snap model
# @cmd Get the active model for this device
# @flag --abs-time                        Display absolute times (in RFC 3339 format).
# @option --color[auto|never|always]      Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @flag --serial                          Print the serial assertion instead of the model assertion.
# @flag --verbose                         Print all specific assertion fields.
# @flag --assertion                       Print the raw assertion.
model() {
    :;
}
# }} snap model

# {{ snap reboot
# @cmd Reboot into selected system and mode
# @flag --run              Boot into run mode
# @flag --install          Boot into install mode
# @flag --recover          Boot into recover mode
# @flag --factory-reset    Boot into factory-reset mode
# @arg label <<label>:>    The recovery system label
reboot() {
    :;
}
# }} snap reboot

# {{ snap recovery
# @cmd List available recovery systems
# @option --color[auto|never|always]      Use a little bit of color to highlight some things.
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @flag --show-keys                       Show recovery keys (if available) to unlock encrypted partitions.
recovery() {
    :;
}
# }} snap recovery

# {{ snap warnings
# @cmd List warnings
# @flag --abs-time                        Display absolute times (in RFC 3339 format).
# @option --unicode[auto|never|always]    Use a little bit of Unicode to improve legibility.
# @flag --all                             Show all warnings
# @flag --verbose                         Show more information
warnings() {
    :;
}
# }} snap warnings

# {{ snap okay
# @cmd Acknowledge warnings
okay() {
    :;
}
# }} snap okay

# {{ snap known
# @cmd Show known assertions of the provided type
# @flag --remote                             Query the store for the assertion, via snapd if possible
# @flag --direct                             Query the store for the assertion, without attempting to go via snapd
# @arg assertion-type <<assertion type>:>    Assertion type name
# @arg header-filter <<header filter>:>      Constrain listing to those matching header=value
known() {
    :;
}
# }} snap known

# {{ snap ack
# @cmd Add an assertion to the system
# @arg assertion-file <<assertion file>:>    Assertion file
ack() {
    :;
}
# }} snap ack

# {{ snap version
# @cmd Show version details
version() {
    :;
}
# }} snap version

# {{ snap debug
# @cmd Run debug commands
debug() {
    :;
}

# {{{ snap debug confinement
# @cmd Print the confinement mode the system operates in
debug::confinement() {
    :;
}
# }}} snap debug confinement

# {{{ snap debug connectivity
# @cmd Check network connectivity status
debug::connectivity() {
    :;
}
# }}} snap debug connectivity

# {{{ snap debug migrate-home
# @cmd Migrate snaps' directory to ~/Snap.
# @flag --no-wait
# @arg snap+[`_choice_installed_snap`]
debug::migrate-home() {
    :;
}
# }}} snap debug migrate-home

# {{{ snap debug paths
# @cmd Print system paths
debug::paths() {
    :;
}
# }}} snap debug paths

# {{{ snap debug sandbox-features
# @cmd Print sandbox features available on the system
# @option --required    Ensure that given backend:feature is available
debug::sandbox-features() {
    :;
}
# }}} snap debug sandbox-features

# {{{ snap debug stacktraces
# @cmd Obtain stacktraces of all snapd goroutines
debug::stacktraces() {
    :;
}
# }}} snap debug stacktraces

# {{{ snap debug state
# @cmd Inspect a snapd state file.
# @flag --abs-time        Display absolute times (in RFC 3339 format).
# @flag --changes         List all changes
# @option --task          ID of the task to inspect
# @option --change        ID of the change to inspect
# @flag --check           Check change consistency
# @flag --connections     List all connections
# @option --connection    Show details of the matching connections (snap or snap:plug,snap:slot or snap:plug-or-slot
# @flag --is-seeded       Output seeding status (true or false)
# @flag --dot             Dot (graphviz) output
# @flag --no-hold         Omit tasks in 'Hold' state in the change output
# @arg state-file
debug::state() {
    :;
}
# }}} snap debug state

# {{{ snap debug timings
# @cmd Get the timings of the tasks of a change
# @option --last     Select last change of given type (install, refresh, remove, try, auto-refresh, etc.).
# @option --ensure[auto-refresh|become-operational|refresh-catalogs|refresh-hints|seed] <auto-refresh|become-operational|refresh-catalogs|refresh-hints|seed|install-system>  Show timings for a change related to the given Ensure activity
# @flag --all        Show timings for all executions of the given Ensure or startup activity, not just the latest
# @option --startup[load-state|ifacemgr] <load-state|ifacemgr>  Show timings for the startup of given subsystem
# @flag --verbose    Show more information
# @arg change-id[`_choice_change`] <<change-id>:>  Change ID
debug::timings() {
    :;
}
# }}} snap debug timings
# }} snap debug

# {{ snap download
# @cmd Download the given snap
# @option --channel                                Use this channel instead of stable
# @flag --edge                                     Install from the edge channel
# @flag --beta                                     Install from the beta channel
# @flag --candidate                                Install from the candidate channel
# @flag --stable                                   Install from the stable channel
# @option --revision                               Download the given revision of a snap, to which you must have developer access
# @option --basename                               Use this basename for the snap and assertion files (defaults to <snap>_<revision>)
# @option --target-directory                       Download to this directory (defaults to the current directory)
# @option --cohort                                 Download from the given cohort
# @arg snap[`_choice_installed_snap`] <<snap>:>    Snap name
download() {
    :;
}
# }} snap download

# {{ snap pack
# @cmd Pack the given directory as a snap
# @flag --check-skeleton    Validate snap-dir metadata only
# @option --filename        Output to this filename (default: <name>_<version>_<architecture>.snap)
# @option --compression     Compression to use (e.g. xz or lzo)
# @arg snap-dir
# @arg target-dir
pack() {
    :;
}
# }} snap pack

# {{ snap run
# @cmd Run the given snap command
# @flag --shell          Run a shell instead of the command (useful for debugging)
# @flag --debug-log      Enable debug logging during early snap startup phases
# @option --strace       Run the command under strace (useful for debugging).
# @option --gdbserver    Run the command with gdbserver (default: no-gdbserver)
# @flag --trace-exec     Display exec calls timing data
# @arg name-of-snap-name-of-app <<NAME-OF-SNAP>.<NAME-OF-APP>>
# @arg snap-app-arg*
run() {
    :;
}
# }} snap run

# {{ snap try
# @cmd Test an unpacked snap in the system
# @flag --no-wait     Do not wait for the operation to finish but just print the change id.
# @flag --devmode     Put snap in development mode and disable security confinement
# @flag --jailmode    Put snap in enforced confinement mode
# @flag --classic     Put snap in classic mode and disable security confinement
# @arg snap-dir
try() {
    :;
}
# }} snap try

# {{ snap prepare-image
# @cmd Prepare a device image
# @flag --classic                              Enable classic mode to prepare a classic model image
# @flag --preseed                              Preseed (UC20+ only)
# @option --preseed-sign-key                   Name of the key to use to sign preseed assertion, otherwise use the default key
# @option --apparmor-features-dir              Optional path to apparmor kernel features directory (UC20+ only)
# @option --sysfs-overlay                      Optional sysfs overlay to be used when running preseeding steps
# @option --arch                               Specify an architecture for snaps for --classic when the model does not
# @option --channel                            The channel to use
# @option --snap <<snap>[=<channel>]>          Include the given snap from the store or a local file and/or specify the channel to track for the given snap
# @arg model-assertion <<model-assertion>:>    The model assertion name
# @arg target-dir <<target-dir>:>              The target directory
prepare-image() {
    :;
}
# }} snap prepare-image

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_installed_snap() {
    snap list | gawk '{ if (NR>1) { print $1 } }'
}

_choice_enabled_snap() {
    snap list | gawk '!/disabled|Name/ {print $1}'
}

_choice_disabled_snap() {
    snap list | gawk '/disabled/ {print $1}'
}

_choice_change() {
    snap changes | _argc_util_transform_table 'ID;Summary' '\t'
}

_choice_service() {
    snap services | tail -n +2 | gawk '{gsub(/\.server$/, "", $1); print $1}'
}

_choice_interface() {
    snap interface | _argc_util_transform_table 'Name;Summary' '\t'
}

_choice_snap_plug() {
    snap connections --all | _argc_util_transform_table 'Plug' | sed '/^-$/ d'
}

_choice_snap_slot() {
    snap connections --all | _argc_util_transform_table 'Slot' | sed '/^-$/ d'
}

_choice_alias_or_snap() {
    snap aliases | _argc_util_transform_table 'Command;Alias' '\n'
}

command eval "$(argc --argc-eval "$0" "$@")"