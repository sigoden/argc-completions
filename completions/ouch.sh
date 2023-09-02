#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -y --yes           Skip [Y/n] questions positively
# @flag -n --no            Skip [Y/n] questions negatively
# @flag -A --accessible    Activate accessibility mode, reducing visual noise
# @flag -H --hidden        Ignores hidden files
# @flag -q --quiet         Silences output
# @flag -g --gitignore     Ignores files matched by git's ignore files
# @option -f --format      Specify the format of the archive
# @flag -h --help          Print help (see a summary with '-h')
# @flag -V --version       Print version

# {{ ouch compress
# @cmd Compress one or more files into one output file [aliases: c]
# @option -l --level       Compression level, applied to all formats
# @flag -y --yes           Skip [Y/n] questions positively
# @flag --fast             Fastest compression level possible, conflicts with --level and --slow
# @flag -n --no            Skip [Y/n] questions negatively
# @flag -A --accessible    Activate accessibility mode, reducing visual noise [env: ACCESSIBLE=]
# @flag --slow             Slowest (and best) compression level possible, conflicts with --level and --fast
# @flag -H --hidden        Ignores hidden files
# @flag -q --quiet         Silences output
# @flag -g --gitignore     Ignores files matched by git's ignore files
# @option -f --format      Specify the format of the archive
# @flag -h --help          Print help
# @arg files+              Files to be compressed
# @arg output-file         The resulting file.
compress() {
    :;
}
# }} ouch compress

# {{ ouch decompress
# @cmd Decompresses one or more files, optionally into another folder [aliases: d]
# @option -d --dir <OUTPUT_DIR>    Place results in a directory other than the current one
# @flag -y --yes                   Skip [Y/n] questions positively
# @flag -n --no                    Skip [Y/n] questions negatively
# @flag -A --accessible            Activate accessibility mode, reducing visual noise [env: ACCESSIBLE=]
# @flag -H --hidden                Ignores hidden files
# @flag -q --quiet                 Silences output
# @flag -g --gitignore             Ignores files matched by git's ignore files
# @option -f --format              Specify the format of the archive
# @flag -h --help                  Print help
# @arg files+                      Files to be decompressed
decompress() {
    :;
}
# }} ouch decompress

# {{ ouch list
# @cmd List contents of an archive [aliases: l, ls]
# @flag -t --tree          Show archive contents as a tree
# @flag -y --yes           Skip [Y/n] questions positively
# @flag -n --no            Skip [Y/n] questions negatively
# @flag -A --accessible    Activate accessibility mode, reducing visual noise [env: ACCESSIBLE=]
# @flag -H --hidden        Ignores hidden files
# @flag -q --quiet         Silences output
# @flag -g --gitignore     Ignores files matched by git's ignore files
# @option -f --format      Specify the format of the archive
# @flag -h --help          Print help
# @arg archive-files*      Archives whose contents should be listed
list() {
    :;
}
# }} ouch list

command eval "$(argc --argc-eval "$0" "$@")"