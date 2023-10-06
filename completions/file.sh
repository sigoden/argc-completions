#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag --apple                              Causes the file command to output the file type and creator code as used by older MacOS versions.
# @flag -b --brief                           Do not prepend filenames to output lines (brief mode).
# @flag -C --compile                         Write a magic.mgc output file that contains a pre-parsed version of the magic file or directory.
# @flag -c --checking-printout               Cause a checking printout of the parsed form of the magic file.
# @flag -d                                   Prints internal debugging information to stderr.
# @flag -E                                   On filesystem errors (file not found etc), instead of handling the error as regular output as POSIX mandates and keep going, issue an error message and exit.
# @option -e --exclude[`_choice_test`] <testname>  Exclude the test named in testname from the list of tests made to determine the file type.
# @option --exclude-quiet[`_choice_test`]    Like --exclude but ignore tests that file does not know about.
# @flag --extension                          Print a slash-separated list of valid extensions for the file type found.
# @option -F --separator <separator>         Use the specified string as the separator between the filename and the file result returned.
# @option -f --files-from <namefile>         Read the names of the files to be examined from namefile (one per line) before the argument list.
# @flag -h --no-dereference                  This option causes symlinks not to be followed (on systems that support symbolic links).
# @flag -i --mime                            Causes the file command to output mime type strings rather than the more traditional human readable ones.
# @flag --mime-type                          Like -i, but print only the specified element(s).
# @flag --mime-encoding                      Like -i, but print only the specified element(s).
# @flag -k --keep-going                      Don't stop at the first match, keep going.
# @flag -l --list                            Shows a list of patterns and their strength sorted descending by magic(5) strength which is used for the matching (see also the -k option).
# @flag -L --dereference                     This option causes symlinks to be followed, as the like-named option in ls(1) (on systems that support symbolic links).
# @option -m --magic-file*, <FILES>          Specify an alternate list of files and directories containing magic.
# @flag -N --no-pad                          Don't pad filenames so that they align in the output.
# @flag -n --no-buffer                       Force stdout to be flushed after checking each file.
# @flag -p --preserve-date                   On systems that support utime(3) or utimes(2), attempt to preserve the access time of files analyzed, to pretend that file never read them.
# @option -P --parameter[`_choice_parameter`] <name=value>  Set various parameter limits.
# @flag -r --raw                             Don't translate unprintable characters to \ooo.
# @flag -s --special-files                   Normally, file only attempts to read and determine the type of argument files which stat(2) reports are ordinary files.
# @flag -S --no-sandbox                      On systems where libseccomp (https://github.com/seccomp/libseccomp) is available, the -S option disables sandboxing which is enabled by default.
# @flag -v --version                         Print the version of the program and exit.
# @flag -z --uncompress                      Try to look inside compressed files.
# @flag -Z --uncompress-noreport             Try to look inside compressed files, but report information about the contents only not the compression.
# @flag -0 --print0                          Output a null character ‘\0’ after the end of the filename.
# @flag --help                               Print a help message and exit.
# @arg files*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_test() {
    cat <<-'EOF'
apptype	EMX application type (only on EMX).
ascii	Various types of text files (this test will try to guess the text encoding, irrespective of the setting of the ‘encoding’ option).
encoding	Different text encodings for soft magic tests.
tokens	Ignored for backwards compatibility.
cdf	Prints details of Compound Document Files.
compress	Checks for, and looks inside, compressed files.
csv	Checks Comma Separated Value files.
elf	Prints ELF file details, provided soft magic tests are enabled and the elf magic is found.
json	Examines JSON (RFC-7159) files by parsing them for compliance.
soft	Consults magic files.
tar	Examines tar files by verifying the checksum of the 512 byte tar header.
text	A synonym for ‘ascii’.
EOF
}

_choice_parameter() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_parameter_name | _argc_util_transform suffix== nospace
        return
    fi
}

_choice_parameter_name() {
    cat <<-'EOF'
bytes	max number of bytes to read from file
elf_notes	max ELF notes processed
elf_phnum	max ELF program sections processed
elf_shnum	max ELF sections processed
encoding	max number of bytes to scan for encoding evaluation
indir	recursion limit for indirect magic
name	use count limit for name/use magic
regex	length limit for regex searches
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"