#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --mount <file>             unshare mounts namespace
# @option -u --uts <file>               unshare UTS namespace (hostname etc)
# @option -i --ipc <file>               unshare System V IPC namespace
# @option -n --net <file>               unshare network namespace
# @option -p --pid <file>               unshare pid namespace
# @option -U --user <file>              unshare user namespace
# @option -C --cgroup <file>            unshare cgroup namespace
# @option -T --time <file>              unshare time namespace
# @flag -f --fork                       fork before launching <program>
# @option --map-user <<uid>|<name>>     map current user to uid (implies --user)
# @option --map-group <<gid>|<name>>    map current group to gid (implies --user)
# @flag -r --map-root-user              map current user to root (implies --user)
# @flag -c --map-current-user           map current user to itself (implies --user)
# @option --kill-child <signame>        when dying, kill the forked child (implies --fork) defaults to SIGKILL
# @option --mount-proc <dir>            mount proc filesystem first (implies --mount)
# @option --propagation[slave|shared|private|unchanged]  modify mount propagation in mount namespace
# @option --setgroups <allow|deny>      control the setgroups syscall in user namespaces
# @flag --keep-caps                     retain capabilities granted in user namespaces
# @option -R --root <dir>               run the command with root directory set to <dir>
# @option -w --wd <dir>                 change working directory to <dir>
# @option -S --setuid <uid>             set uid in entered namespace
# @option -G --setgid <gid>             set gid in entered namespace
# @option --monotonic <offset>          set clock monotonic offset (seconds) in time namespaces
# @option --boottime <offset>           set clock boottime offset (seconds) in time namespaces
# @flag -h --help                       display this help
# @flag -V --version                    display version
# @arg program[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"