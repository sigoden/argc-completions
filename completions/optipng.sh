#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? -help              show this help
# @flag -h                    show this help
# @option -o <level>          optimization level (0-7)  [default: 2]
# @flag -v                    run in verbose mode / show copyright and version info
# @flag -backup               keep a backup of the modified files
# @flag -keep                 keep a backup of the modified files
# @flag -clobber              overwrite existing files
# @flag -fix                  enable error recovery
# @flag -force                enforce writing of a new output file
# @flag -preserve             preserve file attributes if possible
# @flag -quiet                run in quiet mode
# @flag -silent               run in quiet mode
# @flag -simulate             run in simulation mode
# @option -out <file>         write output file to <file>
# @option -dir <directory>    write output file(s) to <directory>
# @option -log <file>         log messages to <file>
# @option -f <filters>        PNG delta filters (0-5)  [default: 0,5]
# @option -i <type>           PNG interlace type (0-1)
# @option -zc <levels>        zlib compression levels (1-9)  [default: 9]
# @option -zm <levels>        zlib memory levels (1-9)  [default: 8]
# @option -zs <strategies>    zlib compression strategies (0-3)  [default: 0-3]
# @option -zw[256|512|1k|2k|4k|8k|16k|32k] <size>  zlib window size
# @flag -full                 produce a full report on IDAT (might reduce speed)
# @flag -nb                   no bit depth reduction
# @flag -nc                   no color type reduction
# @flag -np                   no palette reduction
# @flag -nx                   no reductions
# @flag -nz                   no IDAT recoding
# @flag -snip                 cut one image out of multi-image or animation files
# @option -strip <objects>    strip metadata objects (e.g. "all")
# @flag -o0                   <=>  -o1 -nx -nz  (0 or 1 trials)
# @flag -o1                   <=>  -zc9 -zm8 -zs0 -f0  (1 trial) (or...)  -zc9 -zm8 -zs1 -f5  (1 trial)
# @flag -o2                   <=>  -zc9 -zm8 -zs0-3 -f0,5  (8 trials)
# @flag -o3                   <=>  -zc9 -zm8-9 -zs0-3 -f0,5  (16 trials)
# @flag -o4                   <=>  -zc9 -zm8 -zs0-3 -f0-5  (24 trials)
# @flag -o5                   <=>  -zc9 -zm8-9 -zs0-3 -f0-5  (48 trials)
# @flag -o6                   <=>  -zc1-9 -zm8 -zs0-3 -f0-5  (120 trials)
# @flag -o7                   <=>  -zc1-9 -zm1-9 -zs0-3 -f0-5  (1080 trials)
# @flag -zm1-9                <=>  -zc1-9 -zm1-9 -zs0-3 -f0-5  (1080 trials)
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"