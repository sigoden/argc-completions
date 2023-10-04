#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -nobak                                     Do not include backup files
# @flag -no-bak                                    Do not include backup files
# @option -abstract <FILE>                         Set Abstract filename
# @option -A -appid <ID>                           Set Application ID
# @option -biblio <FILE>                           Set Bibliographic filename
# @flag -cache-inodes                              Cache inodes (needed to detect hard links)
# @flag -no-cache-inodes                           Do not cache inodes (if filesystem has no unique unides)
# @flag -check-oldnames                            Check all imported ISO9660 names from old session
# @option -check-session <FILE>                    Check all ISO9660 names from previous session
# @option -copyright <FILE>                        Set Copyright filename
# @flag -debug                                     Set debug flag
# @option -b -eltorito-boot <FILE>                 Set El Torito boot image name
# @option -e -efi-boot <FILE>                      Set EFI boot image name
# @flag -eltorito-alt-boot                         Start specifying alternative El Torito boot parameters
# @option -B -sparc-boot <FILES>                   FILES Set sparc boot image names
# @option -sunx86-boot <FILES>                     Set sunx86 boot image names
# @option -G -generic-boot <FILE>                  FILE Set generic boot image name
# @option -sparc-label <label> <text>              Set sparc boot disk label
# @option -sunx86-label <label> <text>             Set sunx86 boot disk label
# @option -c -eltorito-catalog <FILE>              Set El Torito boot catalog name
# @option -C -cdrecord-params <PARAMS>             Magic paramters from cdrecord
# @flag -d -omit-period                            Omit trailing periods from filenames (violates ISO9660)
# @option -dir-mode <mode>                         Make the mode of all directories this mode.
# @flag -D -disable-deep-relocation                Disable deep directory relocation (violates ISO9660)
# @option -file-mode <mode>                        Make the mode of all plain files this mode.
# @flag -f -follow-links                           Follow symbolic links
# @option -gid <gid>                               Make the group owner of all files this gid.
# @flag -graft-points                              Allow to use graft points for filenames
# @option -root <DIR>                              Set root directory for all new files and directories
# @option -old-root <DIR>                          Set root directory in previous session that is searched for files
# @flag -help                                      Print option help
# @option -hide <GLOBFILE>                         Hide ISO9660/RR file
# @option -hide-list <FILE>                        File with list of ISO9660/RR files to hide
# @option -hidden <GLOBFILE>                       Set hidden attribute on ISO9660 file
# @option -hidden-list <FILE>                      File with list of ISO9660 files with hidden attribute
# @option -hide-joliet <GLOBFILE>                  Hide Joliet file
# @option -hide-joliet-list <FILE>                 File with list of Joliet files to hide
# @flag -hide-joliet-trans-tbl                     Hide TRANS.TBL from Joliet tree
# @flag -hide-rr-moved                             Rename RR_MOVED to .rr_moved in Rock Ridge tree
# @flag -gui                                       Switch behaviour for GUI
# @option -i <ADD_FILES>                           No longer supported
# @option -input-charset <CHARSET>                 Local input charset for file name conversion
# @option -output-charset <CHARSET>                Output charset for file name conversion
# @option -iso-level[1|2|3] <LEVEL>                Set ISO9660 conformance level (1..3) or 4 for ISO9660 version 2
# @flag -J -joliet                                 Generate Joliet directory information
# @flag -joliet-long                               Allow Joliet file names to be 103 Unicode characters
# @option -jcharset <CHARSET>                      Local charset for Joliet directory information
# @flag -l -full-iso9660-filenames                 Allow full 31 character filenames for ISO9660 names
# @flag -max-iso9660-filenames                     Allow 37 character filenames for ISO9660 names (violates ISO9660)
# @flag -allow-limited-size                        Allow different file sizes in ISO9660/UDF on large files
# @flag -ldots                                     Allow ISO9660 filenames to start with '.' (violates ISO9660)
# @flag -L -allow-leading-dots                     Allow ISO9660 filenames to start with '.' (violates ISO9660)
# @option -log-file <LOG_FILE>                     Re-direct messages to LOG_FILE
# @option -m -exclude <GLOBFILE>                   Exclude file name
# @option -exclude-list <FILE>                     File with list of file names to exclude
# @flag -pad                                       Pad output to a multiple of 32k (default)
# @flag -no-pad                                    Do not pad output to a multiple of 32k
# @option -M -prev-session <FILE>                  FILE Set path to previous session to merge
# @option -dev <SCSIdev>                           Set path to previous session to merge
# @flag -N -omit-version-number                    Omit version number from ISO9660 filename (violates ISO9660)
# @option -new-dir-mode <mode>                     Mode used when creating new directories.
# @flag -force-rr                                  Inhibit automatic Rock Ridge detection for previous session
# @flag -no-rr                                     Inhibit reading of Rock Ridge attributes from previous session
# @flag -no-split-symlink-components               Inhibit splitting symlink components
# @flag -no-split-symlink-fields                   Inhibit splitting symlink fields
# @option -o -output <FILE>                        Set output file name
# @option -path-list <FILE>                        File with list of pathnames to process
# @option -p -preparer <PREP>                      Set Volume preparer
# @flag -print-size                                Print estimated filesystem size and exit
# @option -P -publisher <PUB>                      Set Volume publisher
# @flag -quiet                                     Run quietly
# @flag -r -rational-rock                          Generate rationalized Rock Ridge directory information
# @flag -R -rock                                   Generate Rock Ridge directory information
# @option -s -sectype <TYPE>                       Set output sector type to e.g. data/xa1/raw
# @option -alpha-boot <FILE>                       Set alpha boot image name (relative to image root)
# @option -hppa-cmdline <CMDLINE>                  Set hppa boot command line (relative to image root)
# @option -hppa-kernel-32 <FILE>                   Set hppa 32-bit image name (relative to image root)
# @option -hppa-kernel-64 <FILE>                   Set hppa 64-bit image name (relative to image root)
# @option -hppa-bootloader <FILE>                  Set hppa boot loader file name (relative to image root)
# @option -hppa-ramdisk <FILE>                     Set hppa ramdisk file name (relative to image root)
# @option -mips-boot <FILE>                        Set mips boot image name (relative to image root)
# @option -mipsel-boot <FILE>                      Set mipsel boot image name (relative to image root)
# @option -jigdo-jigdo <FILE>                      Produce a jigdo .jigdo file as well as the .iso
# @option -jigdo-template <FILE>                   Produce a jigdo .template file as well as the .iso
# @option -jigdo-min-file-size <SIZE>              Minimum size for a file to be listed in the jigdo file
# @option -jigdo-force-md5 <PATTERN>               Pattern(s) where files MUST match an externally-supplied MD5sum
# @option -jigdo-exclude <PATTERN>                 Pattern(s) to exclude from the jigdo file
# @option -jigdo-map <PATTERN1=PATTERN2>           Pattern(s) to map paths (e.g. Debian=/mirror/debian)
# @option -md5-list <FILE>                         File containing MD5 sums of the files that should be checked
# @option -jigdo-template-compress <ALGORITHM>     Choose to use gzip or bzip2 compression for template data; default is gzip
# @option -checksum_algorithm_iso* <alg1,alg2,>    Specify the checksum types desired for the output image
# @option -checksum_algorithm_template* <alg1,alg2,>  Specify the checksum types desired for the output jigdo template
# @option -sort <FILE>                             Sort file content locations according to rules in FILE
# @flag -split-output                              Split output into files of approx.
# @flag -stream-file-name                          FILE_NAME Set the stream file ISO9660 name (incl.
# @option -stream-media-size <value>               Set the size of your CD media in sectors
# @option -sysid <ID>                              Set System ID
# @flag -T -translation-table                      Generate translation tables for systems that don't understand long filenames
# @option -table-name <TABLE_NAME>                 Translation table file name
# @option -ucs-level <LEVEL>                       Set Joliet UCS level (1..3)
# @flag -udf                                       Generate UDF file system
# @flag -dvd-video                                 Generate DVD-Video compliant UDF file system
# @option -uid <uid>                               Make the owner of all files this uid.
# @flag -U -untranslated-filenames                 Allow Untranslated filenames (for HPUX & AIX - violates ISO9660).
# @flag -relaxed-filenames                         Allow 7 bit ASCII except lower case characters (violates ISO9660)
# @flag -no-iso-translate                          Do not translate illegal ISO characters '~', '-' and '#' (violates ISO9660)
# @flag -allow-lowercase                           Allow lower case characters in addition to the current character set (violates ISO9660)
# @flag -allow-multidot                            Allow more than one dot in filenames (e.g. .tar.gz) (violates ISO9660)
# @option -use-fileversion <LEVEL>                 Use file version ♯ from filesystem
# @flag -v -verbose                                Verbose
# @flag -version                                   Print the current version
# @option -V -volid <ID>                           Set Volume ID
# @option -volset <ID>                             Set Volume set ID
# @option -volset-size <value>                     Set Volume set size
# @option -volset-seqno <value>                    Set Volume set sequence number
# @option -x -old-exclude <FILE>                   Exclude file name(depreciated)
# @flag -hard-disk-boot                            Boot image is a hard disk image
# @flag -no-emul-boot                              Boot image is 'no emulation' image
# @flag -no-boot                                   Boot image is not bootable
# @option -boot-load-seg <value>                   Set load segment for boot image
# @option -boot-load-size <value>                  Set numbers of load sectors
# @flag -boot-info-table                           Patch boot image with info table
# @flag -XA                                        Generate XA directory attruibutes
# @flag -xa                                        Generate rationalized XA directory attruibutes
# @flag -z -transparent-compression                Enable transparent compression of files
# @option -hfs-type <TYPE>                         Set HFS default TYPE
# @option -hfs-creator <CREATOR>                   Set HFS default CREATOR
# @flag -g -apple                                  Add Apple ISO9660 extensions
# @flag -h -hfs                                    Create ISO9660/HFS hybrid
# @option -H -map <MAPPING_FILE>                   Map file extensions to HFS TYPE/CREATOR
# @option -magic <FILE>                            Magic file for HFS TYPE/CREATOR
# @flag -probe                                     Probe all files for Apple/Unix file types
# @flag -mac-name                                  Use Macintosh name for ISO9660/Joliet/RockRidge file name
# @flag -no-mac-files                              Do not look for Unix/Mac files (depreciated)
# @option -boot-hfs-file <FILE>                    Set HFS boot image name
# @flag -part                                      Generate HFS partition table
# @option -cluster-size <SIZE>                     Cluster size for PC Exchange Macintosh files
# @option -auto <FILE>                             Set HFS AutoStart file name
# @flag -no-desktop                                Do not create the HFS (empty) Desktop files
# @option -hide-hfs <GLOBFILE>                     Hide HFS file
# @option -hide-hfs-list <FILE>                    List of HFS files to hide
# @option -hfs-volid <HFS_VOLID>                   Volume name for the HFS partition
# @flag -icon-position                             Keep HFS icon position
# @option -root-info <FILE>                        finderinfo for root folder
# @option -input-hfs-charset <CHARSET>             Local input charset for HFS file name conversion
# @flag -output-hfs-charset                        CHARSET Output charset for HFS file name conversion
# @flag -hfs-unlock                                Leave HFS Volume unlocked
# @option -hfs-bless <FOLDER_NAME>                 Name of Folder to be blessed
# @option -hfs-parms <PARAMETERS>                  Comma separated list of HFS parameters
# @option -prep-boot <FILE>                        PReP boot image file -- up to 4 are allowed
# @flag -chrp-boot                                 Add CHRP boot header
# @flag --cap                                      Look for AUFS CAP Macintosh files
# @flag --netatalk                                 Look for NETATALK Macintosh files
# @flag --double                                   Look for AppleDouble Macintosh files
# @flag --ethershare                               Look for Helios EtherShare Macintosh files
# @flag --exchange                                 Look for PC Exchange Macintosh files
# @flag --sgi                                      Look for SGI Macintosh files
# @flag --macbin                                   Look for MacBinary Macintosh files
# @flag --single                                   Look for AppleSingle Macintosh files
# @flag --ushare                                   Look for IPT UShare Macintosh files
# @flag --xinet                                    Look for XINET Macintosh files
# @flag --dave                                     Look for DAVE Macintosh files
# @flag --sfm                                      Look for SFM Macintosh files
# @flag --osx-double                               Look for MacOS X AppleDouble Macintosh files
# @flag --osx-hfs                                  Look for MacOS X HFS Macintosh files
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"