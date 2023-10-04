#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -?                        Display help on commands and switches.
# @flag -ad                       Append archive name to destination path.
# @option -ag- <format>           Generate archive name using the current date and time.
# @flag -ai                       Ignore file attributes.
# @option -ap- <path>             Set path inside archive.
# @flag -as                       Synchronize archive contents.
# @flag -cfg-                     Disable reading configuration and environment.
# @flag -cl                       Convert file names to lower case.
# @flag -cu                       Convert file names to upper case.
# @flag -c-                       Disable showing comments.
# @flag -df                       Delete files after archiving.
# @flag -dh                       Open shared files.
# @flag -ds                       Do not sort files while adding to a solid archive.
# @flag -dw                       Wipe files after archiving.
# @flag -ed                       Do not add empty directories.
# @flag -en                       Do not add "end of archive" block.
# @flag -ep                       Exclude paths from names.
# @flag -ep1                      Exclude base dir from names.
# @flag -ep2                      Expand paths to full.
# @option -e- <[+]<attr>>         Set file exclude [or include] attributes.
# @flag -f                        Freshen files.
# @option -hp- <password>         Encrypt both file data and headers.
# @option -ht- <b|c>              Select hash type [BLAKE2,CRC32] for file checksum.
# @option -id- <c,d,p,q>          Disable messages.
# @flag -ierr                     Send all messages to stderr.
# @option -ilog- <name>           Log errors to file (registered versions only).
# @flag -inul                     Disable all messages.
# @flag -isnd                     Enable sound.
# @flag -iver                     Display the version number
# @flag -k                        Lock archive.
# @flag -kb                       Keep broken extracted files.
# @option -log- <[f][=name]>      Write names to log file.
# @option -m- <0..5>              Set compression level (0-store...3-default...5-best).
# @option -ma- <4|5>              Specify a version of archiving format.
# @option -mc- <par>              Set advanced compression parameters.
# @option -md- <<size>[k,m,g]>    Set dictionary size in KB, MB or GB.
# @option -ms- <ext;ext>          Specify file types (extensions) to store.
# @option -mt- <threads>          Set the number of threads.
# @option -n- <file>              Additionally filter included files.
# @flag -o-                       Do not overwrite existing files.
# @flag -oh                       Save hard links as the link instead of the file.
# @option -oi- <[0-4][:min]>      Save identical files as references.
# @option -ol- <a>                Process symbolic links as the link [absolute paths].
# @flag -or                       Rename files automatically.
# @flag -ow                       Save or restore file owner and group.
# @option -p- <password>          Encrypt files with the given string as password while archiving.
# @flag -p-                       Do not query password.
# @option -qo- <-|+>              Add quick open information [none|force].
# @flag -r                        Recurse subdirectories.
# @flag -r-                       Disable recursion.
# @flag -r0                       Similar to -r, but when used with the commands 'a', 'u', 'f', 'm' will recurse subdirectories only for wildcard names.
# @option -rr- <N>                Add data recovery record.
# @option -rv- <N>                Create recovery volumes.
# @option -s- <N>                 Create solid groups using file count.
# @flag -se                       Create solid groups using extension.
# @flag -sv                       Create independent solid volumes.
# @flag -sv-                      Create dependent solid volumes.
# @flag -s-                       Disable solid archiving.
# @option -sc- <<chr>[obj]>       Specify the character set.
# @option -sfx- <name>            Create SFX archives.
# @option -si- <name>             Read data from standard input (stdin).
# @option -sl- <size>             Process files with size less than specified.
# @option -sm- <size>             Process files with size more than specified.
# @flag -t                        Test files after archiving.
# @option -ta- <date>             Process files modified after <date> in YYYYMMDDHHMMSS format.
# @option -tb- <date>             Process files modified before <date> in YYYYMMDDHHMMSS format.
# @flag -tk                       Keep original archive time.
# @flag -tl                       Set archive time to latest file.
# @option -tn- <time>             Process files newer than <time>.
# @option -to- <time>             Process files older than <time>.
# @option -ts-[modification|creation|access] <m|c|a>  Save or restore file time.
# @flag -u                        Update files.
# @option -v- <<size>[k|b]>       Create volumes with size=<size>*1000 [*1024, *1] bytes.
# @option -ver- <n>               File version control.
# @flag -vn                       Use the old style volume naming scheme.
# @flag -vp                       Pause before each volume.
# @option -w- <path>              Assign work directory.
# @option -x- <file>              Exclude specified file.
# @flag -y                        Assume Yes on all queries.
# @option -z- <file>              Read archive comment from file.

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
# @cmd Write archive comment to a specified file.
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
# @cmd Extract files to current directory.
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

# {{ rar l
# @cmd List content of archive.
l() {
    :;
}
# }} rar l

# {{ rar m
# @cmd Move to archive.
m() {
    :;
}
# }} rar m

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
# @cmd Reconstruct missing volumes using recovery volumes (.rev files).
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

# {{ rar rr
# @cmd Add data recovery record.
rr() {
    :;
}
# }} rar rr

# {{ rar rv
# @cmd Create recovery volumes (.rev files), which can be later used to reconstruct missing files in a volume set.
rv() {
    :;
}
# }} rar rv

# {{ rar s
# @cmd Convert archive to or from SFX.
s() {
    :;
}
# }} rar s

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

# {{ rar v
# @cmd Verbosely list archive
v() {
    :;
}
# }} rar v

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