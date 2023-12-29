_patch_help() { 
    cat <<-'EOF' | _patch_help_embed_help $@
Usage: find [options] dirs...
Options:
    -P                          Never follow symbolic links
    -L                          Follow symbolic links
    -H                          Do not follow symbolic links
    -D <debugopts>              Print diagnostic information
    -O0                         Equivalent to optimisation level 1
    -O1                         This  is  the default optimisation level and corresponds to the traditional behaviour.
    -O2                         Any -type or -xtype tests are performed after any tests based only on the names of files.
    -O3                         At  this  optimisation level, the full cost-based query optimiser is enabled.
    -daystart                   Measure times from the beginning of today rather than from 24 hours ago.
    -regextype <type>           Changes the regular expression syntax understood by -regex and -iregex tests which  occur later  on the command line.
    -warn                       Turn  warning  messages  on.
    -nowarn                     Turn  warning  messages  off.
    -d, -depth                  Process each directory's contents before the directory itself.
    -help, --help               Print a summary of the command-line usage of find and exit.
    -ignore_readdir_race        Do not  emit an error message when find fails to stat a file.
    -maxdepth <levels>          Descend at most levels of directories below the startingpoints.
    -mindepth <levels>          Do  not  apply  any tests or actions at levels less than levels.
    -mount                      Don't descend directories on other filesystems.
    -noignore_readdir_race      Turns off the effect of -ignore_readdir_race.
    -noleaf                     Do  not  optimize  by assuming that directories contain 2 fewer subdirectories than their hard link count.
    -version, --version         Print the find version number and exit.
    -xdev                       Don't descend directories on other filesystems.
    -amin <n>                   File was last accessed less than, more than or exactly n minutes ago.
    -anewer <reference>         Time of the last access of the current file is more recent than that  of  the  last  data modification of the reference file.
    -atime <n>                  File was last accessed less than, more than or exactly n*24 hours ago.
    -cmin <n>                   File's status was last changed less than, more than or exactly n minutes ago.
    -cnewer <reference>         Time  of  the last status change of the current file is more recent than that of the last data modification of the reference file.
    -ctime <n>                  File's status was last changed less than, more than or exactly n*24 hours ago.
    -empty                      File is empty and is either a regular file or a directory.
    -executable                 Matches files which are executable and directories which are searchable by the current user.
    -false                      Always false.
    -fstype <type >             File  is  on  a filesystem of type type.
    -gid <n>                    File's numeric group ID is less than, more than or exactly n.
    -group <gname>              File belongs to group gname (numeric group ID allowed).
    -ilname <pattern>           Like -lname, but the match is case insensitive.
    -iname <pattern>            Like -name, but the match is case insensitive.
    -inum <n>                   File  has inode number smaller than, greater than or exactly n.
    -ipath <pattern>            Like -path.  but the match is case insensitive.
    -iregex <pattern>           Like -regex, but the match is case insensitive.
    -iwholename <pattern>       See -ipath.  This alternative is less portable than -ipath.
    -links <n>                  File has less than, more than or exactly n hard links.
    -lname <pattern>            File is a symbolic link whose contents match shell pattern pattern.
    -mmin <n>                   File's data was last modified less than, more than or exactly n minutes ago.
    -mtime <n>                  File's data was last modified less than, more than or exactly n*24 hours  ago.
    -name <pattern>             Base of file name matches  shell  pattern pattern.
    -newer <reference>          Time of the last data modification of the current file is more recent than that of the last data modification of the reference file.
    -nogroup                    No group corresponds to file's numeric group ID.
    -nouser                     No user corresponds to file's numeric user ID.
    -path <pattern>             File name matches shell pattern pattern.
    -perm <mode>                File's permission bits are exactly mode (octal or symbolic).
    -readable                   Matches  files  which  are  readable by the current user.
    -regex <pattern>            File  name  matches regular expression pattern.
    -samefile <name>            File  refers  to the same inode as name.
    -size <n>                   File uses less than, more than or exactly n units of space, rounding up.
    -true                       Always true.
    -type <c>                   File is of type c
    -uid <n>                    File's numeric user ID is less than, more than or exactly n.
    -used <n>                   File  was  last accessed less than, more than or exactly n days after its status was last changed.
    -user <uname>               File is owned by user uname.
    -wholename <pattern>        See -path.  This alternative is less portable than -path.
    -writable                   Matches files which are writable by the current user.
    -xtype <c>                  The same as -type unless the file is a symbolic link.
    -context <pattern>          Security context of the file matches glob pattern.
    -delete                     Delete  files.
    -exec <command>             Execute command.
    -execdir <command>          Like -exec, but the specified command is run from the subdirectory containing the matched file.
    -fls                        Unusual characters are always escaped.
    -fprint                     Quoting is handled in the same way as for -printf and -fprintf.
    -fprint0                    Always print the exact filename, unchanged, even if the output is going to a terminal.
    -fprintf                    If the output is not going to a terminal, it is printed as-is.
    -ls                         List current file in ls -dils format on standard output.
    -ok <command>               Like  -exec but ask the user first.
    -okdir <command>            Like -execdir but ask the user first in the same way as for -ok.
    -print                      Print the full file name on the standard output, followed by a newline.
    -print0                     Print the full file name on the standard output, followed by a null character.
    -printf <format>            Print  format on the standard output, interpreting \ escapes and % directives.
    -prune                      If the file is a directory, do not descend into it.
    -quit                       Exit immediately.
EOF
}

_patch_table() { 
    _patch_table_edit_options \
        '-D;[`_choice_debugopts`]' \
        '-exec;~[`_module_os_exec`]' \
        '-execdir;~[`_module_os_exec`]' \
        '-fstype;[`_choice_fstype`]' \
        '-group;[`_module_os_group`]' \
        '-regextype;[`_choice_regextype`]' \
        '-type;[`_choice_type`]' \
        '-user;[`_module_os_user`]' \
        '-xtype;[`_choice_type`]' \

}

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
