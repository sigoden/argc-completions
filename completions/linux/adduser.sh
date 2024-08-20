#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --conf <FILE>                  Use FILE instead of /etc/adduser.conf.
# @flag --disabled-login                 Do not run passwd to set the password.
# @flag --disabled-password              Like --disabled-login, but logins are still possible (for example using SSH RSA keys) but not using password authentication.
# @flag --force-badname                  By default, user and group names are checked against the configurable regular expression NAME_REGEX (or NAME_REGEX_SYSTEM if --system is specified) specified in the configuration file.
# @option --gecos                        Set the gecos field for the new entry generated.
# @option --gid <ID>                     When creating a group, this option forces the new groupid to be the given number.
# @flag --group                          When combined with --system, a group with the same name and ID as the system user is created.
# @flag --help                           Display brief instructions.
# @option --home <DIR>                   Use DIR as the user's home directory, rather than the default specified by the configuration file.
# @option --shell[`_module_os_shell`]    Use SHELL as the user's login shell, rather than the default specified by the configuration file.
# @option --ingroup <GROUP>              Add the new user to GROUP instead of a usergroup or the default group defined by USERS_GID in the configuration file.
# @flag --no-create-home                 Do not create the home directory, even if it doesn't exist.
# @flag --quiet                          Suppress informational messages, only show warnings and errors.
# @flag --debug                          Be verbose, most useful if you want to nail down a problem with adduser.
# @flag --system                         Create a system user or group.
# @option --uid <ID>                     Force the new userid to be the given number.
# @option --firstuid <ID>                Override the first uid in the range that the uid is chosen from (overrides FIRST_UID specified in the configuration file).
# @option --lastuid <ID>                 Override the last uid in the range that the uid is chosen from ( LAST_UID )
# @flag --add_extra_groups               Add new user to extra groups defined in the configuration file.
# @flag --version                        Display version and copyright information.
# @arg user

_module_os_shell() {
    command cat /etc/shells | sed -n '/^\// p'   
}

command eval "$(argc --argc-eval "$0" "$@")"