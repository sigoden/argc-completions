#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -P                                       Never follow symbolic links
# @flag -L                                       Follow symbolic links
# @flag -H                                       Do not follow symbolic links
# @option -D[`_choice_debugopts`] <debugopts>    Print diagnostic information
# @flag -O0                                      Equivalent to optimisation level 1
# @flag -O1                                      This  is  the default optimisation level and corresponds to the traditional behaviour.
# @flag -O2                                      Any -type or -xtype tests are performed after any tests based only on the names of files.
# @flag -O3                                      At  this  optimisation level, the full cost-based query optimiser is enabled.
# @flag -daystart                                Measure times from the beginning of today rather than from 24 hours ago.
# @option -regextype[`_choice_regextype`] <type>  Changes the regular expression syntax understood by -regex and -iregex tests which  occur later  on the command line.
# @flag -warn                                    Turn  warning  messages  on.
# @flag -nowarn                                  Turn  warning  messages  off.
# @flag -d -depth                                Process each directory's contents before the directory itself.
# @flag -help                                    Print a summary of the command-line usage of find and exit.
# @flag --help                                   Print a summary of the command-line usage of find and exit.
# @flag -ignore_readdir_race                     Do not  emit an error message when find fails to stat a file.
# @option -maxdepth <levels>                     Descend at most levels of directories below the startingpoints.
# @option -mindepth <levels>                     Do  not  apply  any tests or actions at levels less than levels.
# @flag -mount                                   Don't descend directories on other filesystems.
# @flag -noignore_readdir_race                   Turns off the effect of -ignore_readdir_race.
# @flag -noleaf                                  Do  not  optimize  by assuming that directories contain 2 fewer subdirectories than their hard link count.
# @flag -version                                 Print the find version number and exit.
# @flag --version                                Print the find version number and exit.
# @flag -xdev                                    Don't descend directories on other filesystems.
# @option -amin <n>                              File was last accessed less than, more than or exactly n minutes ago.
# @option -anewer <reference>                    Time of the last access of the current file is more recent than that  of  the  last  data modification of the reference file.
# @option -atime <n>                             File was last accessed less than, more than or exactly n*24 hours ago.
# @option -cmin <n>                              File's status was last changed less than, more than or exactly n minutes ago.
# @option -cnewer <reference>                    Time  of  the last status change of the current file is more recent than that of the last data modification of the reference file.
# @option -ctime <n>                             File's status was last changed less than, more than or exactly n*24 hours ago.
# @flag -empty                                   File is empty and is either a regular file or a directory.
# @flag -executable                              Matches files which are executable and directories which are searchable by the current user.
# @flag -false                                   Always false.
# @option -fstype[`_choice_fstype`] <type>       File  is  on  a filesystem of type type.
# @option -gid <n>                               File's numeric group ID is less than, more than or exactly n.
# @option -group[`_module_os_group`] <gname>     File belongs to group gname (numeric group ID allowed).
# @option -ilname <pattern>                      Like -lname, but the match is case insensitive.
# @option -iname <pattern>                       Like -name, but the match is case insensitive.
# @option -inum <n>                              File  has inode number smaller than, greater than or exactly n.
# @option -ipath <pattern>                       Like -path.
# @option -iregex <pattern>                      Like -regex, but the match is case insensitive.
# @option -iwholename <pattern>                  See -ipath.
# @option -links <n>                             File has less than, more than or exactly n hard links.
# @option -lname <pattern>                       File is a symbolic link whose contents match shell pattern pattern.
# @option -mmin <n>                              File's data was last modified less than, more than or exactly n minutes ago.
# @option -mtime <n>                             File's data was last modified less than, more than or exactly n*24 hours  ago.
# @option -name <pattern>                        Base of file name matches  shell  pattern pattern.
# @option -newer <reference>                     Time of the last data modification of the current file is more recent than that of the last data modification of the reference file.
# @flag -nogroup                                 No group corresponds to file's numeric group ID.
# @flag -nouser                                  No user corresponds to file's numeric user ID.
# @option -path <pattern>                        File name matches shell pattern pattern.
# @option -perm <mode>                           File's permission bits are exactly mode (octal or symbolic).
# @flag -readable                                Matches  files  which  are  readable by the current user.
# @option -regex <pattern>                       File  name  matches regular expression pattern.
# @option -samefile <name>                       File  refers  to the same inode as name.
# @option -size <n>                              File uses less than, more than or exactly n units of space, rounding up.
# @flag -true                                    Always true.
# @option -type[`_choice_type`] <c>              File is of type c
# @option -uid <n>                               File's numeric user ID is less than, more than or exactly n.
# @option -used <n>                              File  was  last accessed less than, more than or exactly n days after its status was last changed.
# @option -user[`_module_os_user`] <uname>       File is owned by user uname.
# @option -wholename <pattern>                   See -path.
# @flag -writable                                Matches files which are writable by the current user.
# @option -xtype[`_choice_type`] <c>             The same as -type unless the file is a symbolic link.
# @option -context <pattern>                     Security context of the file matches glob pattern.
# @flag -delete                                  Delete  files.
# @option -exec~[`_module_os_exec`] <command>    Execute command.
# @option -execdir~[`_module_os_exec`] <command>  Like -exec, but the specified command is run from the subdirectory containing the matched file.
# @flag -fls                                     Unusual characters are always escaped.
# @flag -fprint                                  Quoting is handled in the same way as for -printf and -fprintf.
# @flag -fprint0                                 Always print the exact filename, unchanged, even if the output is going to a terminal.
# @flag -fprintf                                 If the output is not going to a terminal, it is printed as-is.
# @flag -ls                                      List current file in ls -dils format on standard output.
# @option -ok <command>                          Like  -exec but ask the user first.
# @option -okdir <command>                       Like -execdir but ask the user first in the same way as for -ok.
# @flag -print                                   Print the full file name on the standard output, followed by a newline.
# @flag -print0                                  Print the full file name on the standard output, followed by a null character.
# @option -printf <format>                       Print  format on the standard output, interpreting \ escapes and % directives.
# @flag -prune                                   If the file is a directory, do not descend into it.
# @flag -quit                                    Exit immediately.
# @arg dirs*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_debugopts() {
    cat <<-'EOF'
exec	Show diagnostic information relating to -exec, -execdir, -ok and -okdir
opt	Prints diagnostic information relating to the optimisation of the expression tree
rates	Prints a summary indicating how often each predicate succeeded or failed.
search	Navigate the directory tree verbosely.
stat	Print  messages  as  files are examined with the stat and lstat system calls.
tree	Show the expression tree in its original and optimised form.
all	Enable all of the other debug options (but help).
help	Explain the debugging options.
EOF
}

_choice_regextype() {
    printf "%s\n" findutils-default ed emacs gnu-awk grep posix-awk awk posix-basic posix-egrep egrep posix-extended posix-minimal-basic sed
}

_choice_fstype() {
    cat <<-'EOF'
bfs	is the native file system for the BeOS
brtfs	combines the copy-on-write principle with a logical volume manager
cramfs	a free read-only Linux file system designed for simplicity and space-efficiency
exfat	is a file system optimized for flash memory such as USB flash drives and SD cards
ext	is an elaborate extension of the minix filesystem.
ext2	is the high performance disk filesystem used by Linux  for  fixed  disks  as  well  as removable  media.
ext3	is a journaling version of the ext2 filesystem.
ext4	is  a  set  of  upgrades  to  ext3  including  substantial performance and reliability enhancements.
fat	is a file system developed for personal computers
f2fs	s a flash file system initially developed by Samsung Electronics
hpfs	is  the High Performance Filesystem, used in OS/2.
iso9660	is a CD-ROM filesystem type conforming to the ISO 9660 standard.
jfs	is a journaling filesystem, developed by IBM.
minix	is  the  filesystem  used in the Minix operating system, the first to run under Linux.
msdos	is  the filesystem used by DOS, Windows, and some OS/2 computers.
ncpfs	is  a  network  filesystem that supports the NCP protocol, used by Novell NetWare.
nfs	is the network filesystem used to access disks located on remote computers.
ntfs	is the filesystem native to Microsoft Windows NT.
proc	is a pseudo filesystem which is used as an interface to kernel data structures.
reiserfs	is a journaling filesystem, designed by Hans Reiser.
smb	is  a  network  filesystem  that  supports the SMB protocol.
sysv	is an implementation of the System V/Coherent filesystem for Linux.
tmpfs	is  a  filesystem  whose  contents  reside in virtual memory.
umsdos	is  an  extended DOS filesystem used by Linux.
vfat	is an extended FAT filesystem used by Microsoft Windows95 and Windows NT.
xfs	is a journaling filesystem, developed by SGI.
xiafs	was designed and implemented to be a stable, safe filesystem by  extending  the  Minix filesystem code.
EOF
}

_choice_type() {
    cat <<-'EOF' | _argc_util_comp_multi ,
b	block (buffered) special
c	character (unbuffered) special
d	directory
p	named pipe (FIFO)
f	regular file
l	symbolic link
s	socket
D	door (Solaris)
EOF
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

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
    fi
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"