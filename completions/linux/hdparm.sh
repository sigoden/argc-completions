#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                                   Get/set sector count for filesystem (software) read-ahead.
# @flag -A                                   Get/set the IDE drive's read-lookahead feature (usually ON by default).
# @flag -b                                   Get/set bus state.
# @flag -B                                   Get/set Advanced Power Management feature, if the drive supports it.
# @flag -c                                   Get/set (E)IDE 32-bit I/O support.
# @flag -C                                   Check the current IDE power mode status, which will always be one of unknown (drive does not support this command), active/idle (normal operation), standby (low power mode, drive has spun down), or sleeping (lowest power mode, drive is completely shut down).
# @flag -d                                   Get/set the "using_dma" flag for this drive.
# @flag --dco-freeze                         DCO stands for Device Configuration Overlay, a way for vendors to selectively disable certain features of a drive.
# @flag --dco-identify                       Query and dump information regarding drive configuration settings which can be disabled by the vendor or OEM installer.
# @flag --dco-restore                        Reset all drive settings, features, and accessible capacities back to factory defaults and full capabilities.
# @flag --direct                             Use the kernel's "O_DIRECT" flag when performing a -t timing test.
# @flag --drq-hsm-error                      VERY DANGEROUS, DON'T EVEN THINK ABOUT USING IT.
# @flag -D                                   Enable/disable the on-drive defect management feature, whereby the drive firmware tries to automatically manage defective sectors by relocating them to "spare" sectors reserved by the factory for such.
# @flag -E                                   Set cd/dvd drive speed.
# @flag -f                                   Sync and flush the buffer cache for the device on exit.
# @flag --fallocate                          This option currently works only on ext4 and xfs filesystem types.
# @flag --fibmap                             When used, this must be the only option given.
# @flag --fwdownload                         When used, this should be the only option given.
# @flag -F                                   Flush the on-drive write cache buffer (older drives may not implement this).
# @option -g[cylinders|heads|sectors]        Display the drive geometry, the size (in sectors) of the device, and the starting offset (in sectors) of the device from the beginning of the drive.
# @flag -h                                   Display terse usage information (help).
# @flag -H                                   Read the temperature from some (mostly Hitachi) drives.
# @option -i[IDE|libata]                     Display the identification info which the kernel drivers have stored from boot/configuration time.
# @flag --idle-immediate                     Issue an ATA IDLE_IMMEDIATE command, to put the drive into a lower power state.
# @flag --idle-unload                        Issue an ATA IDLE_IMMEDIATE_WITH_UNLOAD command, to unload or park the heads and put the drive into a lower power state.
# @flag -I                                   Request identification info directly from the drive, which is displayed in a new expanded format with considerably more detail than with the older -i option.
# @option --Iraw <pathname>                  This option dumps the drive's identify data in raw binary to the specified file.
# @flag --Istdin                             This is a special variation on the -I option, which accepts a drive identification block as standard input instead of using a /dev/hd* parameter.
# @flag --Istdout                            This option dumps the drive's identify data in hex to stdout, in a format similar to that from /proc/ide/*/identify, and suitable for later use with the --Istdin option.
# @flag -J                                   Get/set the Western Digital (WD) Green Drive's "idle3" timeout value.
# @flag -k                                   Get/set the "keep_settings_over_reset" flag for the drive.
# @flag -K                                   Set the drive's "keep_features_over_reset" flag.
# @flag -L                                   Set the drive's doorlock flag.
# @flag -m                                   Get/set sector count for multiple sector I/O on the drive.
# @flag --make-bad-sector                    Deliberately create a bad sector (aka.
# @flag -M                                   Get/set Automatic Acoustic Management (AAM) setting.
# @flag -n                                   Get or set the "ignore_write_errors" flag in the driver.
# @flag -N                                   Get/set  max  visible  number of sectors, also known as the Host Protected Area setting.
# @flag --offset                             Offsets to given number of GiB (1024*1024*1024) when performing -t timings of device reads.
# @flag -p                                   Attempt to reprogram the IDE interface chipset for the specified PIO mode, or attempt to auto-tune for the "best" PIO mode supported by the drive.
# @flag -P                                   Set the maximum sector count for the drive's internal prefetch mechanism.
# @flag --prefer-ata12                       When using the SAT (SCSI ATA Translation) protocol, hdparm normally prefers to use the 16-byte command format whenever possible.
# @flag -q                                   Handle the next option quietly, suppressing normal output (but not error messages).
# @flag -Q                                   Get or set the device's command queue_depth, if supported by the hardware.
# @flag -r                                   Get/set read-only flag for the device.
# @flag -R                                   Get/set Write-Read-Verify feature, if the drive supports it.
# @flag --read-sector                        Reads from the specified sector number, and dumps the contents in hex to standard output.
# @flag --repair-sector                      This is an alias for the --write-sector option.
# @flag -s                                   Enable/disable the power-on in standby feature, if supported by the drive.
# @flag -S                                   Put  the  drive into idle (low-power) mode, and also set the standby (spindown) timeout for the drive.
# @flag --set-sector-size                    For drives which support reconfiguring of the Logical Sector Size, this flag can be used to specify the new desired sector size in bytes.
# @flag -t                                   Perform timings of device reads for benchmark and comparison purposes.
# @flag -T                                   Perform timings of cache reads for benchmark and comparison purposes.
# @flag --trim-sector-ranges                 For Solid State Drives (SSDs).
# @flag --trim-sector-ranges-stdin           Identical to --trim-sector-ranges above, except the list of lba:count pairs is read from stdin rather than being specified on the command line.
# @flag -u                                   Get/set the interrupt-unmask flag for the drive.
# @flag -v                                   Display some basic settings, similar to -acdgkmur for IDE.
# @flag -V                                   Display program version and exit immediately.
# @flag --verbose                            Display extra diagnostics from some commands.
# @flag -w                                   Perform a device reset (DANGEROUS).
# @flag --write-sector                       Writes zeros to the specified sector number.
# @flag -W                                   Get/set the IDE/SATA drive's write-caching feature.
# @flag -X                                   Set the IDE transfer mode for (E)IDE/ATA drives.
# @flag -y                                   Force an IDE drive to immediately enter the low power consumption standby mode, usually causing it to spin down.
# @flag -Y                                   Force an IDE drive to immediately enter the lowest power consumption sleep mode, causing it to shut down completely.
# @flag -z                                   Force a kernel re-read of the partition table of the specified device(s).
# @flag -Z                                   Disable the automatic power-saving function of certain Seagate drives (ST3xxx models?), to prevent them from idling/spinning-down at inconvenient times.
# @flag --security-help                      Display terse usage info for all of the --security-* options.
# @flag --security-freeze                    Freeze the drive's security settings.
# @flag --security-prompt-for-password       Prompt for the --security PWD rather than getting from the command line args.
# @option --security-unlock <PWD>            Unlock the drive, using password PWD.
# @option --security-set-pass <PWD>          Lock the drive, using password PWD (Set Password) (DANGEROUS).
# @option --security-disable <PWD>           Disable drive locking, using password PWD.
# @option --security-erase <PWD>             Erase (locked) drive, using password PWD (DANGEROUS).
# @option --security-erase-enhanced <PWD>    Enhanced erase (locked) drive, using password PWD (DANGEROUS).
# @option --user-master <USER>               Specifies which password (user/master) to select.
# @option --security-mode <MODE>             Specifies which security mode (high/maximum) to set.
# @arg device-path

command eval "$(argc --argc-eval "$0" "$@")"