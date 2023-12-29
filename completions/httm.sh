#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --browse                         interactive browse and search a specified directory to display unique file versions.
# @flag -s --select                         interactive browse and search a specified directory to display unique file versions.
# @option -r --restore*[copy|copy-and-preserve|overwrite|yolo]  interactive browse and search a specified directory to display unique file versions.
# @option -d --deleted*[all|single|only]    show deleted files in interactive modes.
# @flag -R --recursive                      recurse into the selected directory to find more files.
# @flag -a --alt-replicated                 automatically discover locally replicated datasets and list their snapshots as well.
# @option -p --preview*                     user may specify a command to preview snapshots while in select view.
# @option --uniqueness*[all|no-filter|metadata|contents]  comparing file versions solely on the basis of size and modify time (the default "metadata" behavior) may return what appear to be "false positives", in the sense that, modify time is not a precise measure of whether a file has actually changed.
# @flag -e --exact                          use exact pattern matching for searches in the interactive modes (in contrast to the default fuzzy searching).
# @option -S --snap* <SNAPSHOT>             snapshot a file/s most immediate mount.
# @option --list-snaps <LIST_SNAPS>         display snapshots names for a file.
# @flag --purge                             purge all snapshot/s which contain the input file/s on that file's most immediate mount via "zfs destroy".
# @option -m --file-mount*[source|target|directory|device|dataset|relative-path|relative|relpath] <FILE_MOUNT>  display the all mount point/s of all dataset/s which contain/s the input file/s.
# @option -l --last-snap*[any|ditto|no-ditto|no-ditto-exclusive|no-ditto-inclusive|none|without] <LAST_SNAP>  automatically select and print the path of last-in-time unique snapshot version for the input file.
# @flag -n --raw                            display the snapshot locations only, without extraneous information, delimited by a NEWLINE character.
# @flag -0 --zero                           display the snapshot locations only, without extraneous information, delimited by a NULL character.
# @flag --not-so-pretty                     display the ordinary output, but tab delimited, without any pretty border lines.
# @flag --json                              display the ordinary output, but as formatted JSON.
# @flag --omit-ditto                        omit display of the snapshot version which may be identical to the live version (`httm` ordinarily displays all snapshot versions and the live version).
# @flag --no-filter                         by default, in the interactive modes, httm will filter out files residing upon non-supported datasets (like ext4, tmpfs, procfs, sysfs, or devtmpfs, etc.), and within any "common" snapshot paths.
# @flag --no-hidden                         never show information regarding hidden files and directories (those that start with a '.') in the recursive or interactive modes.
# @flag --no-traverse                       in recursive mode, don't traverse symlinks.
# @flag --no-live                           only display information concerning snapshot versions (display no information regarding live versions of files or directories).
# @flag --no-snap                           only display information concerning 'pseudo-live' versions in Display Recursive mode (in --deleted, --recursive, but non-interactive modes).
# @option --map-aliases <MAP_ALIASES>       manually map a local directory (eg.
# @option --num-versions*[all|single|single-no-snap|single-with-snap|multiple] <NUM_VERSIONS>  detect and display the number of unique versions available (e.g. one, "1", version is available if either a snapshot version exists, and is identical to live version, or only a live version exists).
# @flag --utc                               use UTC for date display and timestamps
# @flag --debug                             print configuration and debugging info
# @flag --install-zsh-hot-keys              install zsh hot keys to the users home directory, and then exit
# @flag -h --help                           Print help information
# @flag -V --version                        Print version information
# @arg input_files+                         in any non-interactive mode, put requested paths here.

command eval "$(argc --argc-eval "$0" "$@")"