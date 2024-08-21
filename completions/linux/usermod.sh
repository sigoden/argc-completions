#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --badnames                             allow bad names
# @option -c --comment                            new value of the GECOS field
# @option -d --home <HOME_DIR>                    new home directory for the user account
# @option -e --expiredate <EXPIRE_DATE>           set account expiration date to EXPIRE_DATE
# @option -f --inactive                           set password inactive after expiration to INACTIVE
# @option -g --gid[`_module_os_group`] <GROUP>    force use GROUP as new primary group
# @option -G --groups*,[`_module_os_group`]       new list of supplementary GROUPS
# @flag -a --append                               append the user to the supplemental GROUPS mentioned by the -G option without removing the user from other groups
# @flag -h --help                                 display this help message and exit
# @option -l --login <NEW_LOGIN>                  new value of the login name
# @flag -L --lock                                 lock the user account
# @flag -m --move-home                            move contents of the home directory to the new location (use only with -d)
# @flag -o --non-unique                           allow using duplicate (non-unique) UID
# @option -p --password                           use encrypted password for the new password
# @option -R --root <CHROOT_DIR>                  directory to chroot into
# @option -P --prefix <PREFIX_DIR>                prefix directory where are located the /etc/* files
# @option -s --shell*,[`_module_os_shell`]        new login shell for the user account
# @option -u --uid                                new UID for the user account
# @flag -U --unlock                               unlock the user account
# @option -v --add-subuids <FIRST-LAST>           add range of subordinate uids
# @option -V --del-subuids <FIRST-LAST>           remove range of subordinate uids
# @option -w --add-subgids <FIRST-LAST>           add range of subordinate gids
# @option -W --del-subgids <FIRST-LAST>           remove range of subordinate gids
# @option -Z --selinux-user <SEUSER>              new SELinux user mapping for the user account
# @arg login[`_module_os_user`]

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_shell() {
    command cat /etc/shells | sed -n '/^\// p'   
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"