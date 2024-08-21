#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --badnames                                do not check for bad names
# @option -b --base-dir <BASE_DIR>                base directory for the home directory of the new account
# @flag --btrfs-subvolume-home                    use BTRFS subvolume for home directory
# @option -c --comment                            GECOS field of the new account
# @option -d --home-dir <HOME_DIR>                home directory of the new account
# @flag -D --defaults                             print or change default useradd configuration
# @option -e --expiredate <EXPIRE_DATE>           expiration date of the new account
# @option -f --inactive                           password inactivity period of the new account
# @option -g --gid[`_module_os_group`] <GROUP>    name or ID of the primary group of the new account
# @option -G --groups                             list of supplementary groups of the new account
# @flag -h --help                                 display this help message and exit
# @option -k --skel <SKEL_DIR>                    use this alternative skeleton directory
# @option -K --key <KEY=VALUE>                    override /etc/login.defs defaults
# @flag -l --no-log-init                          do not add the user to the lastlog and faillog databases
# @flag -m --create-home                          create the user's home directory
# @flag -M --no-create-home                       do not create the user's home directory
# @flag -N --no-user-group                        do not create a group with the same name as the user
# @flag -o --non-unique                           allow to create users with duplicate (non-unique) UID
# @option -p --password                           encrypted password of the new account
# @flag -r --system                               create a system account
# @option -R --root <CHROOT_DIR>                  directory to chroot into
# @option -P --prefix <PREFIX_DIR>                prefix directory where are located the /etc/* files
# @option -s --shell*,[`_module_os_shell`]        login shell of the new account
# @option -u --uid                                user ID of the new account
# @flag -U --user-group                           create a group with the same name as the user
# @option -Z --selinux-user <SEUSER>              use a specific SEUSER for the SELinux user mapping
# @flag --extrausers                              Use the extra users database
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