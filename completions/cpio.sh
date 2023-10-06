#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -o --create                          Copy-out.
# @flag -i --extract                         Copy-in.
# @flag -p --pass-through                    Pass-through.
# @flag -? --help                            Give a short help summary and exit.
# @flag --usage                              Print a short usage message and exit.
# @flag --version                            Print program version and exit.
# @option --block-size                       Set the I/O block size to BLOCK-SIZE * 512 bytes.
# @flag -B                                   Set the I/O block size to 5120 bytes.
# @flag -c                                   Use the old portable (ASCII) archive format.
# @option -C --io-size <NUMBER>              Set the I/O block size to the given NUMBER of bytes.
# @option -D --directory <DIR>               Change to directory DIR.
# @flag --force-local                        Archive file is local, even if its name contains colons.
# @option -H --format[`_choice_format`]      Use given archive FORMAT.
# @option -R --owner[`_module_os_user`] <[USER][:.][GROUP]>  In copy-in and copy-pass mode, set the ownership of all files created to the specified USER and/or GROUP.
# @flag --quiet                              Do not print the number of blocks copied at the end of the run.
# @option --rsh-command <COMMAND>            Use remote COMMAND instead of rsh.
# @flag -v --verbose                         Verbosely list the files processed.
# @flag -V --dot                             Print a "." for each file processed.
# @option -W --warning <FLAG>                Controlsи warning display.
# @option -F --file <[[USER@]HOST:]ARCHIVE-FILE>  Use this ARCHIVE-FILE instead of standard input (in copy-in mode) or standard output (in copy-out mode).
# @option -M --message <STRING>              Print STRING when the end of a volume of the backup media is reached.
# @flag -b --swap                            Swap both halfwords of words and bytes of halfwords in the data.
# @flag -f --nonmatching                     Only copy files that do not match any of the given patterns.
# @flag -n --numeric-uid-gid                 In the verbose table of contents listing, show numeric UID and GID.
# @flag -r --rename                          Interactively rename files.
# @flag -s --swap-bytes                      Swap the bytes of each halfword in the files.
# @flag -S --swap-halfwords                  Swap the halfwords of each word (4 bytes) in the files.
# @flag --to-stdout                          Extract files to standard output.
# @option -E --pattern-file <FILE>           Read additional patterns specifying filenames to extract or list from FILE.
# @flag --only-verify-crc                    When reading a CRC format archive, only verify the CRC's of each file in the archive, without actually extracting the files.
# @flag -A --append                          Append to an existing archive.
# @flag --device-independent                 Create reproducible archives.
# @flag --reproducible                       Create reproducible archives.
# @flag --ignore-devno                       Store 0 in the device number field of each archive member, instead of the actual device number.
# @option -O <[[USER@]HOST:]ARCHIVE-NAME>    Use ARCHIVE-NAME instead of standard output.
# @flag --renumber-inodes                    Renumber inodes when storing them in the archive.
# @flag -l --link                            Link files instead of copying them, when possible.
# @flag --absolute-filenames                 Do not strip file system prefix components from the file names.
# @flag --no-absolute-filenames              Create all files relative to the current directory.
# @flag -0 --null                            Filenames in the list are delimited by null characters instead of newlines.
# @flag -a --reset-access-time               Reset the access times of files after reading them.
# @option -I <[[USER@]HOST:]ARCHIVE-NAME>    Use ARCHIVE-NAME instead of standard input.
# @flag -L --dereference                     Dereference symbolic links (copy the files that they point to instead of copying the links).
# @flag -d --make-directories                Create leading directories where needed.
# @flag -m --preserve-modification-time      Retain previous file modification times when creating files.
# @flag --no-preserve-owner                  Do not change the ownership of the files.
# @flag --sparse                             Write files with large blocks of zeros as sparse files.
# @flag -u --unconditional                   Replace all files unconditionally.

_choice_format() {
    cat <<-'EOF'
bin	The obsolete binary format.
odc	The old (POSIX.
newc	The new (SVR4) portable format, which supports file systems having more than 65536 i-nodes.
crc	The new (SVR4) portable format with a checksum added.
tar	The old tar format.
ustar	The POSIX.
hpbin	The obsolete binary format used by HPUX's cpio (which stores device files differently).
hpodc	The portable format used by HPUX's cpio (which stores device files differently).
EOF
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"