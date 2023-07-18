#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --force                            change permissions to allow writing if necessary
# @option -n --iterations <N>                 overwrite N times instead of the default (3)
# @option --random-source <FILE>              get random bytes from FILE
# @option -s --size <N>                       shred this many bytes (suffixes like K, M, G accepted)
# @flag -u                                    deallocate and remove file after overwriting
# @option --remove[`_choice_remove`] <HOW>    like -u but give control on HOW to delete;  See below
# @flag -v --verbose                          show progress
# @flag -x --exact                            do not round file sizes up to the next full block; this is the default for non-regular files
# @flag -z --zero                             add a final overwrite with zeros to hide shredding
# @flag --help                                display this help and exit
# @flag --version                             output version information and exit
# @arg file*

_choice_remove() {
    cat <<-'EOF'
unlink	use standard unlink call
wipe	like unlink, but obfuscate bytes in name first
wipesync	like wipe, but sync each obfuscated byte to disk
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"