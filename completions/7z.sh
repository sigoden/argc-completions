#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -ai <[r[-|0]]{@listfile|!wildcard}>    Include archives
# @option -ax <[r[-|0]]{@listfile|!wildcard}>    eXclude archives
# @option -ao-[a|s|t|u]                          set Overwrite mode
# @flag -an                                      disable archive_name field
# @option -bb-[0|1|2|3] <0-3>                    set output log level
# @flag -bd                                      disable progress indicator
# @option -bs[o|e|p] <0|1|2>                     set output stream for output/error/progress line
# @flag -bt                                      show execution time statistics
# @option -i <[r[-|0]]{@listfile|!wildcard}>     Include filenames
# @option -m <Parameters>                        set compression Method
# @option -mmt <N>                               set number of CPU threads
# @option -mx <N>                                set compression level: -mx1 (fastest) ... -mx9 (ultra)
# @option -o <Directory>                         set Output directory
# @option -p <Password>                          set Password
# @option -r <-|0>                               Recurse subdirectories
# @option -sa-[a|e|s]                            set Archive name mode
# @option -scc[UTF-8|WIN|DOS]                    set charset for for console input/output
# @option -scs[UTF-8|UTF-16LE|UTF-16BE|WIN|DOS] <value>  set charset for list files
# @option -scrc[CRC32|CRC64|SHA1|SHA256] <value>  set hash function for x, e, h commands
# @flag -sdel                                    delete files after compression
# @option -seml <.>                              send archive by email
# @option -sfx <name>                            Create SFX archive
# @option -si <name>                             read data from stdin
# @flag -slp                                     set Large Pages mode
# @flag -slt                                     show technical information for l (List) command
# @flag -snh                                     store hard links as links
# @flag -snl                                     store symbolic links as links
# @flag -sni                                     store NT security information
# @flag -sns                                     store NTFS alternate streams
# @flag -so                                      write data to stdout
# @flag -spd                                     disable wildcard matching for file names
# @flag -spe                                     eliminate duplication of root folder for extract command
# @flag -spf                                     use fully qualified file paths
# @flag -ssc                                     set sensitive case mode
# @flag -ssw                                     compress shared files
# @flag -stl                                     set archive timestamp from the most recently modified file
# @option -stm <HexMask>                         set CPU thread affinity mask (hexadecimal number)
# @option -stx <Type>                            exclude archive type
# @option -t-[`_choice_type`] <Type>             Set type of archive
# @option -u <[-][p#][q#][r#][x#][y#][z#][!newArchiveName]>  Update options
# @option -v <{Size}[b|k|m|g]>                   Create volumes
# @option -w <path>                              assign Work directory.
# @option -x <[r[-|0]]{@listfile|!wildcard}>     eXclude filenames
# @flag -y                                       assume Yes on all queries
# @arg command[`_choice_command`]
# @arg args*

_choice_type() {
    if [[ "$argc_command" == @(a|d|rn|u) ]]; then
        printf "%s\n" 7z bzip2 gzip swfc tar wim xz zip    
    else
        printf "%s\n" 7z apm arj bzip2 cab chm cpio cramfs deb dmg elf fat flv \
            gzip hfs iso lzh lzma lzma86 macho mbr mslz mub nsis ntfs pe ppmd rar \
            rpm squashfs swf swfc tar udf vhd wim xar xz z zip
    fi
}

_choice_command() {
    cat <<-'EOF'
a	Add files to archive
b	Benchmark
d	Delete files from archive
e	Extract files from archive (without using directory names)
h	Calculate hash values for files
i	Show information about supported formats
l	List contents of archive
rn	Rename files in archive
t	Test integrity of archive
u	Update files to archive
x	eXtract files with full paths
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"