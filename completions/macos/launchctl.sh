#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ launchctl bootstrap
# @cmd Bootstraps a domain or a service into a domain.
bootstrap() {
    :;
}
# }} launchctl bootstrap

# {{ launchctl bootout
# @cmd Tears down a domain or removes a service from a domain.
bootout() {
    :;
}
# }} launchctl bootout

# {{ launchctl enable
# @cmd Enables an existing service.
enable() {
    :;
}
# }} launchctl enable

# {{ launchctl disable
# @cmd Disables an existing service.
disable() {
    :;
}
# }} launchctl disable

# {{ launchctl kickstart
# @cmd Forces an existing service to start.
# @flag -k    If the service is already running, kill the running instance before restarting the service.
# @flag -p    Upon success, print the PID of the new process or the already-running process to stdout.
kickstart() {
    :;
}
# }} launchctl kickstart

# {{ launchctl attach
# @cmd Attach the system's debugger to a service.
# @flag -k    If the service is already running, kill the running instance.
# @flag -s    Force the service to start.
# @flag -x    Attach to xpcproxy(3) before it execs and becomes the service process.
attach() {
    :;
}
# }} launchctl attach

# {{ launchctl debug
# @cmd Configures the next invocation of a service for debugging.
# @option --program <program-path>           Instructs launchd(8) to use program-path as the service's executable.
# @flag --guard-malloc                       Turns on libgmalloc(3) for the service.
# @flag --malloc-stack-logging               Turns on malloc(3) stack logging for the service.
# @flag --malloc-nano-allocator              Turns on the malloc(3) nano allocator for the service.
# @flag --debug-libraries                    Sets the DYLD_IMAGE_SUFFIX for the service to "_debug", which prefers the debug variants of libraries if they exist.
# @flag --introspection-libraries            Adds /usr/lib/system/introspection to the DYLD_LIBRARY_PATH environment variable for the service.
# @flag --NSZombie                           Enables NSZombie.
# @flag --32                                 Runs the service in the appropriate 32-bit architecture.
# @option --stdin <stdin-path>               Sets the service's standard input to be stdin-path.
# @option --stdout <stdout-path>             Sets the service's standard input to be stdout-path.
# @option --stderr <stderr-path>             Sets the service's standard input to be stderr-path.
# @option --environment <variable=value+>    Sets the given environment variables on the service.
debug() {
    :;
}
# }} launchctl debug

# {{ launchctl kill
# @cmd Sends a signal to the service instance.
kill() {
    :;
}
# }} launchctl kill

# {{ launchctl blame
# @cmd Prints the reason a service is running.
blame() {
    :;
}
# }} launchctl blame

# {{ launchctl print
# @cmd Prints a description of a domain or service.
print() {
    :;
}
# }} launchctl print

# {{ launchctl print-cache
# @cmd Prints information about the service cache.
print-cache() {
    :;
}
# }} launchctl print-cache

# {{ launchctl print-disabled
# @cmd Prints which services are disabled.
print-disabled() {
    :;
}
# }} launchctl print-disabled

# {{ launchctl plist
# @cmd Prints a property list embedded in a binary (targets the Info.plist by default).
plist() {
    :;
}
# }} launchctl plist

# {{ launchctl procinfo
# @cmd Prints port information about a process.
procinfo() {
    :;
}
# }} launchctl procinfo

# {{ launchctl hostinfo
# @cmd Prints port information about the host.
hostinfo() {
    :;
}
# }} launchctl hostinfo

# {{ launchctl resolveport
# @cmd Resolves a port name from a process to an endpoint in launchd.
resolveport() {
    :;
}
# }} launchctl resolveport

# {{ launchctl limit
# @cmd Reads or modifies launchd's resource limits.
limit() {
    :;
}
# }} launchctl limit

# {{ launchctl examine
# @cmd Runs the specified analysis tool against launchd in a non-reentrant manner.
examine() {
    :;
}
# }} launchctl examine

# {{ launchctl config
# @cmd Modifies persistent configuration parameters for launchd domains.
config() {
    :;
}
# }} launchctl config

# {{ launchctl dumpstate
# @cmd Dumps launchd state to stdout.
dumpstate() {
    :;
}
# }} launchctl dumpstate

# {{ launchctl dumpjpcategory
# @cmd Dumps the jetsam properties category for all services.
dumpjpcategory() {
    :;
}
# }} launchctl dumpjpcategory

# {{ launchctl reboot
# @cmd Initiates a system reboot of the specified type.
reboot() {
    :;
}
# }} launchctl reboot

# {{ launchctl bootshell
# @cmd Brings the system up from single-user mode with a console shell.
bootshell() {
    :;
}
# }} launchctl bootshell

# {{ launchctl load
# @cmd Recommended alternatives: bootstrap | enable.
# @flag -w                If the service is disabled, it will be enabled.
# @flag -F                Forcibly load the service.
# @option -S <session>    This flag takes a single argument which is the name of a session and may only be used when loading agents.
# @option -D <domain>     Loads launchd.plist(5) files from the specified domain.
load() {
    :;
}
# }} launchctl load

# {{ launchctl unload
# @cmd Recommended alternatives: bootout | disable.
# @flag -w                Additionally disables the service such that future load operations will result in a service which launchd tracks but cannot be launched or discovered in any way.
# @option -S <session>    Only unloads the services associated with the specified session.
# @option -D <domain>     Unloads launchd.plist(5) files from the specified domain.
unload() {
    :;
}
# }} launchctl unload

# {{ launchctl remove
# @cmd Unloads the specified service name.
# @arg label[`_choice_label`]
remove() {
    :;
}
# }} launchctl remove

# {{ launchctl list
# @cmd Lists information about services.
# @flag -x    This flag is no longer supported.
list() {
    :;
}
# }} launchctl list

# {{ launchctl start
# @cmd Starts the specified service.
# @arg label[`_choice_label`]
start() {
    :;
}
# }} launchctl start

# {{ launchctl stop
# @cmd Stops the specified service if it is running.
# @arg label[`_choice_label`]
stop() {
    :;
}
# }} launchctl stop

# {{ launchctl setenv
# @cmd Sets the specified environment variables for all services within the domain.
setenv() {
    :;
}
# }} launchctl setenv

# {{ launchctl unsetenv
# @cmd Unsets the specified environment variables for all services within the domain.
unsetenv() {
    :;
}
# }} launchctl unsetenv

# {{ launchctl getenv
# @cmd Gets the value of an environment variable from within launchd.
getenv() {
    :;
}
# }} launchctl getenv

# {{ launchctl bsexec
# @cmd Execute a program in another process' bootstrap context.
bsexec() {
    :;
}
# }} launchctl bsexec

# {{ launchctl asuser
# @cmd Execute a program in the bootstrap context of a given user.
asuser() {
    :;
}
# }} launchctl asuser

# {{ launchctl submit
# @cmd Submit a basic job from the command line.
# @option -l <label>          What unique label to assign this job to launchd.
# @option -p <program>        What program to really execute, regardless of what follows the -- in the submit sub-command.
# @option -o <stdout-path>    Where to send the stdout of the program.
# @option -e <stderr-path>    Where to send the stderr of the program.
submit() {
    :;
}
# }} launchctl submit

# {{ launchctl managerpid
# @cmd Prints the PID of the launchd controlling the session.
managerpid() {
    :;
}
# }} launchctl managerpid

# {{ launchctl manageruid
# @cmd Prints the UID of the current launchd session.
manageruid() {
    :;
}
# }} launchctl manageruid

# {{ launchctl managername
# @cmd Prints the name of the current launchd session.
managername() {
    :;
}
# }} launchctl managername

# {{ launchctl error
# @cmd Prints a description of an error.
error() {
    :;
}
# }} launchctl error

# {{ launchctl variant
# @cmd Prints the launchd variant.
variant() {
    :;
}
# }} launchctl variant

# {{ launchctl version
# @cmd Prints the launchd version.
version() {
    :;
}
# }} launchctl version

_choice_label() {
    launchctl list | gawk '{if (NR>1) { print $3 }}'
}

command eval "$(argc --argc-eval "$0" "$@")"