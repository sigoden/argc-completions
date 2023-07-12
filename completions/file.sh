#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                                   display this help and exit
# @flag -v --version                             output version information and exit
# @option -m --magic-file*, <FILES>              use LIST as a colon-separated list of magic number files
# @flag -z --uncompress                          try to look inside compressed files
# @flag -Z --uncompress-noreport                 only print the contents of compressed files
# @flag -b --brief                               do not prepend filenames to output lines
# @flag -c --checking-printout                   print the parsed form of the magic file, use in conjunction with -m to debug a new magic file before installing it
# @option -e --exclude[`_choice_test`] <TEST>    exclude TEST from the list of test to be performed for file.
# @option --exclude-quiet[`_choice_test`] <TEST>  like exclude, but ignore unknown tests
# @option -f --files-from <FILE>                 read the filenames to be examined from FILE
# @option -F --separator <STRING>                use string as separator instead of `:'
# @flag -i --mime                                output MIME type strings (--mime-type and --mime-encoding)
# @flag --apple                                  output the Apple CREATOR/TYPE
# @flag --extension                              output a slash-separated list of extensions
# @flag --mime-type                              output the MIME type
# @flag --mime-encoding                          output the MIME encoding
# @flag -k --keep-going                          don't stop at the first match
# @flag -l --list                                list magic strength
# @flag -L --dereference                         follow symlinks (default if POSIXLY_CORRECT is set)
# @flag -h --no-dereference                      don't follow symlinks (default if POSIXLY_CORRECT is not set) (default)
# @flag -n --no-buffer                           do not buffer output
# @flag -N --no-pad                              do not pad output
# @flag -0 --print0                              terminate filenames with ASCII NUL
# @flag -p --preserve-date                       preserve access times on files
# @flag -P --parameter                           set file engine parameter limits bytes 1048576 max bytes to look inside file elf_notes     256 max ELF notes processed elf_phnum    2048 max ELF prog sections processed elf_shnum   32768 max ELF sections processed encoding   65536 max bytes to scan for encoding indir      50 recursion limit for indirection
# @flag -r --raw                                 don't translate unprintable chars to \ooo
# @flag -s --special-files                       treat special (block/char devices) files as ordinary ones
# @flag -S --no-sandbox                          disable system call sandboxing
# @flag -C --compile                             compile file specified by -m
# @flag -d --debug                               print debugging messages
# @arg FILE*

_choice_test() {
    printf "%s\n" apptype ascii cdf compress csv elf encoding soft tar json text tokens
}

command eval "$(argc --argc-eval "$0" "$@")"