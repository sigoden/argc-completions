#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -all                                       include pseudo, duplicate, inaccessible file systems
# @option -avail-threshold[yellow|red] <string>    specifies the coloring threshold of the avail column, must be integer with optional SI prefixes
# @option -hide[local|network|fuse|special|loops|binds] <string>  hide specific devices, separated with commas: local, network, fuse, special, loops, binds
# @option -hide-fs <string>                        hide specific filesystems, separated with commas
# @option -hide-mp <string>                        hide specific mount points, separated with commas (supports wildcards)
# @flag -inodes                                    list inode information instead of block usage
# @flag -json                                      output all devices in JSON format
# @option -only[local|network|fuse|special|loops|binds] <string>  show only specific devices, separated with commas: local, network, fuse, special, loops, binds
# @option -only-fs <string>                        only specific filesystems, separated with commas
# @option -only-mp <string>                        only specific mount points, separated with commas (supports wildcards)
# @option -output[mountpoint|size|used|avail|usage|inodes|inodes_used|inodes_avail|inodes_usage|type|filesystem] <string>  output fields: mountpoint, size, used, avail, usage, inodes, inodes_used, inodes_avail, inodes_usage, type, filesystem
# @option -sort[mountpoint|size|used|avail|usage|inodes|inodes_used|inodes_avail|inodes_usage|type|filesystem] <string>  sort output by: mountpoint, size, used, avail, usage, inodes, inodes_used, inodes_avail, inodes_usage, type, filesystem
# @option -style[unicode|ascii] <string>           style: unicode, ascii
# @option -theme[dark|light|ansi] <string>         color themes: dark, light, ansi
# @option -usage-threshold[yellow|red] <string>    specifies the coloring threshold of the usage bars as a floating point number from 0 to 1
# @flag -version                                   display version
# @flag -warnings                                  output all warnings to STDERR
# @option -width <uint>                            max output width

command eval "$(argc --argc-eval "$0" "$@")"