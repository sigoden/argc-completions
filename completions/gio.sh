#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ gio version
# @cmd Print version
version() {
    :;
}
# }} gio version

# {{ gio cat
# @cmd Concatenate files to standard output
# @arg path <PATH…>
cat_() {
    :;
}
# }} gio cat

# {{ gio copy
# @cmd Copy one or more files
# @flag -T --no-target-directory    No target directory
# @flag -p --progress               Show progress
# @flag -i --interactive            Prompt before overwrite
# @flag --preserve                  Preserve all attributes
# @flag -b --backup                 Backup existing destination files
# @flag -P --no-dereference         Never follow symbolic links
# @flag --default-permissions       Use default permissions for the destination
# @arg source-path!
# @arg dest-path!
copy() {
    :;
}
# }} gio copy

# {{ gio info
# @cmd Show information about locations
# @flag -w --query-writable       List writable attributes
# @flag -f --filesystem           Get file system info
# @option -a --attributes         The attributes to get
# @flag -n --nofollow-symlinks    Don’t follow symbolic links
# @arg path <PATH…>
info() {
    :;
}
# }} gio info

# {{ gio launch
# @cmd Launch an application from a desktop file
# @arg desktop-file
# @arg file-arg <FILE-ARG …>
launch() {
    :;
}
# }} gio launch

# {{ gio list
# @cmd List the contents of locations
# @option -a --attributes           The attributes to get
# @flag -h --hidden                 Show hidden files
# @flag -l --long                   Use a long listing format
# @flag -n --nofollow-symlinks      Don’t follow symbolic links
# @flag -d --print-display-names    Print display names
# @flag -u --print-uris             Print full URIs
# @arg path <PATH…>
list() {
    :;
}
# }} gio list

# {{ gio mime
# @cmd Get or set the handler for a mimetype
# @arg mimetype
# @arg handler
mime() {
    :;
}
# }} gio mime

# {{ gio mkdir
# @cmd Create directories
# @flag -p --parent    Create parent directories
# @arg path <PATH…>
mkdir() {
    :;
}
# }} gio mkdir

# {{ gio monitor
# @cmd Monitor files and directories for changes
# @option -d --dir <PATH>       Monitor a directory (default: depends on type)
# @option -f --file <PATH>      Monitor a file (default: depends on type)
# @option -D --direct <PATH>    Monitor a file directly (notices changes made via hardlinks)
# @option -s --silent <PATH>    Monitors a file directly, but doesn’t report changes
# @flag -n --no-moves           Report moves and renames as simple deleted/created events
# @flag -m --mounts             Watch for mount events
# @arg path <PATH…>
monitor() {
    :;
}
# }} gio monitor

# {{ gio mount
# @cmd Mount or unmount the locations
# @flag -m --mountable                    Mount as mountable
# @option -d --device <ID>                Mount volume with device file, or other identifier
# @flag -u --unmount                      Unmount
# @flag -e --eject                        Eject
# @option -t --stop <DEVICE>              Stop drive with device file
# @option -s --unmount-scheme <SCHEME>    Unmount all mounts with the given scheme
# @flag -f --force                        Ignore outstanding file operations when unmounting or ejecting
# @flag -a --anonymous                    Use an anonymous user when authenticating
# @flag -l --list                         List
# @flag -o --monitor                      Monitor events
# @flag -i --detail                       Show extra information
# @option --tcrypt-pim <PIM>              The numeric PIM when unlocking a VeraCrypt volume
# @flag --tcrypt-hidden                   Mount a TCRYPT hidden volume
# @flag --tcrypt-system                   Mount a TCRYPT system volume
# @arg path <PATH…>
mount() {
    :;
}
# }} gio mount

# {{ gio move
# @cmd Move one or more files
# @flag -T --no-target-directory    No target directory
# @flag -p --progress               Show progress
# @flag -i --interactive            Prompt before overwrite
# @flag -b --backup                 Backup existing destination files
# @flag -C --no-copy-fallback       Don’t use copy and delete fallback
# @arg source-path!
# @arg dest-path!
move() {
    :;
}
# }} gio move

# {{ gio open
# @cmd Open files with the default application
# @arg path <PATH…>
open() {
    :;
}
# }} gio open

# {{ gio rename
# @cmd Rename a file
# @arg path
# @arg name
rename() {
    :;
}
# }} gio rename

# {{ gio remove
# @cmd Delete one or more files
# @flag -f --force    Ignore nonexistent files, never prompt
# @arg path <PATH…>
remove() {
    :;
}
# }} gio remove

# {{ gio save
# @cmd Read from standard input and save
# @flag -b --backup        Backup existing destination files
# @flag -c --create        Only create if not existing
# @flag -a --append        Append to end of file
# @flag -p --private       When creating, restrict access to the current user
# @flag -u --unlink        When replacing, replace as if the destination did not exist
# @flag -v --print-etag    Print new etag at end
# @option -e --etag        The etag of the file being overwritten
# @arg destination
save() {
    :;
}
# }} gio save

# {{ gio set
# @cmd Set a file attribute
# @option -t --type               Type of the attribute
# @flag -n --nofollow-symlinks    Don’t follow symbolic links
# @arg path
# @arg attribute
# @arg value <VALUE…>
set() {
    :;
}
# }} gio set

# {{ gio trash
# @cmd Move files or directories to the trash
# @flag -f --force    Ignore nonexistent files, never prompt
# @flag --empty       Empty the trash
# @flag --list        List files in the trash with their original locations
# @flag --restore     Restore a file from trash to its original location (possibly recreating the directory)
# @arg path <PATH…>
trash() {
    :;
}
# }} gio trash

# {{ gio tree
# @cmd Lists the contents of locations in a tree
# @flag -h --hidden             Show hidden files
# @flag -l --follow-symlinks    Follow symbolic links, mounts and shortcuts
# @arg path <PATH…>
tree() {
    :;
}
# }} gio tree

command eval "$(argc --argc-eval "$0" "$@")"