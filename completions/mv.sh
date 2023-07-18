#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --backup[`_choice_backup`] <CONTROL>    make a backup of each existing destination file
# @flag -b                                        like --backup but does not accept an argument
# @flag -f --force                                do not prompt before overwriting
# @flag -i --interactive                          prompt before overwrite
# @flag -n --no-clobber                           do not overwrite an existing file
# @flag --strip-trailing-slashes                  remove any trailing slashes from each SOURCE argument
# @option -S --suffix                             override the usual backup suffix
# @option -t --target-directory <DIRECTORY>       move all SOURCE arguments into DIRECTORY
# @flag -T --no-target-directory                  treat DEST as a normal file
# @flag -u --update                               move only when the SOURCE file is newer than the destination file or when the destination file is missing
# @flag -v --verbose                              explain what is being done
# @flag -Z --context                              set SELinux security context of destination file to default type
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit
# @arg files*

_choice_backup() {
    cat <<-'EOF'
none	never make backups (even if --backup is given),
off	never make backups (even if --backup is given),
numbered	make numbered backups,
t	make numbered backups,
existing	numbered if numbered backups exist, simple otherwise,
nil	numbered if numbered backups exist, simple otherwise,
simple	always make simple backups,
never	always make simple backups,
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"