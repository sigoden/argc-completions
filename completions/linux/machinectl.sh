#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                      Show this help
# @flag --version                      Show package version
# @flag --no-pager                     Do not pipe output into a pager
# @flag --no-legend                    Do not show the headers and footers
# @flag --no-ask-password              Do not ask for system passwords
# @option -H --host <[USER@]HOST>      Operate on remote host
# @option -M --machine <CONTAINER>     Operate on local container
# @option -p --property <NAME>         Show only properties by this name
# @flag -q --quiet                     Suppress output
# @flag -a --all                       Show all properties, including empty ones
# @flag --value                        When showing properties, only print the value
# @flag -l --full                      Do not ellipsize output
# @option --kill-who <WHO>             Who to send signal to
# @option -s --signal                  Which signal to send
# @option --uid <USER>                 Specify user ID to invoke shell as
# @option -E --setenv <VAR=VALUE>      Add an environment variable for shell
# @flag --read-only                    Create read-only bind mount
# @flag --mkdir                        Create directory before bind mounting, if missing
# @option -n --lines <INTEGER>         Number of journal entries to show
# @option --max-addresses <INTEGER>    Number of internet addresses to show at most
# @option -o --output[short|short-precise|short-iso|short-iso-precise|short-full|short-monotonic|short-unix|verbose|export|json|json-pretty|json-sse|json-seq|cat|with-unit] <STRING>  Change journal output mode
# @option --verify[no|checksum|signature] <MODE>  Verification mode for downloaded images
# @flag --force                        Download image even if already exists

# {{ machinectl list
# @cmd List running VMs and containers
list() {
    :;
}
# }} machinectl list

# {{ machinectl status
# @cmd Show VM/container details
# @arg name*[`_choice_machine`]
status() {
    :;
}
# }} machinectl status

# {{ machinectl show
# @cmd Show properties of one or more VMs/containers
# @arg name*[`_choice_machine`]
show() {
    :;
}
# }} machinectl show

# {{ machinectl start
# @cmd Start container as a service
# @arg name*[`_choice_machine`]
start() {
    :;
}
# }} machinectl start

# {{ machinectl login
# @cmd Get a login prompt in a container or on the local host
# @arg name[`_choice_machine`]
login() {
    :;
}
# }} machinectl login

# {{ machinectl shell
# @cmd Invoke a shell (or other command) in a container or on the local host
# @arg name[`_choice_machine`]
# @arg command~[`_choice_shell_command`]
shell() {
    :;
}
# }} machinectl shell

# {{ machinectl enable
# @cmd Enable automatic container start at boot
# @arg name*[`_choice_machine`]
enable() {
    :;
}
# }} machinectl enable

# {{ machinectl disable
# @cmd Disable automatic container start at boot
# @arg name*[`_choice_machine`]
disable() {
    :;
}
# }} machinectl disable

# {{ machinectl poweroff
# @cmd Power off one or more containers
# @arg name*[`_choice_machine`]
poweroff() {
    :;
}
# }} machinectl poweroff

# {{ machinectl reboot
# @cmd Reboot one or more containers
# @arg name*
reboot() {
    :;
}
# }} machinectl reboot

# {{ machinectl terminate
# @cmd Terminate one or more VMs/containers
# @arg name*[`_choice_machine`]
terminate() {
    :;
}
# }} machinectl terminate

# {{ machinectl kill
# @cmd Send signal to processes of a VM/container
# @arg name*[`_choice_machine`]
kill() {
    :;
}
# }} machinectl kill

# {{ machinectl copy-to
# @cmd Copy files from the host to a container
# @arg name[`_choice_machine`]
# @arg path
copy-to() {
    :;
}
# }} machinectl copy-to

# {{ machinectl copy-from
# @cmd Copy files from a container to the host
# @arg name[`_choice_machine`]
# @arg path
copy-from() {
    :;
}
# }} machinectl copy-from

# {{ machinectl bind
# @cmd Bind mount a path from the host into a container
# @arg name[`_choice_machine`]
# @arg path
bind() {
    :;
}
# }} machinectl bind

# {{ machinectl list-images
# @cmd Show available container and VM images
list-images() {
    :;
}
# }} machinectl list-images

# {{ machinectl image-status
# @cmd Show image details
# @arg name*[`_choice_image`]
image-status() {
    :;
}
# }} machinectl image-status

# {{ machinectl show-image
# @cmd Show properties of image
# @arg name*[`_choice_image`]
show-image() {
    :;
}
# }} machinectl show-image

# {{ machinectl clone
# @cmd Clone an image
# @arg name[`_choice_image`]
clone() {
    :;
}
# }} machinectl clone

# {{ machinectl rename
# @cmd Rename an image
# @arg name[`_choice_image`]
rename() {
    :;
}
# }} machinectl rename

# {{ machinectl read-only
# @cmd Mark or unmark image read-only
# @arg name[`_choice_image`]
# @arg bool
read-only() {
    :;
}
# }} machinectl read-only

# {{ machinectl remove
# @cmd Remove an image
# @arg name*[`_choice_image`]
remove() {
    :;
}
# }} machinectl remove

# {{ machinectl set-limit
# @cmd Set image or pool size limit (disk quota)
# @arg name[`_choice_image`]
# @arg bytes*
set-limit() {
    :;
}
# }} machinectl set-limit

# {{ machinectl clean
# @cmd Remove hidden (or all) images
clean() {
    :;
}
# }} machinectl clean

# {{ machinectl pull-tar
# @cmd Download a TAR container image
# @arg url
# @arg name[`_choice_image`]
pull-tar() {
    :;
}
# }} machinectl pull-tar

# {{ machinectl pull-raw
# @cmd Download a RAW container or VM image
# @arg url
# @arg name[`_choice_image`]
pull-raw() {
    :;
}
# }} machinectl pull-raw

# {{ machinectl import-tar
# @cmd Import a local TAR container image
# @arg file
# @arg name[`_choice_image`]
import-tar() {
    :;
}
# }} machinectl import-tar

# {{ machinectl import-raw
# @cmd Import a local RAW container or VM image
# @arg file
# @arg name[`_choice_image`]
import-raw() {
    :;
}
# }} machinectl import-raw

# {{ machinectl import-fs
# @cmd Import a local directory container image
# @arg directory
# @arg name[`_choice_image`]
import-fs() {
    :;
}
# }} machinectl import-fs

# {{ machinectl export-tar
# @cmd Export a TAR container image locally
# @arg name[`_choice_image`]
# @arg file
export-tar() {
    :;
}
# }} machinectl export-tar

# {{ machinectl export-raw
# @cmd Export a RAW container or VM image locally
# @arg name[`_choice_image`]
# @arg file
export-raw() {
    :;
}
# }} machinectl export-raw

# {{ machinectl list-transfers
# @cmd Show list of downloads in progress
list-transfers() {
    :;
}
# }} machinectl list-transfers

# {{ machinectl cancel-transfer
# @cmd Cancel a download
cancel-transfer() {
    :;
}
# }} machinectl cancel-transfer

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_machine() {
    machinectl --no-legend --no-pager list | \
    sed -n 's/^\(\S\+\).*$/\1/p'
}

_choice_shell_command() {
    if [[ "${#argc__positionals[@]}" -lt 3 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 1
    fi
}

_choice_image() {
    machinectl --no-legend --no-pager list-images | \
    sed -n 's/^\(\S\+\).*$/\1/p'
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