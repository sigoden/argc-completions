#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -1                                        compress faster
# @flag -9                                        compress better
# @flag --best                                    compress best (can be slow for big files)
# @flag -d                                        decompress
# @flag -l                                        list compressed file
# @flag -t                                        test compressed file
# @flag -V                                        display version number
# @flag -h                                        give this help
# @flag -L                                        display software license
# @flag -q                                        be quiet
# @flag -v                                        be verbose
# @option -o <FILE>                               write output to 'FILE'
# @flag -f                                        force compression of suspicious files
# @flag --no-color                                change look
# @flag --mono                                    change look
# @flag --color                                   change look
# @flag --no-progress                             change look
# @flag --lzma                                    try LZMA [slower but tighter than NRV]
# @flag --brute                                   try all available compression methods & filters [slow]
# @flag --ultra-brute                             try even more compression variants [very slow]
# @flag -k --backup                               keep backup files
# @flag --no-backup                               no backup files [default]
# @option --overlay[`__choice_overlay`] <copy>    copy any extra data attached to the file [default]
# @flag --force-overwrite                         force overwrite of output files
# @flag --link                                    preserve hard links (Unix only) [USE WITH CARE]
# @flag --no-link                                 do not preserve hard links but rename files [default]
# @flag --no-mode                                 do not preserve file mode (aka permissions)
# @flag --no-owner                                do not preserve file ownership
# @flag --no-time                                 do not preserve file timestamp
# @flag --coff                                    produce COFF output [default: EXE]
# @flag --8086                                    make compressed com work on any 8086
# @flag --no-reloc                                put no relocations in to the exe header
# @flag --8-bit                                   uses 8 bit size compression [default: 32 bit]
# @flag --8mib-ram                                8 megabyte memory limit [default: 2 MiB]
# @flag --boot-only                               disables client/host transfer compatibility
# @flag --no-align                                don't align to 2048 bytes [enables: --console-run]
# @flag --le                                      produce LE output [default: EXE]
# @option --compress-exports[`_choice_compress_exports`] <0>  do not compress the export section
# @option --compress-icons[`_choice_compress_icons`] <0>  do not compress any icons
# @option --compress-resources <0>                do not compress any resources at all
# @option --keep-resource <list>                  do not compress resources specified by list
# @option --strip-relocs[`_choice_strip_relocs`] <0>  do not strip relocations
# @flag --preserve-build-id                       copy .gnu.note.build-id to compressed output
# @arg file*

__choice_overlay() {
    cat <<-'EOF'
copy	copy any extra data attached to the file [default]
strip	strip any extra data attached to the file
skip	don't compress a file with an overlay
EOF
}

_choice_compress_exports() {
    cat <<-'EOF'
0	do not compress the export section
1	compress the export section [default]
EOF
}

_choice_compress_icons() {
    cat <<-'EOF'
0	do not compress any icons
1	compress all but the first icon
2	compress all but the first icon directory [default]
3	compress all icons
EOF
}

_choice_strip_relocs() {
    cat <<-'EOF'
0	do not strip relocations
1	strip relocations [default]
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"