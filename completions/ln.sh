#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option --backup[`_choice_backup`] <CONTROL>    make a backup of each existing destination file
# @flag -b                                        like --backup but does not accept an argument
# @flag -d                                        allow the superuser to attempt to hard link directories (note: will probably fail due to system restrictions, even for the superuser)
# @flag -F                                        allow the superuser to attempt to hard link directories (note: will probably fail due to system restrictions, even for the superuser)
# @flag --directory                               allow the superuser to attempt to hard link directories (note: will probably fail due to system restrictions, even for the superuser)
# @flag -f --force                                remove existing destination files
# @flag -i --interactive                          prompt whether to remove destinations
# @flag -L --logical                              dereference TARGETs that are symbolic links
# @flag -n --no-dereference                       treat LINK_NAME as a normal file if it is a symbolic link to a directory
# @flag -P --physical                             make hard links directly to symbolic links
# @flag -r --relative                             create symbolic links relative to link location
# @flag -s --symbolic                             make symbolic links instead of hard links
# @option -S --suffix                             override the usual backup suffix
# @option -t --target-directory <DIRECTORY>       specify the DIRECTORY in which to create the links
# @flag -T --no-target-directory                  treat LINK_NAME as a normal file always
# @flag -v --verbose                              print name of each linked file
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit
# @arg files*

_choice_backup() {
    cat <<-'EOF'
existing	numbered if numbered backup exists, simple otherwise,
nil	numbered if numbered backup exists, simple otherwise,
none	never make backups,
off	never make backups,
numbered	make numbered backups,
t	make numbered backups,
simple	always make simple backups,
never	always make simple backups,
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"