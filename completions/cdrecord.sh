#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -version         Print version information and exit.
# @flag -v               Increment the level of general verbosity by one.
# @flag -V               Increment the verbose level in respect of SCSI command transport by one.
# @flag -s -silent       Do not print out a status report for failed SCSI commands.
# @flag -force           Force to continue on some errors.
# @flag -immed           Tell wodim to set the SCSI IMMED flag in certain commands (load/eject/blank/close_track/close_session).
# @flag -dummy           The CD/DVD-Recorder will go through all steps of the recording process, but the laser is turned off during this procedure.
# @flag -clone           Tells wodim to handle images created by readom -clone.
# @flag -dao
# @flag -sao             Set SAO (Session At Once) mode which is usually called Disk At Once mode.
# @flag -tao             Set TAO (Track At Once) writing mode.
# @flag -raw             Set RAW writing mode.
# @flag -raw96r          Select Set RAW writing mode with 2352 byte sectors plus 96 bytes of raw P-W subchannel data resulting in a sector size of 2448 bytes.
# @flag -raw96p          Select Set RAW writing mode with 2352 byte sectors plus 96 bytes of packed P-W subchannel data resulting in a sector size of 2448 bytes.
# @flag -raw16           Select Set RAW writing mode with 2352 byte sectors plus 16 bytes of P-Q subchannel data resulting in a sector size of 2368 bytes.
# @flag -multi           Allow multi session CDs to be made.
# @flag -msinfo          Retrieve multi session info in a form suitable for genisoimage and print it to standard output.
# @flag -toc             Retrieve and print out the table of content or PMA of a CD.
# @flag -atip            Retrieve and print out the ATIP (absolute Time in Pre-groove) info of a CD/DVD recordable or CD/DVD re-writable media.
# @flag -fix             The disk will only be fixated (i.e.
# @flag -nofix           Do not fixate the disk after writing the tracks.
# @flag -waiti           Wait for input to become available on standard input before trying to open the SCSI driver.
# @flag -load            Load the media and exit.
# @flag -lock            Load the media, lock the door and exit.
# @flag -eject           Eject disk after doing the work.
# @flag -format          Format a CD-RW/DVD-RW/DVD+RW disc.
# @flag -setdropts       Set the driveropts specified by driveropts=option list, the speed of the drive and the dummy flag and exit.
# @flag -checkdrive      Checks if a driver for the current drive is present and exit.
# @flag -prcap           Print the drive capabilities for SCSI-3/mmc compliant drives as obtained from mode page 0x2A.
# @flag -inq             Do an inquiry for the drive, print the inquiry info and exit.
# @flag -scanbus         Scan all SCSI devices on all SCSI busses and print the inquiry strings.
# @flag --devices        Look for useable devices using the system specific functions, eg.
# @flag -reset           Try to reset the SCSI bus where the CD recorder is located.
# @flag -abort           Try to send an abort sequence to the drive.
# @flag -overburn        Allow wodim to write more than the official size of a medium.
# @flag -ignsize         Ignore the known size of the medium.
# @flag -useinfo         Use *.inf files to overwrite audio options.
# @flag -packet          Set Packet writing mode.
# @flag -noclose         Do not close the current track, useful only when in packet writing mode.
# @flag -text            Write CD-Text information based on information taken from a file that contains ascii information for the text strings.
# @flag -swab            If this flag is present, audio data is assumed to be in byte-swapped (little-endian) order.
# @flag -data            If this flag is present, all subsequent tracks are written in CD-ROM mode 1 (Yellow Book) format.
# @flag -mode2           If this flag is present, all subsequent tracks are written in CD-ROM mode 2 format.
# @flag -xa              If this flag is present, all subsequent tracks are written in CD-ROM XA mode 2 form 1 format.
# @flag -xa1             If this flag is present, all subsequent tracks are written in CD-ROM XA mode 2 form 1 format.
# @flag -xa2             If this flag is present, all subsequent tracks are written in CD-ROM XA mode 2 form 2 format.
# @flag -xamix           If this flag is present, all subsequent tracks are written in a way that allows a mix of CD-ROM XA mode 2 form 1/2 format.
# @flag -cdi             If this flag is present, the TOC type for the disk is set to CDI.
# @flag -isosize         Use the ISO-9660 file system size as the size of the next track.
# @flag -pad             If the track is a data track, 15 sectors of zeroed data will be added to the end of this and each subsequent data track.
# @flag -shorttrack      Allow all subsequent tracks to violate the Red Book track length standard which requires a minimum track length of 4 seconds.
# @flag -noshorttrack    Re-enforce the Red Book track length standard.
# @flag -preemp          If this flag is present, all TOC entries for subsequent audio tracks will indicate that the audio data has been sampled with 50/15 microsec pre-emphasis.
# @flag -nopreemp        If this flag is present, all TOC entries for subsequent audio tracks will indicate that the audio data has been mastered with linear data - this is the default.
# @flag -copy            If this flag is present, all TOC entries for subsequent audio tracks of the resulting CD will indicate that the audio data has permission to be copied without limit.
# @flag -nocopy          If this flag is present, all TOC entries for subsequent audio tracks of the resulting CD will indicate that the audio data has permission to be copied only once for personal use - this is the default.
# @flag -scms            If this flag is present, all TOC entries for subsequent audio tracks of the resulting CD will indicate that the audio data has no permission to be copied anymore.
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    cat <<-'EOF' | _argc_util_comp_kv =
debug=;;specify debug level
kdebug=;;specify kernel debug level
kd=;;specify kernel debug level
minbuf=;;define the minimum drive buffer fill ratio
msifile=__argc_value=file;;stores the multi session info in a file
speed=;;set speed of drive
blank=`_choice_blank`;;blank a CD-RW disc
fs=;;set fifo size
ts=;;set maimum transfer size
dev=;;specify scsi device to use
gracetime=;;set grace time before starting to write
timeout=;;set default scsi timeout
driver=`_choice_driver`;;user supplied driver name
driveropts=`_choice_driveropts`;;a comma separated list of driver specific options
defpregap=;;amount of pre-gap sectors for all but first track
mcn=;;set media catalog number for this CD
textfile=__argc_value=file;;set the file with CD-Text data
cuefile=__argc_value=file;;set the file with CDRWIN CUE data
isrc=;;set isrc number for the next track
index=;;set the index list for the next track
padsize=;;amount of padding for next track
pregap=;;amount of pre-gap sectors before next track
tsize=;;length of valid data in next track
EOF
}

_choice_blank() {
    cat <<-'EOF'
help	Display a list of possible blanking types.
all	Blank the entire disk. This may take a long time.
fast	Minimally blank the disk. This results in erasing the PMA, the TOC and the pregap.
track	Blank a track.
unreserve	Unreserve a reserved track.
trtail	Blank the tail of a track.
unclose	Unclose last session.
session	Blank the last session.
EOF
}

_choice_driver() {
    cat <<-'EOF'
mmc_cd	The generic SCSI-3/mmc CD-ROM driver is auto-selected whenever wodim finds a MMC compliant drive that does not identify it‐ self to support writing at all, or that only identifies to support media or write modes not implemented in wodim.
mmc_cd_dvd	The generic SCSI-3/mmc CD/DVD driver is auto-selected whenever wodim finds a MMC-2 or MMC-3 compliant drive that seems to support more than one medium type and the tray is open or no medium could be found to select the right driver.
mmc_cdr	The generic SCSI-3/mmc CD-R/CD-RW driver is auto-selected whenever wodim find a MMC compliant drive that only supports to write CDs or a multi system drive that contains a CD as the current medium.
mmc_cdr_sony	The generic SCSI-3/mmc CD-R/CD-RW driver is auto-selected whenever wodim would otherwise select the mmc_cdr driver but the device seems to be made by Sony.
mmc_dvd	The generic SCSI-3/mmc-2 DVD-R/DVD-RW driver is auto-selected whenever wodim finds a MMC-2 or MMC-3 compliant drive that supports to write DVDs and an appropriate medium is loaded.
mmc_dvdplus	The generic SCSI-3/mmc-3 DVD+R/DVD+RW driver is auto-selected whenever one of the DVD+ media types that are incompatible to each other is found.
mmc_dvdplusr	The generic SCSI-3/mmc-3 DVD+R driver is auto-selected whenever a DVD+R medium is found in an appropriate writer.
mmc_dvdplusrw	The generic SCSI-3/mmc-3 DVD+RW driver is auto-selected whenever a DVD+RW medium is found in an appropriate writer.
cw_7501	The driver for Matsushita/Panasonic CW-7501 is auto-selected when wodim finds this old pre MMC drive.
kodak_pcd_600	The driver for Kodak PCD-600 is auto-selected when wodim finds this old pre MMC drive which has been the first high speed (6x) CD writer for a long time.
philips_cdd521	The driver for Philips CDD-521 is auto-selected when wodim finds a Philips CDD-521 drive (which is the first CD writer ever made) or one of the other drives that are known to behave similar to this drive.
philips_cdd521_old	The driver for Philips old CDD-521 is auto-selected when wodim finds a Philips CDD-521 with very old firmware which has some known limitations.
philips_cdd522	The driver for Philips CDD-522 is auto-selected when wodim finds a Philips CDD-522 which is the successor of the 521 or one of its variants with Kodak label.
philips_dumb	The driver for Philips CDD-521 with pessimistic assumptions is never auto-selected.
pioneer_dws114x	The driver for Pioneer DW-S114X is auto-selected when wodim finds one of the old non MMC CD writers from Pioneer.
plasmon_rf4100	The driver for Plasmon RF 4100 is auto-selected when wodim finds this specific variant of the Philips CDD-521.
ricoh_ro1060c	The driver for Ricoh RO-1060C is auto-selected when wodim finds this drive.
ricoh_ro1420c	The driver for Ricoh RO-1420C is auto-selected when wodim finds a drive with this specific variant of the Philips CDD-521 command set.
scsi2_cd	The generic SCSI-2 CD-ROM driver is auto-selected whenever wodim finds a pre MMC drive that does not support writing or a pre MMC writer that is not supported by wodim.
sony_cdu924	The driver for Sony CDU-924 / CDU-948 is auto-selected whenever wodim finds one of the old pre MMC CD writers from Sony.
teac_cdr50	The driver for Teac CD-R50S, Teac CD-R55S, JVC XR-W2010, Pinnacle RCD-5020 is auto-selected whenever one of the drives is found that is known to the non MMC command set used by TEAC and JVC.
tyuden_ew50	The driver for Taiyo Yuden EW-50 is auto-selected when wodim finds a drive with this specific variant of the Philips CDD-521 command set.
yamaha_cdr100	The driver for Yamaha CDR-100 / CDR-102 is auto-selected when wodim finds one of the old pre MMC CD writers from Yamaha.
cdr_simul	The simulation CD-R driver allows to run timing and speed tests with parameters that match the behavior of CD writers.
dvd_simul	The simulation DVD-R driver allows to run timing and speed tests with parameters that match the behavior of DVD writers.
EOF
}

_choice_driveropts() {
    cat <<-'EOF' | sed -e 's/=;;/=\x00\t/' -e 's/;;/\t/'
burnfree;;Turn the support for Buffer Underrun Free writing on.
noburnfree;;Turn the support for Buffer Underrun Free writing off.
varirec=;;Turn on the Plextor VariRec writing mode.
gigarec=;;Manage the Plextor GigaRec writing mode.
audiomaster;;Turn on the Yamaha Audio Master Q.
forcespeed;;Normally, modern drives know the highest possible speed for different media and may reduce the speed in order to grant best write quality.
noforcespeed;;Turn off the force speed feature.
speedread;;Some ultra high speed drives such as 48x and faster drives from Plextor limit the read speed for unknown media to e.
nospeedread;;Turn off unlimited read speed.
singlesession;;Turn the drive into a single session only drive.
nosinglesession;;Turn off single session mode.
hidecdr;;Hide the fact that a medium might be a recordable medium.
nohidecdr;;Turn off hiding CD-R media.
tattooinfo;;Use this option together with -checkdrive to retrieve the image size information for the Yamaha DiskT@2 feature.
tattoofile=;;Use this option together with -checkdrive to write an image prepared for the Yamaha DiskT@2 feature to the medium.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"