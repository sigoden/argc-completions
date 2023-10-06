#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -A --askpass                              use a helper program for password prompting
# @flag -b --background                           run command in the background
# @flag -B --bell                                 ring bell when prompting
# @option -C --close-from <num>                   close all file descriptors >= num
# @option -D --chdir <directory>                  change the working directory before running command
# @option -E --preserve-env[`_choice_env_var`]    preserve user environment when running command
# @flag -e --edit                                 edit files instead of running a command
# @option -g --group[`_module_os_group`] <group>  run command as the specified group name or ID
# @flag -H --set-home                             set HOME variable to target user's home dir
# @flag --help                                    display help message and exit
# @option -h --host <host>                        run command on host (if supported by plugin)
# @flag -i --login                                run login shell as the target user; a command may also be specified
# @flag -K --remove-timestamp                     remove timestamp file completely
# @flag -k --reset-timestamp                      invalidate timestamp file
# @flag -l --list                                 list user's privileges or check a specific command; use twice for longer format
# @flag -n --non-interactive                      non-interactive mode, no prompts are used
# @flag -P --preserve-groups                      preserve group vector instead of setting to target's
# @option -p --prompt <prompt>                    use the specified password prompt
# @option -R --chroot <directory>                 change the root directory before running command
# @option -r --role <role>                        create SELinux security context with specified role
# @flag -S --stdin                                read password from standard input
# @flag -s --shell                                run shell as the target user; a command may also be specified
# @option -t --type <type>                        create SELinux security context with specified type
# @option -T --command-timeout <timeout>          terminate command after the specified time limit
# @option -U --other-user[`_module_os_user`] <user>  in list mode, display privileges for user
# @option -u --user[`_module_os_user`] <user>     run command (or edit file) as specified user name or ID
# @flag -V --version                              display version information and exit
# @flag -v --validate                             update user's timestamp without running a command
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_env_var() {
    env | _argc_util_transform format== | _argc_util_comp_multi ,
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

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"