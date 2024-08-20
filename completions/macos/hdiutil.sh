#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg verb!

# {{ hdiutil attach
# @cmd
# @flag -readonly                force read-only
# @flag -kernel                  attempt to attach the image in-kernel
# @flag -mount                   required|optional|suppressed  mount volumes?
# @flag -nomount                 same as -mount suppressed
# @option -mountpoint <path>     mount at <path> instead of inside /Volumes
# @option -mountroot <path>      mount volumes on <path>/<volname>
# @option -mountrandom <path>    mount volumes on <path>/<random>
# @flag -verify                  (do not) verify image checksums
# @flag -noverify                (do not) verify image checksums
# @flag -autofsck                (do not) perform automatic filesystem checks
# @flag -noautofsck              (do not) perform automatic filesystem checks
# @flag -autoopen                (do not) open root of new mounts
# @flag -noautoopen              (do not) open root of new mounts
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -recover <keychain-file>
# @option -imagekey <<key>=<value>>
# @option -drivekey <<key>=<value>>
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
attach() {
    :;
}
# }} hdiutil attach

# {{ hdiutil detach
# @cmd
# @flag -force    forcibly detach
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg devname![`_choice_devname`]
detach() {
    :;
}
# }} hdiutil detach

# {{ hdiutil eject
# @cmd
# @flag -force    forcibly detach
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg devname![`_choice_devname`]
eject() {
    :;
}
# }} hdiutil eject

# {{ hdiutil verify
# @cmd
# @flag -cache                            do (not) cache checksum-verification [cache]
# @flag -nocache                          do (not) cache checksum-verification [cache]
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
verify() {
    :;
}
# }} hdiutil verify

# {{ hdiutil create
# @cmd
# @option -size <?? | ??b | ??k | ??m | ??g | ??t | ??p | ??e>
# @option -sectors <count>
# @option -megabytes <count>
# @option -library <MKDrivers>
# @option -layout[`_choice_layout`] <layout>
# @option -partitionType <partitionType>    [per -fs]
# @option -align <sector alignment>         [8 sectors]
# @flag -ov
# @option -volname <volumename>             ["untitled"]
# @option -stretch <?? | ?b | ??k | ??m | ??g | ??t | ??p | ??e> <HFS+>
# @option -type[`_choice_type`] <image type>
# @option -srcfolder <source folder>
# @flag -spotlight                          do (not) create a Spotlight™ index
# @flag -nospotlight                        do (not) create a Spotlight™ index
# @flag -anyowners                          do (not) attempt to preserve owners
# @flag -noanyowners                        do (not) attempt to preserve owners
# @flag -skipunreadable                     do (not) skip unreadable objects [no]
# @flag -noskipunreadable                   do (not) skip unreadable objects [no]
# @flag -atomic                             do (not) copy to temp location and then rename [yes]
# @flag -noatomic                           do (not) copy to temp location and then rename [yes]
# @option -srcowners[`_choice_srcowners`] <on|off|any|auto> <auto>
# @option -srcdevice <source dev node e.g. disk1 disk2s1>
# @option -format[`_choice_format`] <image type>
# @option -segmentSize[sectors|bytes|KiB|MiB|GiB|TiB|PiB|EiB] <?? | ??b | ??k | ??m | ??g | ??t | ??p | ??e> <deprecated>
# @flag -attach                             attach image after creation
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -certificate <path-to-cert-file>
# @option -pubkey <<public-key-hash>[,pkh2,...]>
# @option -imagekey <<key>=<value>>
# @option -tgtimagekey <<key>=<value>>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg sizespec!
# @arg imagepath!
create() {
    :;
}
# }} hdiutil create

# {{ hdiutil compact
# @cmd
# @flag -batteryallowed                   allow compacting on battery power
# @flag -sleepallowed                     allow machine to idle sleep (cancels compact)
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
compact() {
    :;
}
# }} hdiutil compact

# {{ hdiutil convert
# @cmd
# @flag -ov                               overwrite target file(s) if it already exists
# @option -align <sector alignment>       [4 aka 2K]
# @flag -pmap
# @option -segmentSize[blocks|bytes|kilobytes|megabytes|gigabytes|terabytes|petabytes|exabytes] <?? | ??b | ??k | ??m | ??g | ??t | ??p | ??e> <deprecated>
# @option -tasks <task count>             [12]
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -certificate <path-to-cert-file>
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -tgtimagekey <<key>=<value>>
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg format!
# @arg outfile!
# @arg image![`_choice_image`]
convert() {
    :;
}
# }} hdiutil convert

# {{ hdiutil burn
# @cmd
# @option -speed <speed e.g. 1 2 4 8 ... max>
# @option -device <OpenFirmware path>
# @flag -sizequery                        just calculate size of disc required
# @flag -testburn                         don't turn on laser
# @flag -eject                            do (not) eject disc after burning [default: eject]
# @flag -noeject                          do (not) eject disc after burning [default: eject]
# @flag -verifyburn                       do (not) verify disc contents after burn [default: verifyburn]
# @flag -noverifyburn                     do (not) verify disc contents after burn [default: verifyburn]
# @flag -addpmap                          do (not) add partition map [default: addpmap only if necessary]
# @flag -noaddpmap                        do (not) add partition map [default: addpmap only if necessary]
# @flag -synth                            do (not) synthesize new filesystem from volume [default: synth only if necessary]
# @flag -nosynth                          do (not) synthesize new filesystem from volume [default: synth only if necessary]
# @flag -skipfinalfree                    do (not) skip burning final free partition [default: skipfinalfree]
# @flag -noskipfinalfree                  do (not) skip burning final free partition [default: skipfinalfree]
# @flag -optimizeimage                    do (not) optimize filesystem for burning [default: nooptimizeimage]
# @flag -nooptimizeimage                  do (not) optimize filesystem for burning [default: nooptimizeimage]
# @flag -forceclose                       do (not) close disc (e.g. allow appending) after burning [default: noforceclose]
# @flag -noforceclose                     do (not) close disc (e.g. allow appending) after burning [default: noforceclose]
# @flag -underrun                         do (not) enable buffer underrun protection [default: nounderrun]
# @flag -nounderrun                       do (not) enable buffer underrun protection [default: nounderrun]
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @flag -erase                            erase disc (quickly)
# @flag -fullerase                        completely erase disc
# @flag -list                             list all burning devices, for -device
# @arg image![`_choice_image`]
burn() {
    :;
}
# }} hdiutil burn

# {{ hdiutil info
# @cmd
# @flag -s    display framework and driver version only
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
info() {
    :;
}
# }} hdiutil info

# {{ hdiutil checksum
# @cmd
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg checksumtype!
# @arg image![`_choice_image`]
checksum() {
    :;
}
# }} hdiutil checksum

# {{ hdiutil chpass
# @cmd
# @flag -oldstdinpass
# @flag -newstdinpass
# @option -recover <keychain-file>
# @option -pubkey <<public-key-hash>[,pkh2,...]>
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
chpass() {
    :;
}
# }} hdiutil chpass

# {{ hdiutil erasekeys
# @cmd
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
erasekeys() {
    :;
}
# }} hdiutil erasekeys

# {{ hdiutil imageinfo
# @cmd
# @flag -format                           just display the image format
# @flag -checksum                         just display the image checksum
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -verbose
# @flag -debug
# @arg image![`_choice_image`]
imageinfo() {
    :;
}
# }} hdiutil imageinfo

# {{ hdiutil isencrypted
# @cmd
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
isencrypted() {
    :;
}
# }} hdiutil isencrypted

# {{ hdiutil makehybrid
# @cmd
# @flag -hfs                                    Generate an HFS+ filesystem
# @flag -iso                                    Generate an ISO9660 filesystem
# @flag -joliet                                 Generate Joliet extensions to ISO9660
# @flag -udf                                    Generate a UDF filesystem
# @option -hfs-blessed-directory <directory>    Blessed directory
# @option -hfs-openfolder <directory>           First Finder open folder
# @option -hfs-startupfile-size <number>        Startup File size in bytes
# @option -hfs-volume-name <string>             Volume name for HFS+ filesystem
# @option -hide-hfs <string>                    Glob expression to hide in HFS+
# @option -only-hfs <string>                    Glob expression to only include in HFS+
# @option -abstract-file <file>                 Path to abstract file
# @option -bibliography-file <file>             Path to bibliography file
# @option -copyright-file <file>                Path to copyright file
# @option -application <string>                 Creator application name
# @option -preparer <string>                    Data preparer name
# @option -publisher <string>                   Publisher name
# @option -system-id <string>                   System Identifier
# @flag -keep-mac-specific                      Keep Macintosh-specific files
# @flag -eltorito-boot                          Path to El Torito Boot Image
# @flag -hard-disk-boot                         Use El Torito Hard Disk emulation mode
# @flag -no-emul-boot                           Use El Torito No Emulation mode
# @option -iso-volume-name <string>             Volume name for ISO9660 filesystem
# @option -joliet-volume-name <string>          Volume name for Joliet
# @option -hide-iso <string>                    Glob expression to hide in ISO9660
# @option -hide-joliet <string>                 Glob expression to hide in Joliet
# @option -only-iso <string>                    Glob expression to only include in ISO9660
# @option -only-joliet <string>                 Glob expression to only include in Joliet
# @option -udf-version <string>                 One of "1.02", "1.50"
# @option -udf-volume-name <string>             Volume name for UDF filesystem
# @option -hide-udf <string>                    Glob expression to hide in UDF
# @option -only-udf <string>                    Glob expression to only include in UDF
# @option -default-volume-name <string>         Default volume name
# @option -hide-all <string>                    Glob expression to hide
# @flag -ov                                     Overwrite output if already present
# @flag -print-size                             Print size estimate and quit
# @flag -plistin                                Accept command-line options as a plist on stdin
# @flag -verify                                 When source is a disk image, do (not) verify it
# @flag -noverify                               When source is a disk image, do (not) verify it
# @flag -kernel                                 When source is a disk image, force it to be attach out- (or in-) kernel
# @flag -nokernel                               When source is a disk image, force it to be attach out- (or in-) kernel
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg outfile!
# @arg source!
makehybrid() {
    :;
}
# }} hdiutil makehybrid

# {{ hdiutil mount
# @cmd
# @flag -readonly                force read-only
# @flag -kernel                  attempt to attach the image in-kernel
# @flag -mount                   required|optional|suppressed  mount volumes?
# @flag -nomount                 same as -mount suppressed
# @option -mountpoint <path>     mount at <path> instead of inside /Volumes
# @option -mountroot <path>      mount volumes on <path>/<volname>
# @option -mountrandom <path>    mount volumes on <path>/<random>
# @flag -verify                  (do not) verify image checksums
# @flag -noverify                (do not) verify image checksums
# @flag -autofsck                (do not) perform automatic filesystem checks
# @flag -noautofsck              (do not) perform automatic filesystem checks
# @flag -autoopen                (do not) open root of new mounts
# @flag -noautoopen              (do not) open root of new mounts
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -recover <keychain-file>
# @option -imagekey <<key>=<value>>
# @option -drivekey <<key>=<value>>
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
mount() {
    :;
}
# }} hdiutil mount

# {{ hdiutil mountvol
# @cmd
# @flag -whole               mount all partitions on same disk
# @flag -notimeout           no timeout when mounting
# @option -timeout <secs>    mount but timeout after <secs> seconds [default: 30]
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg devname![`_choice_devname`]
mountvol() {
    :;
}
# }} hdiutil mountvol

# {{ hdiutil unmount
# @cmd
# @flag -force               force unmount
# @flag -whole               unmount all partitions on same disk
# @flag -notimeout           no timeout when unmounting
# @option -timeout <secs>    unmount but timeout after <secs> seconds [default: 30]
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg mountpoint!
unmount() {
    :;
}
# }} hdiutil unmount

# {{ hdiutil plugins
# @cmd
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
plugins() {
    :;
}
# }} hdiutil plugins

# {{ hdiutil resize
# @cmd
# @option -size[bytes|blocks|kilobytes|megabytes|gigabytes|terabytes|petabytes|exabytes] <?? | ??b | ??k | ??m | ??g | ??t | ??p | ??e | min>
# @option -sectors <sector count>         min  minimum size
# @flag -imageonly                        only change image file size
# @flag -partitiononly                    only change the partition size
# @option -partitionID <ID>               resize partition with given <ID>
# @flag -nofinalgap                       allow complete elimination of trailing unallocated blocks for Apple Partition Maps
# @flag -limits                           for given options, don't resize, just print default min/current/max sizes
# @flag -alllimits                        for given options, don't resize, just list resize information for the image and all (any) partitions.
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -plist
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg sizespec!
# @arg image![`_choice_image`]
resize() {
    :;
}
# }} hdiutil resize

# {{ hdiutil segment
# @cmd
# @option -firstSegmentSize <size>        size of first segment
# @flag -restricted                       make restricted segments
# @flag -ov                               overwrite target file(s) if it already exists
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @option -tgtimagekey <<key>=<value>>
# @flag -plist
# @flag -puppetstrings
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg outfile!
# @arg num!
# @arg image![`_choice_image`]
segment() {
    :;
}
# }} hdiutil segment

# {{ hdiutil pmap
# @cmd
# @flag -simple         MediaKit's minimal report
# @flag -standard       MediaKit's standard report (no free space)
# @flag -complete       MK's comprehensive report (w/end offsets)
# @flag -diagnostic     MK's diagnostic mode (display all schemes)
# @flag -endoffsets     indicate last block of each partition
# @flag -nofreespace    don't show free space
# @flag -shims          show small islands of space < 32 blocks
# @flag -uuids          show uuid of gpt partitions
# @option -shadow <shadowfile>
# @flag -insecurehttp
# @option -cacert <file | dir>
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image-device! <image|device>
pmap() {
    :;
}
# }} hdiutil pmap

# {{ hdiutil udifderez
# @cmd
# @flag -xml                              emit XML format output (default)
# @flag -rez                              embed Rez format output
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
udifderez() {
    :;
}
# }} hdiutil udifderez

# {{ hdiutil udifrez
# @cmd
# @option -xml <input>                    copy resources from XML-format resource file <input>
# @flag -replaceall                       delete all resources in <image> first
# @option -encryption[`_choice_encryption`] <crypto method>
# @flag -stdinpass
# @flag -agentpass
# @option -srcimagekey <<key>=<value>>    (-imagekey is a synonym)
# @flag -verbose
# @flag -debug
# @flag -quiet
# @arg image![`_choice_image`]
udifrez() {
    :;
}
# }} hdiutil udifrez

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_encryption() {
    cat <<-'EOF'
AES-128	128-bit AES encryption (recommended)
AES-256	256-bit AES encryption (more secure, but slower)
EOF
}

_choice_image() {
    _argc_util_comp_path ext=.bin,.cdr,.dmg,.img,.iso,.sparse,.sparsebundle,.sparseimage
}

_choice_devname() {
    hdiutil info | sed -n 's|^/dev/\(\w\+\)\s\+\(.*\)|\1\t\2|p'
}

_choice_layout() {
    cat <<-'EOF'
MBRSPUD	Single partition - Master Boot Record Partition Map
SPUD	Single partition - Apple Partition Map
UNIVERSAL CD	CD/DVD
NONE	No partition map
GPTSPUD	Single partition - GUID Partition Map
SPCD	Single partition - CD/DVD
UNIVERSAL HD	Hard disk
ISOCD	Single partition - CD/DVD with ISO data
EOF
}

_choice_type() {
    cat <<-'EOF'
SPARSEBUNDLE	sparse bundle disk image
SPARSE	sparse disk image
UDIF	read/write disk image
UDTO	DVD/CD master
EOF
}

_choice_srcowners() {
    cat <<-'EOF'
on	enable owners on source
off	disable owners on source
any	leave owners state on source unchanged
auto	enable owners if source is a volume   
EOF
}

_choice_format() {
    cat <<-'EOF'
UDRO	read-only
UDCO	compressed (ADC)
UDZO	compressed
UDBZ	compressed (bzip2), deprecated
ULFO	compressed (lzfse)
ULMO	compressed (lzma)
UFBI	entire device
IPOD	iPod image
UDSB	sparsebundle
UDSP	sparse
UDRW	read/write
UDTO	DVD/CD master
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"