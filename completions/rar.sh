#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -?                               Display help on commands and switches.
# @option -ag- <format>                  Generate archive name using the current date and time.
# @flag -ai                              Ignore file attributes.
# @flag -ao                              Add files with Archive attribute set (Windows version only).
# @flag -ap                              Set path inside archive.
# @flag -as                              Synchronize archive contents
# @flag -cfg-                            Ignore configuration file and RAR environment variable.
# @flag -cl                              Convert file names to lower case.
# @flag -cu                              Convert file names to upper case.
# @flag -c-                              Disable comments show.
# @flag -df                              Delete files after archiving
# @flag -dh                              Open shared files
# @flag -dr                              Delete files to Recycle Bin
# @flag -ds                              Do not sort files while adding to a solid archive.
# @flag -dw                              Wipe files after archiving
# @flag -ed                              Do not add empty directories
# @flag -ee                              Do not process extended attributes
# @flag -en                              Do not add "end of archive" block
# @flag -ep                              Exclude paths from names.
# @flag -ep1                             Exclude base dir from names.
# @flag -ep2                             Expand paths to full.
# @flag -ep3                             Expand paths to full including the drive letter.
# @option -e- <[+]<attr>>                Specifies file exclude or include attributes mask.
# @flag -f                               Freshen files.
# @option -hp- <p>                       Encrypt both file data and headers.
# @option -ht- <b|c>                     Select hash type [BLAKE2,CRC32] for file checksum.
# @option -id- <c,d,p,q>                 Disable messages.
# @option -ieml- <[.][addr]>             Send archive by email.
# @flag -ierr                            Send all messages to stderr.
# @option -ilog- <name>                  Log errors to file (registered version only).
# @flag -inul                            Disable all messages.
# @flag -ioff                            Turn PC off after completing an operation.
# @flag -isnd                            Enable sound.
# @flag -k                               Lock archive.
# @flag -kb                              Keep broken extracted files.
# @option -log- <[fmt][=name]>           Write names to log file.
# @option -m- <n>                        Set compression method:
# @option -ma- <4|5>                     Specify a version of archiving format.
# @option -mc- <par>                     Set advanced compression parameters.
# @option -md- <<n>[k,m,g]>              Select the dictionary size.
# @option -ms- <list>                    Specify file types to store.
# @option -mt- <threads>                 Set the number of threads.
# @option -n- <f>                        Additionally filter included files.
# @flag -oc                              Set NTFS Compressed attribute.
# @flag -oh                              Save hard links as the link instead of the file.
# @option -oi- <[0-4][:<minsize>]>       Save identical files as references.
# @flag -ol                              Save symbolic links as the link instead of the file.
# @flag -or                              Rename extracted files automatically if file with the same name already exists.
# @flag -os                              Save NTFS streams.
# @flag -ow                              Use this switch when archiving to save file security information and when extracting to restore it.
# @option -o- <+|->                      Set the overwrite mode.
# @option -p- <p>                        Encrypt files with the string <p> as password while archiving.
# @flag -p--                             Do not query password
# @option -qo- <-|+>                     Add quick open information [none|force]
# @flag -r                               Recurse subdirectories.
# @flag -r--                             Disable recursion.
# @flag -r0                              Similar to -r, but when used with the commands 'a', 'u', 'f', 'm' will recurse into subdirectories only for those file masks, which include wildcard characters '*' and '?'.
# @option -ri- <<p>[:<s>]>               Set priority and sleep time.
# @option -rr- <N>                       Add data recovery record.
# @option -rv- <N>                       Create recovery volumes.
# @flag -s                               Create solid archive.
# @flag -sN                              Create solid groups using file count
# @option -sc- <<charset>[objects]>      Specify the character set for list files, log files and archive comment files.
# @flag -se                              Create solid groups using extension
# @option -sfx- <name>                   Create SFX archives.
# @option -si- <name>                    Read data from stdin (standard input), when creating an archive.
# @option -sl- <size>                    Process only those files, which size is less than specified in <size> parameter of this switch.
# @option -sm- <size>                    Process only those files, which size is more than specified in <size> parameter of this switch.
# @flag -sv                              Create independent solid volumes
# @flag -sv--                            Create dependent solid volumes
# @flag -s--                             Disable solid archiving
# @flag -t                               Test files after archiving.
# @option -ta- <date>                    Process only files modified after the specified date.
# @option -tb- <date>                    Process only files modified before the specified date.
# @flag -tk                              Keep original archive date.
# @flag -tl                              Set archive time to newest file.
# @option -tn- <time>                    Process files newer than the specified time period.
# @option -to- <time>                    Process files older than the specified time period.
# @option -ts-[modification|creation|access] <<m,c,a>[N]>  Save or restore file time.
# @flag -u                               Update files.
# @option -v- <<size>[k|b|f|m|M|g|G]>    Create volumes with size=<size>*1000 [*1024 | *1].
# @flag -vd                              Erase disk contents before creating volume
# @option -ver- <n>                      File version control
# @flag -vn                              Use the old style volume naming scheme
# @flag -vp                              Pause before each volume
# @option -w- <p>                        Assign work directory as <p>.
# @option -x- <f>                        Exclude the specified <f> file or directory.
# @flag -y                               Assume Yes on all queries.
# @option -z- <f>                        Read archive comment from file <f>.

# {{ rar a
# @cmd Add files to archive.
a() {
    :;
}
# }} rar a

# {{ rar c
# @cmd Add archive comment.
c() {
    :;
}
# }} rar c

# {{ rar ch
# @cmd Change archive parameters.
ch() {
    :;
}
# }} rar ch

# {{ rar cw
# @cmd Write archive comment to specified file.
cw() {
    :;
}
# }} rar cw

# {{ rar d
# @cmd Delete files from archive.
d() {
    :;
}
# }} rar d

# {{ rar e
# @cmd Extract files without archived paths.
e() {
    :;
}
# }} rar e

# {{ rar f
# @cmd Freshen files in archive.
f() {
    :;
}
# }} rar f

# {{ rar k
# @cmd Lock archive.
k() {
    :;
}
# }} rar k

# {{ rar p
# @cmd Print file to stdout.
p() {
    :;
}
# }} rar p

# {{ rar r
# @cmd Repair archive.
r() {
    :;
}
# }} rar r

# {{ rar rc
# @cmd Reconstruct missing and damaged volumes using recovery volumes (.rev files).
rc() {
    :;
}
# }} rar rc

# {{ rar rn
# @cmd Rename archived files.
rn() {
    :;
}
# }} rar rn

# {{ rar s-
# @cmd Remove SFX module from the already existing SFX archive.
s-() {
    :;
}
# }} rar s-

# {{ rar t
# @cmd Test archive files.
t() {
    :;
}
# }} rar t

# {{ rar u
# @cmd Update files in archive.
u() {
    :;
}
# }} rar u

# {{ rar x
# @cmd Extract files with full path.
x() {
    :;
}
# }} rar x

# {{ rar lt
# @cmd List content of archive technical
lt() {
    :;
}
# }} rar lt

# {{ rar lb
# @cmd List content of archive bare
lb() {
    :;
}
# }} rar lb

# {{ rar lta
# @cmd List content of archive technical all
lta() {
    :;
}
# }} rar lta

# {{ rar vt
# @cmd Verbosely list conent of archive technical
vt() {
    :;
}
# }} rar vt

# {{ rar vb
# @cmd Verbosely list content of archive bare
vb() {
    :;
}
# }} rar vb

# {{ rar vta
# @cmd Verbosely list content of archive technical all
vta() {
    :;
}
# }} rar vta

command eval "$(argc --argc-eval "$0" "$@")"