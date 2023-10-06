#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a --archive                              same as -dR --preserve=all
# @flag --attributes-only                         don't copy the file data, just the attributes
# @option --backup[`_choice_backup`] <CONTROL>    make a backup of each existing destination file
# @flag -b                                        like --backup but does not accept an argument
# @flag --copy-contents                           copy contents of special files when recursive
# @flag -d                                        same as --no-dereference --preserve=links
# @flag -f --force                                if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)
# @flag -i --interactive                          prompt before overwrite (overrides a previous -n option)
# @flag -H                                        follow command-line symbolic links in SOURCE
# @flag -l --link                                 hard link files instead of copying
# @flag -L --dereference                          always follow symbolic links in SOURCE
# @flag -n --no-clobber                           do not overwrite an existing file (overrides a previous -i option)
# @flag -P --no-dereference                       never follow symbolic links in SOURCE
# @flag -p                                        same as --preserve=mode,ownership,timestamps
# @option --preserve[`_choice_preserve`] <ATTR_LIST>  preserve the specified attributes, if possible additional attributes: context, links, xattr, all
# @option --no-preserve[`_choice_preserve`] <ATTR_LIST>  don't preserve the specified attributes
# @flag --parents                                 use full source file name under DIRECTORY
# @flag -R                                        copy directories recursively
# @flag -r                                        copy directories recursively
# @flag --recursive                               copy directories recursively
# @option --reflink[`_choice_reflink`] <WHEN>     control clone/CoW copies.
# @flag --remove-destination                      remove each existing destination file before attempting to open it (contrast with --force)
# @option --sparse[`_choice_sparse`] <WHEN>       control creation of sparse files.
# @flag --strip-trailing-slashes                  remove any trailing slashes from each SOURCE argument
# @flag -s --symbolic-link                        make symbolic links instead of copying
# @option -S --suffix                             override the usual backup suffix
# @option -t --target-directory <DIRECTORY>       copy all SOURCE arguments into DIRECTORY
# @flag -T --no-target-directory                  treat DEST as a normal file
# @flag -u --update                               copy only when the SOURCE file is newer than the destination file or when the destination file is missing
# @flag -v --verbose                              explain what is being done
# @flag -x --one-file-system                      stay on this file system
# @flag -Z                                        set SELinux security context of destination file to default type
# @option --context <CTX>                         like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit
# @arg paths*

_choice_backup() {
    printf "%s\n" never nil none numbered off simple t
}

_choice_preserve() {
    printf "%s\n" all context links mode ownership timestamps xattr
}

_choice_reflink() {
    printf "%s\n" alway auto
}

_choice_sparse() {
    printf "%s\n" auto never always
}

command eval "$(argc --argc-eval "$0" "$@")"