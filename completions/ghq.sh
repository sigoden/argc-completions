#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       show help
# @flag -v --version    print the version

# {{ ghq get
# @cmd Clone/sync with a remote repository
# @flag -u --update               Update local repository if cloned already (default: false)
# @flag -p                        Clone with SSH (default: false)
# @flag --shallow                 Do a shallow clone (default: false)
# @flag -l --look                 Look after get (default: false)
# @option --vcs <vcs>             Specify vcs backend for cloning
# @flag -s --silent               clone or update silently (default: false)
# @flag --no-recursive            prevent recursive fetching (default: false)
# @option -b --branch <branch>    Specify branch name.
# @flag -P --parallel             Import parallelly (default: false)
# @flag --bare                    Do a bare clone (default: false)
# @flag -h --help                 show help
# @arg repository-url-project-user-project-host-user-project <<repository URL>|<project>|<user>/<project>|<host>/<user>/<project>>
get() {
    :;
}
# }} ghq get

# {{ ghq list
# @cmd List local repositories
# @flag -e --exact        Perform an exact match (default: false)
# @option --vcs <vcs>     Specify vcs backend for matching
# @flag -p --full-path    Print full paths (default: false)
# @flag --unique          Print unique subpaths (default: false)
# @flag -h --help         show help
# @arg query
list() {
    :;
}
# }} ghq list

# {{ ghq root
# @cmd Show repositories' root
# @flag --all        Show all roots (default: false)
# @flag -h --help    show help
root() {
    :;
}
# }} ghq root

# {{ ghq create
# @cmd Create a new repository
# @option --vcs <vcs>    Specify vcs backend explicitly
# @flag -h --help        show help
# @arg project-user-project-host-user-project <<project>|<user>/<project>|<host>/<user>/<project>>
create() {
    :;
}
# }} ghq create

command eval "$(argc --argc-eval "$0" "$@")"