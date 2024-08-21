#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option --device <[prot:]bus,id,lun>           Sets the SCSI address of the CD-recorder in form of a bus/id/lun triple, e.g. '0,2,0' for the logical unit 0 of SCSI device with ID 2 on bus 0.
# @option --source-device <[prot:]bus,id,lun>    Like above but used for the copy command to specify the source device.
# @option --driver[cdd2600|plextor|plextor-scan|generic-mmc|generic-mmc-raw|ricoh-mp6200|yamaha-cdr10x|teac-cdr55|sony-cdu920|sony-cdu948|taiyo-yuden|toshiba] <driver-id:option-flags>  Force usage of specified driver instead of the automatically determined driver.
# @option --source-driver <driver-id:option-flags>  Like above but used for the device specified with option --source-device.
# @option --speed <value>                        Set the writing speed to value.
# @option --blank-mode <mode>                    Sets the blanking mode.
# @option --datafile <file>                      Used for read-toc, read-cd and copy.
# @flag --read-raw                               Only used for commands read-cd and read-toc.
# @option --read-subchan <mode>                  Used by commands read-cd, read-toc and copy.
# @flag --no-mode2-mixed                         Only used for commands read-cd and read-toc.
# @flag --tao-source                             This option indicates to the commands read-toc and read-cd that the source CD was written in TAO mode.
# @option --tao-source-adjust <link-blocks>      Specifies the number of link blocks for tracks written in TAO mode.
# @flag --fast-toc                               Only used for command read-toc.
# @option --buffers <buffer-count>               Specifies the number of buffers that are allocated to avoid buffer under runs.
# @flag --multi                                  If this option is given the session will not be closed after the audio data is successfully written.
# @flag --overburn                               By default cdrdao will not allow one to write more data on a medium than specified by the current medium.
# @flag --eject                                  Eject the CD-R after writing or write simulation.
# @flag --swap                                   Swap the byte order of all samples that are send to the CD-recorder.
# @option --session <session-nr>                 Used for read-toc and read-cd to specify the session which should be processed on multi session CDs.
# @flag --reload                                 Indicates that the tray may be opened before writing without prompting the user to reset the disk status after a simulation run.
# @flag --force                                  Forces the execution of an operation that otherwise would not be performed.
# @option --paranoia-mode <mode>                 Sets the correction mode for digital audio extraction.
# @flag --keepimage                              If a CD is copied with command copy this option will cause that the created image is not removed after the copy process has finished.
# @flag --on-the-fly                             Perform CD copy on the fly without creating an image file.
# @flag --with-cddb                              Enables the automatic fetching of CDDB data for use as CD-TEXT data for commands copy, read-toc and read-cd.
# @option --cddb-servers <server-list>           Sets space or ',' separated list of CDDB servers used for command read-cddb or for commands where the --with-cddb option is active.
# @option --cddb-timeout <timeout>               Sets the timeout in seconds used for connections to CDDB servers.
# @option --cddb-directory <directory>           Specifies the local CDDB database directory where fetched CDDB records will be stored.
# @option --tmpdir <directory>                   Specifies the directory in which to store temporary data files created from decoding MP3 and Ogg Vorbis files.
# @flag --keep                                   Upon exit from cdrdao, do not delete temporary WAV files created from MP3 and Ogg Vorbis files.
# @flag --save                                   Saves some of the current options to the settings file "$HOME/.cdrdao" and exit.
# @flag -n                                       Suppresses the 10 second pause before writing or simulating.
# @option -v <verbose-level>                     Sets verbose level.

# {{ cdrdao show-toc
# @cmd Print out a summary about what will be written to the CD-R.
show-toc() {
    :;
}
# }} cdrdao show-toc

# {{ cdrdao toc-info
# @cmd Prints out short toc-file summary.
toc-info() {
    :;
}
# }} cdrdao toc-info

# {{ cdrdao toc-size
# @cmd Prints total number of blocks for toc.
toc-size() {
    :;
}
# }} cdrdao toc-size

# {{ cdrdao read-toc
# @cmd Analyze each track of the inserted CD and create a toc-file that can be used to make a more or less exact copy of the CD.
read-toc() {
    :;
}
# }} cdrdao read-toc

# {{ cdrdao read-cd
# @cmd Copies all tracks of the inserted CD to an image file and creates a corresponding toc-file.
read-cd() {
    :;
}
# }} cdrdao read-cd

# {{ cdrdao read-cddb
# @cmd Tries to retrieve title and artist data from a CDDB server for the CD represented by the given toc-file.
read-cddb() {
    :;
}
# }} cdrdao read-cddb

# {{ cdrdao show-data
# @cmd Print out all samples that would be written to the CD-R.
show-data() {
    :;
}
# }} cdrdao show-data

# {{ cdrdao read-test
# @cmd Check if all data can be read from the audio files that are defined in the toc-file.
read-test() {
    :;
}
# }} cdrdao read-test

# {{ cdrdao disk-info
# @cmd Shows information about the inserted CD-R.
disk-info() {
    :;
}
# }} cdrdao disk-info

# {{ cdrdao discid
# @cmd Prints out CDDB information.
discid() {
    :;
}
# }} cdrdao discid

# {{ cdrdao msinfo
# @cmd Shows information required for creating multi session disks with mkisofs.
msinfo() {
    :;
}
# }} cdrdao msinfo

# {{ cdrdao drive-info
# @cmd Shows drive information.
drive-info() {
    :;
}
# }} cdrdao drive-info

# {{ cdrdao unlock
# @cmd Tries to unlock the recorder device after a failed write or simulation run.
unlock() {
    :;
}
# }} cdrdao unlock

# {{ cdrdao blank
# @cmd Blanks a CD-RW.
blank() {
    :;
}
# }} cdrdao blank

# {{ cdrdao scanbus
# @cmd Scan for devices.
scanbus() {
    :;
}
# }} cdrdao scanbus

# {{ cdrdao simulate
# @cmd Like write but laser stays cold.
simulate() {
    :;
}
# }} cdrdao simulate

# {{ cdrdao write
# @cmd Write the CD-R according to the specifications in the toc-file.
write() {
    :;
}
# }} cdrdao write

# {{ cdrdao copy
# @cmd Performs all steps to copy a CD.
copy() {
    :;
}
# }} cdrdao copy

command eval "$(argc --argc-eval "$0" "$@")"