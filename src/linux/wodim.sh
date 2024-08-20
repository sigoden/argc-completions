_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
}

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
