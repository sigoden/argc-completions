#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --connect <URI>               hypervisor connection URI
# @option -d --debug <NUM>                 debug level [0-4]
# @option -e --escape <char>               set escape sequence for console
# @flag -h --help                          this help
# @option -k --keepalive-interval <NUM>    keepalive interval in seconds, 0 for disable
# @option -K --keepalive-count <NUM>       number of possible missed keepalive messages
# @option -l --log <FILE>                  output logging to file
# @flag -q --quiet                         quiet mode
# @flag -r --readonly                      connect readonly
# @flag -t --timing                        print timing information
# @flag -v                                 short version
# @flag -V                                 long version --version[=TYPE]  version, TYPE is short or long (default short)

# {{ virsh attach-device
# @cmd attach device from an XML file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          XML file
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg file!
attach-device() {
    :;
}
# }} virsh attach-device

# {{ virsh attach-disk
# @cmd attach disk device
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --source <string>                      source of disk device or name of network disk
# @option --target <string>                      target of disk device
# @option --targetbus <string>                   target bus of disk device
# @option --driver <string>                      driver of disk device
# @option --subdriver <string>                   subdriver of disk device
# @option --iothread <string>                    IOThread to be used by supported device
# @option --cache <string>                       cache mode of disk device
# @option --io <string>                          io policy of disk device
# @option --type <string>                        target device type
# @option --mode <string>                        mode of device reading and writing
# @option --sourcetype <file>                    type of source (block|file|network)
# @option --serial <string>                      serial of disk device
# @option --wwn <string>                         wwn of disk device
# @option --alias <string>                       custom alias name of disk device
# @flag --rawio                                  needs rawio capability
# @option --address <string>                     address of disk device
# @flag --multifunction                          use multifunction pci under specified address
# @flag --print-xml                              print XML document rather than attach the disk
# @option --source-protocol <string>             protocol used by disk device source
# @option --source-host-name <string>            host name for source of disk device
# @option --source-host-transport <string>       host transport for source of disk device
# @option --source-host-socket <string>          host socket for source of disk device
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg source!
# @arg target!
attach-disk() {
    :;
}
# }} virsh attach-disk

# {{ virsh attach-interface
# @cmd attach network interface
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --type <string>                        network interface type
# @option --source <string>                      source of network interface
# @option --target <string>                      target network name
# @option --mac <string>                         MAC address
# @option --script <string>                      script used to bridge network interface
# @option --model <string>                       model type
# @option --alias <string>                       custom alias name of interface device
# @option --inbound <string>                     control domain's incoming traffics
# @option --outbound <string>                    control domain's outgoing traffics
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --print-xml                              print XML document rather than attach the interface
# @flag --managed                                libvirt will automatically detach/attach the device from/to host
# @option --source-mode <string>                 mode attribute of <source/> element
# @arg domain![`_choice_domain`]
# @arg type!
# @arg source!
attach-interface() {
    :;
}
# }} virsh attach-interface

# {{ virsh autostart
# @cmd autostart a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --disable                                disable autostarting
# @arg domain![`_choice_domain`]
autostart() {
    :;
}
# }} virsh autostart

# {{ virsh blkdeviotune
# @cmd Set or query a block device I/O tuning parameters.
# @option --domain[`_choice_domain`] <string>      domain name, id or uuid
# @option --device <string>                        block device
# @option --total-bytes-sec <number>               total throughput limit, as scaled integer (default bytes)
# @option --read-bytes-sec <number>                read throughput limit, as scaled integer (default bytes)
# @option --write-bytes-sec <number>               write throughput limit, as scaled integer (default bytes)
# @option --total-iops-sec <number>                total I/O operations limit per second
# @option --read-iops-sec <number>                 read I/O operations limit per second
# @option --write-iops-sec <number>                write I/O operations limit per second
# @option --total-bytes-sec-max <number>           total max, as scaled integer (default bytes)
# @option --read-bytes-sec-max <number>            read max, as scaled integer (default bytes)
# @option --write-bytes-sec-max <number>           write max, as scaled integer (default bytes)
# @option --total-iops-sec-max <number>            total I/O operations max
# @option --read-iops-sec-max <number>             read I/O operations max
# @option --write-iops-sec-max <number>            write I/O operations max
# @option --size-iops-sec <number>                 I/O size in bytes
# @option --group-name <string>                    group name to share I/O quota between multiple drives
# @option --total-bytes-sec-max-length <number>    duration in seconds to allow total max bytes
# @option --read-bytes-sec-max-length <number>     duration in seconds to allow read max bytes
# @option --write-bytes-sec-max-length <number>    duration in seconds to allow write max bytes
# @option --total-iops-sec-max-length <number>     duration in seconds to allow total I/O operations max
# @option --read-iops-sec-max-length <number>      duration in seconds to allow read I/O operations max
# @option --write-iops-sec-max-length <number>     duration in seconds to allow write I/O operations max
# @flag --config                                   affect next boot
# @flag --live                                     affect running domain
# @flag --current                                  affect current domain
# @arg domain![`_choice_domain`]
# @arg device!
blkdeviotune() {
    :;
}
# }} virsh blkdeviotune

# {{ virsh blkiotune
# @cmd Get or set blkio parameters
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --weight <number>                      IO Weight
# @option --device-weights <path>                per-device IO Weights, in the form of /path/to/device,weight,...
# @option --device-read-iops-sec <path>          per-device read I/O limit per second, in the form of /path/to/device,read_iops_sec,...
# @option --device-write-iops-sec <path>         per-device write I/O limit per second, in the form of /path/to/device,write_iops_sec,...
# @option --device-read-bytes-sec <path>         per-device bytes read per second, in the form of /path/to/device,read_bytes_sec,...
# @option --device-write-bytes-sec <path>        per-device bytes wrote per second, in the form of /path/to/device,write_bytes_sec,...
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
blkiotune() {
    :;
}
# }} virsh blkiotune

# {{ virsh blockcommit
# @cmd Start a block commit operation.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          fully-qualified path of disk
# @option --bandwidth <number>                   bandwidth limit in MiB/s
# @option --base <file>                          path of base file to commit into (default bottom of chain)
# @flag --shallow                                use backing file of top as base
# @option --top <file>                           path of top file to commit from (default top of chain)
# @flag --active                                 trigger two-stage active commit of top file
# @flag --delete                                 delete files that were successfully committed
# @flag --wait                                   wait for job to complete (with --active, wait for job to sync)
# @flag --verbose                                with --wait, display the progress
# @option --timeout <number>                     implies --wait, abort if copy exceeds timeout (in seconds)
# @flag --pivot                                  implies --active --wait, pivot when commit is synced
# @flag --keep-overlay                           implies --active --wait, quit when commit is synced
# @flag --async                                  with --wait, don't wait for cancel to finish
# @flag --keep-relative                          keep the backing chain relatively referenced
# @flag --bytes                                  the bandwidth limit is in bytes/s rather than MiB/s
# @arg domain![`_choice_domain`]
# @arg path!
blockcommit() {
    :;
}
# }} virsh blockcommit

# {{ virsh blockcopy
# @cmd Start a block copy operation.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          fully-qualified path of source disk
# @option --dest <path>                          path of the copy to create
# @option --bandwidth <number>                   bandwidth limit in MiB/s
# @flag --shallow                                make the copy share a backing chain
# @flag --reuse-external                         reuse existing destination
# @flag --blockdev                               copy destination is block device instead of regular file
# @flag --wait                                   wait for job to reach mirroring phase
# @flag --verbose                                with --wait, display the progress
# @option --timeout <number>                     implies --wait, abort if copy exceeds timeout (in seconds)
# @flag --pivot                                  implies --wait, pivot when mirroring starts
# @flag --finish                                 implies --wait, quit when mirroring starts
# @flag --async                                  with --wait, don't wait for cancel to finish
# @option --xml <file>                           filename containing XML description of the copy destination
# @option --format <file>                        format of the destination file
# @option --granularity <number>                 power-of-two granularity to use during the copy
# @option --buf-size <number>                    maximum amount of in-flight data during the copy
# @flag --bytes                                  the bandwidth limit is in bytes/s rather than MiB/s
# @flag --transient-job                          the copy job is not persisted if VM is turned off
# @flag --synchronous-writes                     the copy job forces guest writes to be synchronously written to the destination
# @flag --print-xml                              print the XML used to start the copy job instead of starting the job
# @arg domain![`_choice_domain`]
# @arg path!
blockcopy() {
    :;
}
# }} virsh blockcopy

# {{ virsh blockjob
# @cmd Manage active block operations
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          fully-qualified path of disk
# @flag --abort                                  abort the active job on the specified disk
# @flag --async                                  implies --abort; request but don't wait for job end
# @flag --pivot                                  implies --abort; conclude and pivot a copy or commit job
# @flag --info                                   get active job information for the specified disk
# @flag --bytes                                  get/set bandwidth in bytes rather than MiB/s
# @flag --raw                                    implies --info; output details rather than human summary
# @option --bandwidth <number>                   set the bandwidth limit in MiB/s
# @arg domain![`_choice_domain`]
# @arg path!
blockjob() {
    :;
}
# }} virsh blockjob

# {{ virsh blockpull
# @cmd Populate a disk from its backing image.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          fully-qualified path of disk
# @option --bandwidth <number>                   bandwidth limit in MiB/s
# @option --base <file>                          path of backing file in chain for a partial pull
# @flag --wait                                   wait for job to finish
# @flag --verbose                                with --wait, display the progress
# @option --timeout <number>                     with --wait, abort if pull exceeds timeout (in seconds)
# @flag --async                                  with --wait, don't wait for cancel to finish
# @flag --keep-relative                          keep the backing chain relatively referenced
# @flag --bytes                                  the bandwidth limit is in bytes/s rather than MiB/s
# @arg domain![`_choice_domain`]
# @arg path!
blockpull() {
    :;
}
# }} virsh blockpull

# {{ virsh blockresize
# @cmd Resize block device of domain.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          Fully-qualified path of block device
# @option --size <number>                        New size of the block device, as scaled integer (default KiB)
# @arg domain![`_choice_domain`]
# @arg path!
# @arg size!
blockresize() {
    :;
}
# }} virsh blockresize

# {{ virsh change-media
# @cmd Change media of CD or floppy drive
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --path <path>                          Fully-qualified path or target of disk device
# @option --source <string>                      source of the media
# @flag --eject                                  Eject the media
# @flag --insert                                 Insert the media
# @flag --update                                 Update the media
# @flag --current                                can be either or both of --live and --config, depends on implementation hypervisor driver
# @flag --live                                   alter live configuration of running domain
# @flag --config                                 alter persistent configuration, effect observed on next boot
# @flag --force                                  force media changing
# @flag --print-xml                              print XML document rather than change media
# @flag --block                                  source media is a block device
# @arg domain![`_choice_domain`]
# @arg path!
change-media() {
    :;
}
# }} virsh change-media

# {{ virsh console
# @cmd connect to the guest console
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --devname <string>                     character device name
# @flag --force                                  force console connection (disconnect already connected sessions)
# @flag --resume                                 resume a paused guest after connecting to console
# @flag --safe                                   only connect if safe console handling is supported
# @arg domain![`_choice_domain`]
console() {
    :;
}
# }} virsh console

# {{ virsh cpu-stats
# @cmd show domain cpu statistics
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --total                                  Show total statistics only
# @option --start <number>                       Show statistics from this CPU
# @option --count <number>                       Number of shown CPUs at most
# @arg domain![`_choice_domain`]
cpu-stats() {
    :;
}
# }} virsh cpu-stats

# {{ virsh create
# @cmd create a domain from an XML file
# @option --file <file>        file containing an XML domain description
# @flag --console              attach to console after creation
# @flag --paused               leave the guest paused after creation
# @flag --autodestroy          automatically destroy the guest when virsh disconnects
# @option --pass-fds <file>    pass file descriptors N,M,... to the guest
# @flag --validate             validate the XML against the schema
# @flag --reset-nvram          re-initialize NVRAM from its pristine template
# @arg file!
create() {
    :;
}
# }} virsh create

# {{ virsh define
# @cmd define (but don't start) a domain from an XML file
# @option --file <file>    file containing an XML domain description
# @flag --validate         validate the XML against the schema
# @arg file!
define() {
    :;
}
# }} virsh define

# {{ virsh desc
# @cmd show or set domain's description or title
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --live                                   modify/get running state
# @flag --config                                 modify/get persistent configuration
# @flag --current                                modify/get current state configuration
# @flag --title                                  modify/get the title instead of description
# @flag --edit                                   open an editor to modify the description
# @option --new-desc <string>                    message
# @arg domain![`_choice_domain`]
# @arg new-desc-string* <[--new-desc] <string>>
desc() {
    :;
}
# }} virsh desc

# {{ virsh destroy
# @cmd destroy (stop) a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --graceful                               terminate gracefully
# @flag --remove-logs                            remove domain logs
# @arg domain![`_choice_domain`]
destroy() {
    :;
}
# }} virsh destroy

# {{ virsh detach-device
# @cmd detach device from an XML file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          XML file
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg file!
detach-device() {
    :;
}
# }} virsh detach-device

# {{ virsh detach-device-alias
# @cmd detach device from an alias
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --alias <string>                       device alias
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg alias!
detach-device-alias() {
    :;
}
# }} virsh detach-device-alias

# {{ virsh detach-disk
# @cmd detach disk device
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --target <string>                      target of disk device
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --print-xml                              print XML document rather than detach the disk
# @arg domain![`_choice_domain`]
# @arg target!
detach-disk() {
    :;
}
# }} virsh detach-disk

# {{ virsh detach-interface
# @cmd detach network interface
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --type <string>                        network interface type
# @option --mac <string>                         MAC address
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --print-xml                              print XML document rather than detach the interface
# @arg domain![`_choice_domain`]
# @arg type!
detach-interface() {
    :;
}
# }} virsh detach-interface

# {{ virsh domdisplay
# @cmd domain display connection URI
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --include-password                       includes the password into the connection URI if available
# @option --type <string>                        select particular graphical display (e.g. "vnc", "spice", "rdp", "dbus")
# @flag --all                                    show all possible graphical displays
# @arg domain![`_choice_domain`]
domdisplay() {
    :;
}
# }} virsh domdisplay

# {{ virsh domfsfreeze
# @cmd Freeze domain's mounted filesystems.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --mountpoint <path>                    mountpoint path to be frozen
# @arg domain![`_choice_domain`]
# @arg mountpoint-string* <[--mountpoint] <string>>
domfsfreeze() {
    :;
}
# }} virsh domfsfreeze

# {{ virsh domfsthaw
# @cmd Thaw domain's mounted filesystems.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --mountpoint <path>                    mountpoint path to be thawed
# @arg domain![`_choice_domain`]
# @arg mountpoint-string* <[--mountpoint] <string>>
domfsthaw() {
    :;
}
# }} virsh domfsthaw

# {{ virsh domfsinfo
# @cmd Get information of domain's mounted filesystems.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
domfsinfo() {
    :;
}
# }} virsh domfsinfo

# {{ virsh domfstrim
# @cmd Invoke fstrim on domain's mounted filesystems.
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --minimum <number>                     Just a hint to ignore contiguous free ranges smaller than this (Bytes)
# @option --mountpoint <string>                  which mount point to trim
# @arg domain![`_choice_domain`]
domfstrim() {
    :;
}
# }} virsh domfstrim

# {{ virsh domhostname
# @cmd print the domain's hostname
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --source <string>                      address source: 'lease' or 'agent'
# @arg domain![`_choice_domain`]
domhostname() {
    :;
}
# }} virsh domhostname

# {{ virsh domid
# @cmd convert a domain name or UUID to domain id
# @option --domain[`_choice_domain`] <string>    domain name or uuid
# @arg domain![`_choice_domain`]
domid() {
    :;
}
# }} virsh domid

# {{ virsh domif-setlink
# @cmd set link state of a virtual interface
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --interface <string>                   interface device (MAC Address)
# @option --state <string>                       new state of the device
# @flag --config                                 affect next boot
# @flag --print-xml                              print XML document rather than set the interface link state
# @arg domain![`_choice_domain`]
# @arg interface!
# @arg state!
domif-setlink() {
    :;
}
# }} virsh domif-setlink

# {{ virsh domiftune
# @cmd get/set parameters of a virtual interface
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --interface <string>                   interface device (MAC Address)
# @option --inbound <string>                     control domain's incoming traffics
# @option --outbound <string>                    control domain's outgoing traffics
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg interface!
domiftune() {
    :;
}
# }} virsh domiftune

# {{ virsh domjobabort
# @cmd abort active domain job
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --postcopy                               interrupt post-copy migration
# @arg domain![`_choice_domain`]
domjobabort() {
    :;
}
# }} virsh domjobabort

# {{ virsh domjobinfo
# @cmd domain job information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --completed                              return statistics of a recently completed job
# @flag --keep-completed                         don't destroy statistics of a recently completed job when reading
# @flag --anystats                               print statistics for any kind of job (even failed ones)
# @flag --rawstats                               print the raw data returned by libvirt
# @arg domain![`_choice_domain`]
domjobinfo() {
    :;
}
# }} virsh domjobinfo

# {{ virsh domlaunchsecinfo
# @cmd Get domain launch security info
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
domlaunchsecinfo() {
    :;
}
# }} virsh domlaunchsecinfo

# {{ virsh domsetlaunchsecstate
# @cmd Set domain launch security state
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --secrethdr <file>                     path to file containing the secret header
# @option --secret <file>                        path to file containing the secret
# @option --set-address <number>                 physical address within the guest domain's memory to set the secret
# @arg domain![`_choice_domain`]
domsetlaunchsecstate() {
    :;
}
# }} virsh domsetlaunchsecstate

# {{ virsh domname
# @cmd convert a domain id or UUID to domain name
# @option --domain[`_choice_domain`] <string>    domain id or uuid
# @arg domain![`_choice_domain`]
domname() {
    :;
}
# }} virsh domname

# {{ virsh domrename
# @cmd rename a domain
# @option --domain[`_choice_domain`] <string>    domain name or uuid
# @option --new-name <string>                    new domain name
# @arg domain![`_choice_domain`]
# @arg new-name!
domrename() {
    :;
}
# }} virsh domrename

# {{ virsh dompmsuspend
# @cmd suspend a domain gracefully using power management functions
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --target <string>                      mem(Suspend-to-RAM), disk(Suspend-to-Disk), hybrid(Hybrid-Suspend)
# @option --duration <number>                    duration in seconds
# @arg domain![`_choice_domain`]
# @arg target!
dompmsuspend() {
    :;
}
# }} virsh dompmsuspend

# {{ virsh dompmwakeup
# @cmd wakeup a domain from pmsuspended state
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
dompmwakeup() {
    :;
}
# }} virsh dompmwakeup

# {{ virsh domuuid
# @cmd convert a domain name or id to domain UUID
# @option --domain[`_choice_domain`] <string>    domain id or name
# @arg domain![`_choice_domain`]
domuuid() {
    :;
}
# }} virsh domuuid

# {{ virsh domxml-from-native
# @cmd Convert native config to domain XML
# @option --format <string>    source config data format
# @option --config <file>      config data file to import from
# @arg format!
# @arg config!
domxml-from-native() {
    :;
}
# }} virsh domxml-from-native

# {{ virsh domxml-to-native
# @cmd Convert domain XML to native config
# @option --format <string>                      target config data type format
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --xml <file>                           xml data file to export from
# @arg format!
domxml-to-native() {
    :;
}
# }} virsh domxml-to-native

# {{ virsh dump
# @cmd dump the core of a domain to a file for analysis
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          where to dump the core
# @flag --live                                   perform a live core dump if supported
# @flag --crash                                  crash the domain after core dump
# @flag --bypass-cache                           avoid file system cache when dumping
# @flag --reset                                  reset the domain after core dump
# @flag --verbose                                display the progress of dump
# @flag --memory-only                            dump domain's memory only
# @option --format <string>                      specify the format of memory-only dump
# @arg domain![`_choice_domain`]
# @arg file!
dump() {
    :;
}
# }} virsh dump

# {{ virsh dumpxml
# @cmd domain information in XML
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --inactive                               show inactive defined XML
# @flag --security-info                          include security sensitive information in XML dump
# @flag --update-cpu                             update guest CPU according to host CPU
# @flag --migratable                             provide XML suitable for migrations
# @option --xpath <path>                         xpath expression to filter the XML document
# @flag --wrap                                   wrap xpath results in an common root element
# @arg domain![`_choice_domain`]
dumpxml() {
    :;
}
# }} virsh dumpxml

# {{ virsh edit
# @cmd edit XML configuration for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --skip-validate                          skip validation of the XML against the schema
# @arg domain![`_choice_domain`]
edit() {
    :;
}
# }} virsh edit

# {{ virsh get-user-sshkeys
# @cmd list authorized SSH keys for given user (via agent)
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --user <string>                        user to list authorized keys for
# @arg domain![`_choice_domain`]
# @arg user!
get-user-sshkeys() {
    :;
}
# }} virsh get-user-sshkeys

# {{ virsh inject-nmi
# @cmd Inject NMI to the guest
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
inject-nmi() {
    :;
}
# }} virsh inject-nmi

# {{ virsh iothreadinfo
# @cmd view domain IOThreads
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
iothreadinfo() {
    :;
}
# }} virsh iothreadinfo

# {{ virsh iothreadpin
# @cmd control domain IOThread affinity
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --iothread <number>                    IOThread ID number
# @option --cpulist <string>                     host cpu number(s) to set
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg iothread!
# @arg cpulist!
iothreadpin() {
    :;
}
# }} virsh iothreadpin

# {{ virsh iothreadadd
# @cmd add an IOThread to the guest domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --id <number>                          iothread for the new IOThread
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg id!
iothreadadd() {
    :;
}
# }} virsh iothreadadd

# {{ virsh iothreadset
# @cmd modifies an existing IOThread of the guest domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --id <number>                          iothread id of existing IOThread
# @option --poll-max-ns <number>                 set the maximum IOThread polling time in ns
# @option --poll-grow <number>                   set the value to increase the IOThread polling time
# @option --poll-shrink <number>                 set the value for reduction of the IOThread polling time
# @option --thread-pool-min <number>             lower boundary for worker thread pool
# @option --thread-pool-max <number>             upper boundary for worker thread pool
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg id!
iothreadset() {
    :;
}
# }} virsh iothreadset

# {{ virsh iothreaddel
# @cmd delete an IOThread from the guest domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --id <number>                          iothread_id for the IOThread to delete
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg id!
iothreaddel() {
    :;
}
# }} virsh iothreaddel

# {{ virsh send-key
# @cmd Send keycodes to the guest
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --codeset <string>                     the codeset of keycodes, default:linux
# @option --holdtime <number>                    the time (in milliseconds) how long the keys will be held
# @option --keycode <string>                     the key code
# @arg domain![`_choice_domain`]
send-key() {
    :;
}
# }} virsh send-key

# {{ virsh send-process-signal
# @cmd Send signals to processes
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --pid <string>                         the process ID
# @option --signame <string>                     the signal number or name
# @arg domain![`_choice_domain`]
# @arg pid!
# @arg signame!
send-process-signal() {
    :;
}
# }} virsh send-process-signal

# {{ virsh lxc-enter-namespace
# @cmd LXC Guest Enter Namespace
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --noseclabel                             Do not change process security label
# @option --cmd <string>                         command to run
# @arg domain![`_choice_domain`]
lxc-enter-namespace() {
    :;
}
# }} virsh lxc-enter-namespace

# {{ virsh managedsave
# @cmd managed save of a domain state
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --bypass-cache                           avoid file system cache when saving
# @flag --running                                set domain to be running on next start
# @flag --paused                                 set domain to be paused on next start
# @flag --verbose                                display the progress of save
# @arg domain![`_choice_domain`]
managedsave() {
    :;
}
# }} virsh managedsave

# {{ virsh managedsave-remove
# @cmd Remove managed save of a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
managedsave-remove() {
    :;
}
# }} virsh managedsave-remove

# {{ virsh managedsave-edit
# @cmd edit XML for a domain's managed save state file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --running                                set domain to be running on start
# @flag --paused                                 set domain to be paused on start
# @arg domain![`_choice_domain`]
managedsave-edit() {
    :;
}
# }} virsh managedsave-edit

# {{ virsh managedsave-dumpxml
# @cmd Domain information of managed save state file in XML
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --security-info                          include security sensitive information in XML dump
# @option --xpath <path>                         xpath expression to filter the XML document
# @flag --wrap                                   wrap xpath results in an common root element
# @arg domain![`_choice_domain`]
managedsave-dumpxml() {
    :;
}
# }} virsh managedsave-dumpxml

# {{ virsh managedsave-define
# @cmd redefine the XML for a domain's managed save state file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --xml <file>                           filename containing updated XML for the target
# @flag --running                                set domain to be running on start
# @flag --paused                                 set domain to be paused on start
# @arg domain![`_choice_domain`]
# @arg xml!
managedsave-define() {
    :;
}
# }} virsh managedsave-define

# {{ virsh memtune
# @cmd Get or set memory parameters
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --hard-limit <number>                  Max memory, as scaled integer (default KiB)
# @option --soft-limit <number>                  Memory during contention, as scaled integer (default KiB)
# @option --swap-hard-limit <number>             Max memory plus swap, as scaled integer (default KiB)
# @option --min-guarantee <number>               Min guaranteed memory, as scaled integer (default KiB)
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
memtune() {
    :;
}
# }} virsh memtune

# {{ virsh perf
# @cmd Get or set perf event
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --enable <string>                      perf events which will be enabled
# @option --disable <string>                     perf events which will be disabled
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
perf() {
    :;
}
# }} virsh perf

# {{ virsh metadata
# @cmd show or set domain's custom XML metadata
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --uri <string>                         URI of the namespace
# @flag --live                                   modify/get running state
# @flag --config                                 modify/get persistent configuration
# @flag --current                                modify/get current state configuration
# @flag --edit                                   use an editor to change the metadata
# @option --key <string>                         key to be used as a namespace identifier
# @option --set <string>                         new metadata to set
# @flag --remove                                 remove the metadata corresponding to an uri
# @arg domain![`_choice_domain`]
# @arg uri!
metadata() {
    :;
}
# }} virsh metadata

# {{ virsh migrate
# @cmd migrate domain to another host
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --desturi <path>                       connection URI of the destination host as seen from the client(normal migration) or source(p2p migration)
# @flag --live                                   live migration
# @flag --offline                                offline migration
# @flag --p2p                                    peer-2-peer migration
# @flag --direct                                 direct migration
# @flag --tunnelled                              tunnelled migration
# @flag --persistent                             persist VM on destination
# @flag --undefinesource                         undefine VM on source
# @flag --suspend                                do not restart the domain on the destination host
# @flag --copy-storage-all                       migration with non-shared storage with full disk copy
# @flag --copy-storage-inc                       migration with non-shared storage with incremental copy (same base image shared between source and destination)
# @flag --copy-storage-synchronous-writes        force guest disk writes to be synchronously written to the destination to improve storage migration convergence
# @flag --change-protection                      prevent any configuration changes to domain until migration ends
# @flag --unsafe                                 force migration even if it may be unsafe
# @flag --verbose                                display the progress of migration
# @flag --compressed                             compress repeated pages during live migration
# @flag --auto-converge                          force convergence during live migration
# @flag --rdma-pin-all                           pin all memory before starting RDMA live migration
# @flag --abort-on-error                         abort on soft errors during migration
# @flag --postcopy                               enable post-copy migration; switch to it using migrate-postcopy command
# @flag --postcopy-after-precopy                 automatically switch to post-copy migration after one pass of pre-copy
# @flag --postcopy-resume                        resume failed post-copy migration
# @flag --zerocopy                               use zero-copy mechanism for migrating memory pages
# @option --migrateuri <string>                  migration URI, usually can be omitted
# @option --graphicsuri <string>                 graphics URI to be used for seamless graphics migration
# @option --listen-address <path>                listen address that destination should bind to for incoming migration
# @option --dname <string>                       rename to new name during migration (if supported)
# @option --timeout <number>                     run action specified by --timeout-* option (suspend by default) if live migration exceeds timeout (in seconds)
# @flag --timeout-suspend                        suspend the guest after timeout
# @flag --timeout-postcopy                       switch to post-copy after timeout
# @option --xml <file>                           filename containing updated XML for the target
# @option --migrate-disks <string>               comma separated list of disks to be migrated
# @option --disks-port <number>                  port to use by target server for incoming disks migration
# @option --disks-uri <string>                   URI to use for disks migration (overrides --disks-port)
# @option --comp-methods <string>                comma separated list of compression methods to be used
# @option --comp-mt-level <number>               compress level for multithread compression
# @option --comp-mt-threads <number>             number of compression threads for multithread compression
# @option --comp-mt-dthreads <number>            number of decompression threads for multithread compression
# @option --comp-xbzrle-cache <number>           page cache size for xbzrle compression
# @option --auto-converge-initial <number>       initial CPU throttling rate for auto-convergence
# @option --auto-converge-increment <number>     CPU throttling rate increment for auto-convergence
# @option --persistent-xml <file>                filename containing updated persistent XML for the target
# @flag --tls                                    use TLS for migration
# @option --postcopy-bandwidth <number>          post-copy migration bandwidth limit in MiB/s
# @flag --parallel                               enable parallel migration
# @option --parallel-connections <number>        number of connections for parallel migration
# @option --bandwidth <number>                   migration bandwidth limit in MiB/s
# @option --tls-destination <path>               override the destination host name used for TLS verification
# @option --comp-zlib-level <number>             compress level for zlib compression
# @option --comp-zstd-level <number>             compress level for zstd compression
# @arg domain![`_choice_domain`]
# @arg desturi!
migrate() {
    :;
}
# }} virsh migrate

# {{ virsh migrate-setmaxdowntime
# @cmd set maximum tolerable downtime
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --downtime <number>                    maximum tolerable downtime (in milliseconds) for migration
# @arg domain![`_choice_domain`]
# @arg downtime!
migrate-setmaxdowntime() {
    :;
}
# }} virsh migrate-setmaxdowntime

# {{ virsh migrate-getmaxdowntime
# @cmd get maximum tolerable downtime
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
migrate-getmaxdowntime() {
    :;
}
# }} virsh migrate-getmaxdowntime

# {{ virsh migrate-compcache
# @cmd get/set compression cache size
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --size <number>                        requested size of the cache (in bytes) used for compression
# @arg domain![`_choice_domain`]
migrate-compcache() {
    :;
}
# }} virsh migrate-compcache

# {{ virsh migrate-setspeed
# @cmd Set the maximum migration bandwidth
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --bandwidth <number>                   migration bandwidth limit in MiB/s
# @flag --postcopy                               set post-copy migration bandwidth
# @arg domain![`_choice_domain`]
# @arg bandwidth!
migrate-setspeed() {
    :;
}
# }} virsh migrate-setspeed

# {{ virsh migrate-getspeed
# @cmd Get the maximum migration bandwidth
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --postcopy                               get post-copy migration bandwidth
# @arg domain![`_choice_domain`]
migrate-getspeed() {
    :;
}
# }} virsh migrate-getspeed

# {{ virsh migrate-postcopy
# @cmd Switch running migration from pre-copy to post-copy
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
migrate-postcopy() {
    :;
}
# }} virsh migrate-postcopy

# {{ virsh numatune
# @cmd Get or set numa parameters
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --mode <string>                        NUMA mode, one of strict, preferred and interleave
# @option --nodeset <string>                     NUMA node selections to set
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
numatune() {
    :;
}
# }} virsh numatune

# {{ virsh qemu-attach
# @cmd QEMU Attach
# @option --pid <string>    pid
# @arg pid!
qemu-attach() {
    :;
}
# }} virsh qemu-attach

# {{ virsh qemu-monitor-event
# @cmd QEMU Monitor Events
# @option --domain[`_choice_domain`] <string>    filter by domain name, id or uuid
# @option --event <string>                       filter by event name
# @flag --pretty                                 pretty-print any JSON output
# @flag --loop                                   loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>                     timeout seconds
# @flag --regex                                  treat event as a regex rather than literal filter
# @flag --no-case                                treat event case-insensitively
# @flag --timestamp                              show timestamp for each printed event
qemu-monitor-event() {
    :;
}
# }} virsh qemu-monitor-event

# {{ virsh guest-agent-timeout
# @cmd Set the guest agent timeout
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --timeout <number>                     timeout seconds.
# @arg domain![`_choice_domain`]
guest-agent-timeout() {
    :;
}
# }} virsh guest-agent-timeout

# {{ virsh reboot
# @cmd reboot a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --mode <string>                        shutdown mode: acpi|agent|initctl|signal|paravirt
# @arg domain![`_choice_domain`]
reboot() {
    :;
}
# }} virsh reboot

# {{ virsh reset
# @cmd reset a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
reset() {
    :;
}
# }} virsh reset

# {{ virsh restore
# @cmd restore a domain from a saved state in a file
# @option --file <file>    the state to restore
# @flag --bypass-cache     avoid file system cache when restoring
# @option --xml <file>     filename containing updated XML for the target
# @flag --running          restore domain into running state
# @flag --paused           restore domain into paused state
# @flag --reset-nvram      re-initialize NVRAM from its pristine template
# @arg file!
restore() {
    :;
}
# }} virsh restore

# {{ virsh resume
# @cmd resume a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
resume() {
    :;
}
# }} virsh resume

# {{ virsh save
# @cmd save a domain state to a file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          where to save the data
# @flag --bypass-cache                           avoid file system cache when saving
# @option --xml <file>                           filename containing updated XML for the target
# @flag --running                                set domain to be running on restore
# @flag --paused                                 set domain to be paused on restore
# @flag --verbose                                display the progress of save
# @arg domain![`_choice_domain`]
# @arg file!
save() {
    :;
}
# }} virsh save

# {{ virsh save-image-define
# @cmd redefine the XML for a domain's saved state file
# @option --file <file>    saved state file to modify
# @option --xml <file>     filename containing updated XML for the target
# @flag --running          set domain to be running on restore
# @flag --paused           set domain to be paused on restore
# @arg file!
# @arg xml!
save-image-define() {
    :;
}
# }} virsh save-image-define

# {{ virsh save-image-dumpxml
# @cmd saved state domain information in XML
# @option --file <file>     saved state file to read
# @flag --security-info     include security sensitive information in XML dump
# @option --xpath <path>    xpath expression to filter the XML document
# @flag --wrap              wrap xpath results in an common root element
# @arg file!
save-image-dumpxml() {
    :;
}
# }} virsh save-image-dumpxml

# {{ virsh save-image-edit
# @cmd edit XML for a domain's saved state file
# @option --file <file>    saved state file to edit
# @flag --running          set domain to be running on restore
# @flag --paused           set domain to be paused on restore
# @arg file!
save-image-edit() {
    :;
}
# }} virsh save-image-edit

# {{ virsh schedinfo
# @cmd show/set scheduler parameters
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --weight <number>                      weight for XEN_CREDIT
# @option --cap <number>                         cap for XEN_CREDIT
# @flag --current                                get/set current scheduler info
# @flag --config                                 get/set value to be used on next boot
# @flag --live                                   get/set value from running domain
# @option --set <string>                         parameter=value
# @arg domain![`_choice_domain`]
# @arg set-string* <[--set] <string>>
schedinfo() {
    :;
}
# }} virsh schedinfo

# {{ virsh screenshot
# @cmd take a screenshot of a current domain console and store it into a file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          where to store the screenshot
# @option --screen <number>                      ID of a screen to take screenshot of
# @arg domain![`_choice_domain`]
screenshot() {
    :;
}
# }} virsh screenshot

# {{ virsh set-lifecycle-action
# @cmd change lifecycle actions
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --type <string>                        lifecycle type to modify
# @option --action <string>                      lifecycle action to set
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg type!
# @arg action!
set-lifecycle-action() {
    :;
}
# }} virsh set-lifecycle-action

# {{ virsh set-user-sshkeys
# @cmd manipulate authorized SSH keys file for given user (via agent)
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --user <string>                        user to set authorized keys for
# @option --file <file>                          optional file to read keys from
# @flag --reset                                  clear out authorized keys file before adding new keys
# @flag --remove                                 remove keys from the authorized keys file
# @arg domain![`_choice_domain`]
# @arg user!
set-user-sshkeys() {
    :;
}
# }} virsh set-user-sshkeys

# {{ virsh set-user-password
# @cmd set the user password inside the domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --user <string>                        the username
# @option --password <string>                    the new password
# @flag --encrypted                              the password is already encrypted
# @arg domain![`_choice_domain`]
# @arg user!
# @arg password!
set-user-password() {
    :;
}
# }} virsh set-user-password

# {{ virsh setmaxmem
# @cmd change maximum memory limit
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --size <number>                        new maximum memory size, as scaled integer (default KiB)
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg size!
setmaxmem() {
    :;
}
# }} virsh setmaxmem

# {{ virsh setmem
# @cmd change memory allocation
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --size <number>                        new memory size, as scaled integer (default KiB)
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg size!
setmem() {
    :;
}
# }} virsh setmem

# {{ virsh setvcpus
# @cmd change number of virtual CPUs
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --count <number>                       number of virtual CPUs
# @flag --maximum                                set maximum limit on next boot
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --guest                                  modify cpu state in the guest
# @flag --hotpluggable                           make added vcpus hot(un)pluggable
# @arg domain![`_choice_domain`]
# @arg count!
setvcpus() {
    :;
}
# }} virsh setvcpus

# {{ virsh shutdown
# @cmd gracefully shutdown a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --mode <string>                        shutdown mode: acpi|agent|initctl|signal|paravirt
# @arg domain![`_choice_domain`]
shutdown() {
    :;
}
# }} virsh shutdown

# {{ virsh start
# @cmd start a (previously defined) inactive domain
# @option --domain[`_choice_domain`] <string>    name of the inactive domain
# @flag --console                                attach to console after creation
# @flag --paused                                 leave the guest paused after creation
# @flag --autodestroy                            automatically destroy the guest when virsh disconnects
# @flag --bypass-cache                           avoid file system cache when loading
# @flag --force-boot                             force fresh boot by discarding any managed save
# @option --pass-fds <file>                      pass file descriptors N,M,... to the guest
# @flag --reset-nvram                            re-initialize NVRAM from its pristine template
# @arg domain![`_choice_domain`]
start() {
    :;
}
# }} virsh start

# {{ virsh suspend
# @cmd suspend a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
suspend() {
    :;
}
# }} virsh suspend

# {{ virsh ttyconsole
# @cmd tty console
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
ttyconsole() {
    :;
}
# }} virsh ttyconsole

# {{ virsh undefine
# @cmd undefine a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --managed-save                           remove domain managed state file
# @option --storage <path>                       remove associated storage volumes (comma separated list of targets or source paths) (see domblklist)
# @flag --remove-all-storage                     remove all associated storage volumes (use with caution)
# @flag --delete-storage-volume-snapshots        delete snapshots associated with volume(s), requires --remove-all-storage (must be supported by storage driver)
# @flag --wipe-storage                           wipe data on the removed volumes
# @flag --snapshots-metadata                     remove all domain snapshot metadata (vm must be inactive)
# @flag --checkpoints-metadata                   remove all domain checkpoint metadata (vm must be inactive)
# @flag --nvram                                  remove nvram file
# @flag --keep-nvram                             keep nvram file
# @flag --tpm                                    remove TPM state
# @flag --keep-tpm                               keep TPM state
# @arg domain![`_choice_domain`]
undefine() {
    :;
}
# }} virsh undefine

# {{ virsh update-device
# @cmd update device from an XML file
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --file <file>                          XML file
# @flag --persistent                             make live change persistent
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --force                                  force device update
# @arg domain![`_choice_domain`]
# @arg file!
update-device() {
    :;
}
# }} virsh update-device

# {{ virsh update-memory-device
# @cmd update memory device of a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @flag --print-xml                              print updated memory device XML instead of executing the change
# @option --alias <string>                       memory device alias
# @option --node <number>                        memory device target node
# @option --requested-size <number>              new value of <requested/> size, as scaled integer (default KiB)
# @arg domain![`_choice_domain`]
update-memory-device() {
    :;
}
# }} virsh update-memory-device

# {{ virsh vcpucount
# @cmd domain vcpu counts
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --maximum                                get maximum count of vcpus
# @flag --active                                 get number of currently active vcpus
# @flag --live                                   get value from running domain
# @flag --config                                 get value to be used on next boot
# @flag --current                                get value according to current domain state
# @flag --guest                                  retrieve vcpu count from the guest instead of the hypervisor
# @arg domain![`_choice_domain`]
vcpucount() {
    :;
}
# }} virsh vcpucount

# {{ virsh vcpuinfo
# @cmd detailed domain vcpu information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --pretty                                 return human readable output
# @arg domain![`_choice_domain`]
vcpuinfo() {
    :;
}
# }} virsh vcpuinfo

# {{ virsh vcpupin
# @cmd control or query domain vcpu affinity
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --vcpu <number>                        vcpu number
# @option --cpulist <string>                     host cpu number(s) to set, or omit option to query
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
vcpupin() {
    :;
}
# }} virsh vcpupin

# {{ virsh emulatorpin
# @cmd control or query domain emulator affinity
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --cpulist <string>                     host cpu number(s) to set, or omit option to query
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
emulatorpin() {
    :;
}
# }} virsh emulatorpin

# {{ virsh vncdisplay
# @cmd vnc display
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
vncdisplay() {
    :;
}
# }} virsh vncdisplay

# {{ virsh guestvcpus
# @cmd query or modify state of vcpu in the guest (via agent)
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --cpulist <string>                     list of cpus to enable or disable
# @flag --enable                                 enable cpus specified by cpulist
# @flag --disable                                disable cpus specified by cpulist
# @arg domain![`_choice_domain`]
guestvcpus() {
    :;
}
# }} virsh guestvcpus

# {{ virsh setvcpu
# @cmd attach/detach vcpu or groups of threads
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --vcpulist <string>                    ids of vcpus to manipulate
# @flag --enable                                 enable cpus specified by cpumap
# @flag --disable                                disable cpus specified by cpumap
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
# @arg vcpulist!
setvcpu() {
    :;
}
# }} virsh setvcpu

# {{ virsh domblkthreshold
# @cmd set the threshold for block-threshold event for a given block device or it's backing chain element
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --dev <string>                         device to set threshold for
# @option --threshold <number>                   threshold as a scaled number (by default bytes)
# @arg domain![`_choice_domain`]
# @arg dev!
# @arg threshold!
domblkthreshold() {
    :;
}
# }} virsh domblkthreshold

# {{ virsh guestinfo
# @cmd query information about the guest (via agent)
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --user                                   report active users
# @flag --os                                     report operating system information
# @flag --timezone                               report timezone information
# @flag --hostname                               report hostname
# @flag --filesystem                             report filesystem information
# @flag --disk                                   report disk information
# @flag --interface                              report interface information
# @arg domain![`_choice_domain`]
guestinfo() {
    :;
}
# }} virsh guestinfo

# {{ virsh domdirtyrate-calc
# @cmd Calculate a vm's memory dirty rate
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --seconds <number>                     calculate memory dirty rate within specified seconds, the supported value range from 1 to 60, default to 1.
# @option --mode <dir>                           dirty page rate calculation mode, either of these 3 options 'page-sampling, dirty-bitmap, dirty-ring' can be specified.
# @arg domain![`_choice_domain`]
domdirtyrate-calc() {
    :;
}
# }} virsh domdirtyrate-calc

# {{ virsh dom-fd-associate
# @cmd associate a FD with a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --name <string>                        name of the FD group
# @option --pass-fds <file>                      file descriptors N,M,... to associate
# @flag --seclabel-writable                      use seclabels allowing writes
# @flag --seclabel-restore                       try to restore security label after use if possible
# @arg domain![`_choice_domain`]
# @arg name!
# @arg pass-fds!
dom-fd-associate() {
    :;
}
# }} virsh dom-fd-associate

# {{ virsh domblkerror
# @cmd Show errors on block devices
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
domblkerror() {
    :;
}
# }} virsh domblkerror

# {{ virsh domblkinfo
# @cmd domain block device size information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --device <string>                      block device
# @flag --human                                  Human readable output
# @flag --all                                    display all block devices info
# @arg domain![`_choice_domain`]
domblkinfo() {
    :;
}
# }} virsh domblkinfo

# {{ virsh domblklist
# @cmd list all domain blocks
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --inactive                               get inactive rather than running configuration
# @flag --details                                additionally display the type and device value
# @arg domain![`_choice_domain`]
domblklist() {
    :;
}
# }} virsh domblklist

# {{ virsh domblkstat
# @cmd get device block stats for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --device <string>                      block device
# @flag --human                                  print a more human readable output
# @arg domain![`_choice_domain`]
domblkstat() {
    :;
}
# }} virsh domblkstat

# {{ virsh domcontrol
# @cmd domain control interface state
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
domcontrol() {
    :;
}
# }} virsh domcontrol

# {{ virsh domif-getlink
# @cmd get link state of a virtual interface
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --interface <string>                   interface device (MAC Address)
# @flag --config                                 Get persistent interface state
# @arg domain![`_choice_domain`]
# @arg interface!
domif-getlink() {
    :;
}
# }} virsh domif-getlink

# {{ virsh domifaddr
# @cmd Get network interfaces' addresses for a running domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --interface <string>                   network interface name
# @flag --full                                   always display names and MACs of interfaces
# @option --source <string>                      address source: 'lease', 'agent', or 'arp'
# @arg domain![`_choice_domain`]
domifaddr() {
    :;
}
# }} virsh domifaddr

# {{ virsh domiflist
# @cmd list all domain virtual interfaces
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --inactive                               get inactive rather than running configuration
# @arg domain![`_choice_domain`]
domiflist() {
    :;
}
# }} virsh domiflist

# {{ virsh domifstat
# @cmd get network interface stats for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --interface <string>                   interface device specified by name or MAC Address
# @arg domain![`_choice_domain`]
# @arg interface!
domifstat() {
    :;
}
# }} virsh domifstat

# {{ virsh dominfo
# @cmd domain information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @arg domain![`_choice_domain`]
dominfo() {
    :;
}
# }} virsh dominfo

# {{ virsh dommemstat
# @cmd get memory statistics for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --period <number>                      period in seconds to set collection
# @flag --config                                 affect next boot
# @flag --live                                   affect running domain
# @flag --current                                affect current domain
# @arg domain![`_choice_domain`]
dommemstat() {
    :;
}
# }} virsh dommemstat

# {{ virsh domstate
# @cmd domain state
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --reason                                 also print reason for the state
# @arg domain![`_choice_domain`]
domstate() {
    :;
}
# }} virsh domstate

# {{ virsh domstats
# @cmd get statistics about one or multiple domains
# @flag --state              report domain state
# @flag --cpu-total          report domain physical cpu usage
# @flag --balloon            report domain balloon statistics
# @flag --vcpu               report domain virtual cpu information
# @flag --interface          report domain network interface information
# @flag --block              report domain block device statistics
# @flag --perf               report domain perf event statistics
# @flag --iothread           report domain IOThread information
# @flag --memory             report domain memory usage
# @flag --dirtyrate          report domain dirty rate information
# @flag --vm                 report hypervisor-specific statistics
# @flag --list-active        list only active domains
# @flag --list-inactive      list only inactive domains
# @flag --list-persistent    list only persistent domains
# @flag --list-transient     list only transient domains
# @flag --list-running       list only running domains
# @flag --list-paused        list only paused domains
# @flag --list-shutoff       list only shutoff domains
# @flag --list-other         list only domains in other states
# @flag --raw                do not pretty-print the fields
# @flag --enforce            enforce requested stats parameters
# @flag --backing            add backing chain information to block stats
# @flag --nowait             report only stats that are accessible instantly
# @arg domain*[`_choice_domain`]
domstats() {
    :;
}
# }} virsh domstats

# {{ virsh domtime
# @cmd domain time
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --now                                    set to the time of the host running virsh
# @flag --pretty                                 print domain's time in human readable form
# @flag --sync                                   instead of setting given time, synchronize from domain's RTC
# @option --time <number>                        time to set
# @arg domain![`_choice_domain`]
domtime() {
    :;
}
# }} virsh domtime

# {{ virsh list
# @cmd list domains
# @flag --inactive                list inactive domains
# @flag --all                     list inactive & active domains
# @flag --transient               list transient domains
# @flag --persistent              list persistent domains
# @flag --with-snapshot           list domains with existing snapshot
# @flag --without-snapshot        list domains without a snapshot
# @flag --with-checkpoint         list domains with existing checkpoint
# @flag --without-checkpoint      list domains without a checkpoint
# @flag --state-running           list domains in running state
# @flag --state-paused            list domains in paused state
# @flag --state-shutoff           list domains in shutoff state
# @flag --state-other             list domains in other states
# @flag --autostart               list domains with autostart enabled
# @flag --no-autostart            list domains with autostart disabled
# @flag --with-managed-save       list domains with managed save state
# @flag --without-managed-save    list domains without managed save
# @flag --uuid                    list uuid's only
# @flag --name                    list domain names only
# @flag --id                      list domain IDs only
# @flag --table                   list table (default)
# @flag --managed-save            mark inactive domains with managed save state
# @flag --title                   show domain title
list() {
    :;
}
# }} virsh list

# {{ virsh event
# @cmd Domain Events
# @option --domain[`_choice_domain`] <string>    filter by domain name, id or uuid
# @option --event <string>                       which event type to wait for
# @flag --all                                    wait for all events instead of just one type
# @flag --loop                                   loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>                     timeout seconds
# @flag --list                                   list valid event types
# @flag --timestamp                              show timestamp for each printed event
event() {
    :;
}
# }} virsh event

# {{ virsh allocpages
# @cmd Manipulate pages pool size
# @option --pagesize <number>     page size (in kibibytes)
# @option --pagecount <number>    page count
# @option --cellno <number>       NUMA cell number
# @flag --add                     instead of setting new pool size add pages to it
# @flag --all                     set on all NUMA cells
# @arg pagesize!
# @arg pagecount!
allocpages() {
    :;
}
# }} virsh allocpages

# {{ virsh capabilities
# @cmd capabilities
# @option --xpath <path>    xpath expression to filter the XML document
# @flag --wrap              wrap xpath results in an common root element
capabilities() {
    :;
}
# }} virsh capabilities

# {{ virsh cpu-baseline
# @cmd compute baseline CPU
# @option --file <file>    file containing XML CPU descriptions
# @flag --features         Show features that are part of the CPU model type
# @flag --migratable       Do not include features that block migration
# @arg file!
cpu-baseline() {
    :;
}
# }} virsh cpu-baseline

# {{ virsh cpu-compare
# @cmd compare host CPU with a CPU described by an XML file
# @option --file <file>    file containing an XML CPU description
# @flag --error            report error if CPUs are incompatible
# @flag --validate         validate the XML document against schema
# @arg file!
cpu-compare() {
    :;
}
# }} virsh cpu-compare

# {{ virsh cpu-models
# @cmd CPU models
# @option --arch <string>    architecture
# @arg arch!
cpu-models() {
    :;
}
# }} virsh cpu-models

# {{ virsh domcapabilities
# @cmd domain capabilities
# @option --virttype <string>     virtualization type (/domain/@type)
# @option --emulatorbin <path>    path to emulator binary (/domain/devices/emulator)
# @option --arch <string>         domain architecture (/domain/os/type/@arch)
# @option --machine <string>      machine type (/domain/os/type/@machine)
# @option --xpath <path>          xpath expression to filter the XML document
# @flag --wrap                    wrap xpath results in an common root element
domcapabilities() {
    :;
}
# }} virsh domcapabilities

# {{ virsh freecell
# @cmd NUMA free memory
# @option --cellno <number>    NUMA cell number
# @flag --all                  show free memory for all NUMA cells
freecell() {
    :;
}
# }} virsh freecell

# {{ virsh freepages
# @cmd NUMA free pages
# @option --cellno <number>      NUMA cell number
# @option --pagesize <number>    page size (in kibibytes)
# @flag --all                    show free pages for all NUMA cells
freepages() {
    :;
}
# }} virsh freepages

# {{ virsh hostname
# @cmd print the hypervisor hostname
hostname() {
    :;
}
# }} virsh hostname

# {{ virsh hypervisor-cpu-baseline
# @cmd compute baseline CPU usable by a specific hypervisor
# @option --file <file>          file containing XML CPU descriptions
# @option --virttype <string>    virtualization type (/domain/@type)
# @option --emulator <path>      path to emulator binary (/domain/devices/emulator)
# @option --arch <string>        CPU architecture (/domain/os/type/@arch)
# @option --machine <string>     machine type (/domain/os/type/@machine)
# @flag --features               Show features that are part of the CPU model type
# @flag --migratable             Do not include features that block migration
# @option --model <string>       Shortcut for calling the command with a single CPU model and no additional features
hypervisor-cpu-baseline() {
    :;
}
# }} virsh hypervisor-cpu-baseline

# {{ virsh hypervisor-cpu-compare
# @cmd compare a CPU with the CPU created by a hypervisor on the host
# @option --file <file>          file containing an XML CPU description
# @option --virttype <string>    virtualization type (/domain/@type)
# @option --emulator <path>      path to emulator binary (/domain/devices/emulator)
# @option --arch <string>        CPU architecture (/domain/os/type/@arch)
# @option --machine <string>     machine type (/domain/os/type/@machine)
# @flag --error                  report error if CPUs are incompatible
# @flag --validate               validate the XML document against schema
# @arg file!
hypervisor-cpu-compare() {
    :;
}
# }} virsh hypervisor-cpu-compare

# {{ virsh maxvcpus
# @cmd connection vcpu maximum
# @option --type <string>    domain type
maxvcpus() {
    :;
}
# }} virsh maxvcpus

# {{ virsh node-memory-tune
# @cmd Get or set node memory parameters
# @option --shm-pages-to-scan <number>         number of pages to scan before the shared memory service goes to sleep
# @option --shm-sleep-millisecs <number>       number of millisecs the shared memory service should sleep before next scan
# @option --shm-merge-across-nodes <number>    Specifies if pages from different numa nodes can be merged
node-memory-tune() {
    :;
}
# }} virsh node-memory-tune

# {{ virsh nodecpumap
# @cmd node cpu map
# @flag --pretty    return human readable output
nodecpumap() {
    :;
}
# }} virsh nodecpumap

# {{ virsh nodecpustats
# @cmd Prints cpu stats of the node.
# @option --cpu <number>    prints specified cpu statistics only.
# @flag --percent           prints by percentage during 1 second.
nodecpustats() {
    :;
}
# }} virsh nodecpustats

# {{ virsh nodeinfo
# @cmd node information
nodeinfo() {
    :;
}
# }} virsh nodeinfo

# {{ virsh nodememstats
# @cmd Prints memory stats of the node.
# @option --cell <number>    prints specified cell statistics only.
nodememstats() {
    :;
}
# }} virsh nodememstats

# {{ virsh nodesevinfo
# @cmd node SEV information
nodesevinfo() {
    :;
}
# }} virsh nodesevinfo

# {{ virsh nodesuspend
# @cmd suspend the host node for a given time duration
# @option --target <string>      mem(Suspend-to-RAM), disk(Suspend-to-Disk), hybrid(Hybrid-Suspend)
# @option --duration <number>    Suspend duration in seconds, at least 60
# @arg target!
# @arg duration!
nodesuspend() {
    :;
}
# }} virsh nodesuspend

# {{ virsh sysinfo
# @cmd print the hypervisor sysinfo
sysinfo() {
    :;
}
# }} virsh sysinfo

# {{ virsh uri
# @cmd print the hypervisor canonical URI
uri() {
    :;
}
# }} virsh uri

# {{ virsh version
# @cmd show version
# @flag --daemon    report daemon version too
version() {
    :;
}
# }} virsh version

# {{ virsh checkpoint-create
# @cmd Create a checkpoint from XML
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --xmlfile <file>                       domain checkpoint XML
# @flag --redefine                               redefine metadata for existing checkpoint
# @flag --redefine-validate                      validate the redefined checkpoint
# @flag --quiesce                                quiesce guest's file systems
# @arg domain![`_choice_domain`]
checkpoint-create() {
    :;
}
# }} virsh checkpoint-create

# {{ virsh checkpoint-create-as
# @cmd Create a checkpoint from a set of args
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --name <string>                        name of checkpoint
# @option --description <string>                 description of checkpoint
# @flag --print-xml                              print XML document rather than create
# @flag --quiesce                                quiesce guest's file systems
# @option --diskspec <string>                    disk attributes: disk[,checkpoint=type][,bitmap=name]
# @arg domain![`_choice_domain`]
# @arg diskspec-string* <[--diskspec] <string>>
checkpoint-create-as() {
    :;
}
# }} virsh checkpoint-create-as

# {{ virsh checkpoint-delete
# @cmd Delete a domain checkpoint
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --checkpointname <string>              checkpoint name
# @flag --children                               delete checkpoint and all children
# @flag --children-only                          delete children but not checkpoint
# @flag --metadata                               delete only libvirt metadata, leaving checkpoint contents behind
# @arg domain![`_choice_domain`]
checkpoint-delete() {
    :;
}
# }} virsh checkpoint-delete

# {{ virsh checkpoint-dumpxml
# @cmd Dump XML for a domain checkpoint
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --checkpointname <string>              checkpoint name
# @flag --security-info                          include security sensitive information in XML dump
# @flag --no-domain                              exclude <domain> from XML
# @flag --size                                   include backup size estimate in XML dump
# @option --xpath <path>                         xpath expression to filter the XML document
# @flag --wrap                                   wrap xpath results in an common root element
# @arg domain![`_choice_domain`]
checkpoint-dumpxml() {
    :;
}
# }} virsh checkpoint-dumpxml

# {{ virsh checkpoint-edit
# @cmd edit XML for a checkpoint
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --checkpointname <string>              checkpoint name
# @arg domain![`_choice_domain`]
checkpoint-edit() {
    :;
}
# }} virsh checkpoint-edit

# {{ virsh checkpoint-info
# @cmd checkpoint information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --checkpointname <string>              checkpoint name
# @arg domain![`_choice_domain`]
checkpoint-info() {
    :;
}
# }} virsh checkpoint-info

# {{ virsh checkpoint-list
# @cmd List checkpoints for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --parent                                 add a column showing parent checkpoint
# @flag --roots                                  list only checkpoints without parents
# @flag --leaves                                 list only checkpoints without children
# @flag --no-leaves                              list only checkpoints that are not leaves (with children)
# @flag --tree                                   list checkpoints in a tree
# @option --from <string>                        limit list to children of given checkpoint
# @flag --descendants                            with --from, list all descendants
# @flag --name                                   list checkpoint names only
# @flag --topological                            sort list topologically rather than by name
# @arg domain![`_choice_domain`]
checkpoint-list() {
    :;
}
# }} virsh checkpoint-list

# {{ virsh checkpoint-parent
# @cmd Get the name of the parent of a checkpoint
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --checkpointname <string>              find parent of checkpoint name
# @arg domain![`_choice_domain`]
checkpoint-parent() {
    :;
}
# }} virsh checkpoint-parent

# {{ virsh iface-begin
# @cmd create a snapshot of current interfaces settings, which can be later committed (iface-commit) or restored (iface-rollback)
iface-begin() {
    :;
}
# }} virsh iface-begin

# {{ virsh iface-bridge
# @cmd create a bridge device and attach an existing network device to it
# @option --interface <string>    existing interface name
# @option --bridge <string>       new bridge device name
# @flag --no-stp                  do not enable STP for this bridge
# @option --delay <number>        number of seconds to squelch traffic on newly connected ports
# @flag --no-start                don't start the bridge immediately
# @arg interface!
# @arg bridge!
iface-bridge() {
    :;
}
# }} virsh iface-bridge

# {{ virsh iface-commit
# @cmd commit changes made since iface-begin and free restore point
iface-commit() {
    :;
}
# }} virsh iface-commit

# {{ virsh iface-define
# @cmd define an inactive persistent physical host interface or modify an existing persistent one from an XML file
# @option --file <file>    file containing an XML interface description
# @flag --validate         validate the XML against the schema
# @arg file!
iface-define() {
    :;
}
# }} virsh iface-define

# {{ virsh iface-destroy
# @cmd destroy a physical host interface (disable it / "if-down")
# @option --interface <string>    interface name or MAC address
# @arg interface!
iface-destroy() {
    :;
}
# }} virsh iface-destroy

# {{ virsh iface-dumpxml
# @cmd interface information in XML
# @option --interface <string>    interface name or MAC address
# @flag --inactive                show inactive defined XML
# @option --xpath <path>          xpath expression to filter the XML document
# @flag --wrap                    wrap xpath results in an common root element
# @arg interface!
iface-dumpxml() {
    :;
}
# }} virsh iface-dumpxml

# {{ virsh iface-edit
# @cmd edit XML configuration for a physical host interface
# @option --interface <string>    interface name or MAC address
# @arg interface!
iface-edit() {
    :;
}
# }} virsh iface-edit

# {{ virsh iface-list
# @cmd list physical host interfaces
# @flag --inactive    list inactive interfaces
# @flag --all         list inactive & active interfaces
iface-list() {
    :;
}
# }} virsh iface-list

# {{ virsh iface-mac
# @cmd convert an interface name to interface MAC address
# @option --interface <string>    interface name
# @arg interface!
iface-mac() {
    :;
}
# }} virsh iface-mac

# {{ virsh iface-name
# @cmd convert an interface MAC address to interface name
# @option --interface <string>    interface mac
# @arg interface!
iface-name() {
    :;
}
# }} virsh iface-name

# {{ virsh iface-rollback
# @cmd rollback to previous saved configuration created via iface-begin
iface-rollback() {
    :;
}
# }} virsh iface-rollback

# {{ virsh iface-start
# @cmd start a physical host interface (enable it / "if-up")
# @option --interface <string>    interface name or MAC address
# @arg interface!
iface-start() {
    :;
}
# }} virsh iface-start

# {{ virsh iface-unbridge
# @cmd undefine a bridge device after detaching its device(s)
# @option --bridge <string>    current bridge device name
# @flag --no-start             don't start the detached interface immediately (not recommended)
# @arg bridge!
iface-unbridge() {
    :;
}
# }} virsh iface-unbridge

# {{ virsh iface-undefine
# @cmd undefine a physical host interface (remove it from configuration)
# @option --interface <string>    interface name or MAC address
# @arg interface!
iface-undefine() {
    :;
}
# }} virsh iface-undefine

# {{ virsh nwfilter-define
# @cmd define or update a network filter from an XML file
# @option --file <file>    file containing an XML network filter description
# @flag --validate         validate the XML against the schema
# @arg file!
nwfilter-define() {
    :;
}
# }} virsh nwfilter-define

# {{ virsh nwfilter-dumpxml
# @cmd network filter information in XML
# @option --nwfilter <string>    network filter name or uuid
# @option --xpath <path>         xpath expression to filter the XML document
# @flag --wrap                   wrap xpath results in an common root element
# @arg nwfilter!
nwfilter-dumpxml() {
    :;
}
# }} virsh nwfilter-dumpxml

# {{ virsh nwfilter-edit
# @cmd edit XML configuration for a network filter
# @option --nwfilter <string>    network filter name or uuid
# @arg nwfilter!
nwfilter-edit() {
    :;
}
# }} virsh nwfilter-edit

# {{ virsh nwfilter-list
# @cmd list network filters
nwfilter-list() {
    :;
}
# }} virsh nwfilter-list

# {{ virsh nwfilter-undefine
# @cmd undefine a network filter
# @option --nwfilter <string>    network filter name or uuid
# @arg nwfilter!
nwfilter-undefine() {
    :;
}
# }} virsh nwfilter-undefine

# {{ virsh nwfilter-binding-create
# @cmd create a network filter binding from an XML file
# @option --file <file>    file containing an XML network filter binding description
# @flag --validate         validate the XML against the schema
# @arg file!
nwfilter-binding-create() {
    :;
}
# }} virsh nwfilter-binding-create

# {{ virsh nwfilter-binding-delete
# @cmd delete a network filter binding
# @option --binding <string>    network filter binding port dev
# @arg binding!
nwfilter-binding-delete() {
    :;
}
# }} virsh nwfilter-binding-delete

# {{ virsh nwfilter-binding-dumpxml
# @cmd network filter information in XML
# @option --binding <string>    network filter binding portdev
# @option --xpath <path>        xpath expression to filter the XML document
# @flag --wrap                  wrap xpath results in an common root element
# @arg binding!
nwfilter-binding-dumpxml() {
    :;
}
# }} virsh nwfilter-binding-dumpxml

# {{ virsh nwfilter-binding-list
# @cmd list network filter bindings
nwfilter-binding-list() {
    :;
}
# }} virsh nwfilter-binding-list

# {{ virsh net-autostart
# @cmd autostart a network
# @option --network <string>    network name or uuid
# @flag --disable               disable autostarting
# @arg network![`_choice_network`]
net-autostart() {
    :;
}
# }} virsh net-autostart

# {{ virsh net-create
# @cmd create a network from an XML file
# @option --file <file>    file containing an XML network description
# @flag --validate         validate the XML against the schema
# @arg file!
net-create() {
    :;
}
# }} virsh net-create

# {{ virsh net-define
# @cmd define an inactive persistent virtual network or modify an existing persistent one from an XML file
# @option --file <file>    file containing an XML network description
# @flag --validate         validate the XML against the schema
# @arg file!
net-define() {
    :;
}
# }} virsh net-define

# {{ virsh net-desc
# @cmd show or set network's description or title
# @option --network <string>     network name or uuid
# @flag --live                   modify/get running state
# @flag --config                 modify/get persistent configuration
# @flag --current                modify/get current state configuration
# @flag --title                  modify/get the title instead of description
# @flag --edit                   open an editor to modify the description
# @option --new-desc <string>    message
# @arg network![`_choice_network`]
# @arg new-desc-string* <[--new-desc] <string>>
net-desc() {
    :;
}
# }} virsh net-desc

# {{ virsh net-destroy
# @cmd destroy (stop) a network
# @option --network <string>    network name or uuid
# @arg network![`_choice_network`]
net-destroy() {
    :;
}
# }} virsh net-destroy

# {{ virsh net-dhcp-leases
# @cmd print lease info for a given network
# @option --network <string>    network name or uuid
# @option --mac <string>        MAC address
# @arg network![`_choice_network`]
net-dhcp-leases() {
    :;
}
# }} virsh net-dhcp-leases

# {{ virsh net-dumpxml
# @cmd network information in XML
# @option --network <string>    network name or uuid
# @flag --inactive              show inactive defined XML
# @option --xpath <path>        xpath expression to filter the XML document
# @flag --wrap                  wrap xpath results in an common root element
# @arg network![`_choice_network`]
net-dumpxml() {
    :;
}
# }} virsh net-dumpxml

# {{ virsh net-edit
# @cmd edit XML configuration for a network
# @option --network <string>    network name or uuid
# @arg network![`_choice_network`]
net-edit() {
    :;
}
# }} virsh net-edit

# {{ virsh net-event
# @cmd Network Events
# @option --network <string>    filter by network name or uuid
# @option --event <string>      which event type to wait for
# @flag --loop                  loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>    timeout seconds
# @flag --list                  list valid event types
# @flag --timestamp             show timestamp for each printed event
net-event() {
    :;
}
# }} virsh net-event

# {{ virsh net-info
# @cmd network information
# @option --network <string>    network name or uuid
# @arg network![`_choice_network`]
net-info() {
    :;
}
# }} virsh net-info

# {{ virsh net-list
# @cmd list networks
# @flag --inactive        list inactive networks
# @flag --all             list inactive & active networks
# @flag --persistent      list persistent networks
# @flag --transient       list transient networks
# @flag --autostart       list networks with autostart enabled
# @flag --no-autostart    list networks with autostart disabled
# @flag --uuid            list uuid's only
# @flag --name            list network names only
# @flag --table           list table (default)
# @flag --title           show network title
net-list() {
    :;
}
# }} virsh net-list

# {{ virsh net-metadata
# @cmd show or set network's custom XML metadata
# @option --network <string>    network name or uuid
# @option --uri <string>        URI of the namespace
# @flag --live                  modify/get running state
# @flag --config                modify/get persistent configuration
# @flag --current               modify/get current state configuration
# @flag --edit                  use an editor to change the metadata
# @option --key <string>        key to be used as a namespace identifier
# @option --set <string>        new metadata to set
# @flag --remove                remove the metadata corresponding to an uri
# @arg network![`_choice_network`]
# @arg uri!
net-metadata() {
    :;
}
# }} virsh net-metadata

# {{ virsh net-name
# @cmd convert a network UUID to network name
# @option --network <string>    network uuid
# @arg network![`_choice_network`]
net-name() {
    :;
}
# }} virsh net-name

# {{ virsh net-start
# @cmd start a (previously defined) inactive network
# @option --network <string>    network name or uuid
# @arg network![`_choice_network`]
net-start() {
    :;
}
# }} virsh net-start

# {{ virsh net-undefine
# @cmd undefine a persistent network
# @option --network <string>    network name or uuid
# @arg network![`_choice_network`]
net-undefine() {
    :;
}
# }} virsh net-undefine

# {{ virsh net-update
# @cmd update parts of an existing network's configuration
# @option --network <string>         network name or uuid
# @option --command <string>         type of update (add-first, add-last (add), delete, or modify)
# @option --section <string>         which section of network configuration to update
# @option --xml <file>               name of file containing xml (or, if it starts with '<', the complete xml element itself) to add/modify, or to be matched for search
# @option --parent-index <number>    which parent object to search through
# @flag --config                     affect next network startup
# @flag --live                       affect running network
# @flag --current                    affect current state of network
# @arg network![`_choice_network`]
# @arg command!
# @arg section!
# @arg xml!
net-update() {
    :;
}
# }} virsh net-update

# {{ virsh net-uuid
# @cmd convert a network name to network UUID
# @option --network <string>    network name
# @arg network![`_choice_network`]
net-uuid() {
    :;
}
# }} virsh net-uuid

# {{ virsh net-port-list
# @cmd list network ports
# @option --network <string>    network name or uuid
# @flag --uuid                  list uuid's only
# @flag --table                 list table (default)
# @arg network![`_choice_network`]
net-port-list() {
    :;
}
# }} virsh net-port-list

# {{ virsh net-port-create
# @cmd create a network port from an XML file
# @option --network <string>    network name or uuid
# @option --file <file>         file containing an XML network port description
# @flag --validate              validate the XML against the schema
# @arg network![`_choice_network`]
# @arg file!
net-port-create() {
    :;
}
# }} virsh net-port-create

# {{ virsh net-port-dumpxml
# @cmd network port information in XML
# @option --network <string>    network name or uuid
# @option --port <string>       port UUID
# @option --xpath <path>        xpath expression to filter the XML document
# @flag --wrap                  wrap xpath results in an common root element
# @arg network![`_choice_network`]
# @arg port!
net-port-dumpxml() {
    :;
}
# }} virsh net-port-dumpxml

# {{ virsh net-port-delete
# @cmd delete the specified network port
# @option --network <string>    network name or uuid
# @option --port <string>       port UUID
# @arg network![`_choice_network`]
# @arg port!
net-port-delete() {
    :;
}
# }} virsh net-port-delete

# {{ virsh nodedev-create
# @cmd create a device defined by an XML file on the node
# @option --file <file>    file containing an XML description of the device
# @flag --validate         validate the XML against the schema
# @arg file!
nodedev-create() {
    :;
}
# }} virsh nodedev-create

# {{ virsh nodedev-destroy
# @cmd destroy (stop) a device on the node
# @option --device <string>    device name or wwn pair in 'wwnn,wwpn' format
# @arg device!
nodedev-destroy() {
    :;
}
# }} virsh nodedev-destroy

# {{ virsh nodedev-detach
# @cmd detach node device from its device driver
# @option --device <string>    device key
# @option --driver <string>    pci device assignment backend driver (e.g. 'vfio' or 'xen')
# @arg device!
nodedev-detach() {
    :;
}
# }} virsh nodedev-detach

# {{ virsh nodedev-dumpxml
# @cmd node device details in XML
# @option --device <string>    device name or wwn pair in 'wwnn,wwpn' format
# @option --xpath <path>       xpath expression to filter the XML document
# @flag --wrap                 wrap xpath results in an common root element
# @arg device!
nodedev-dumpxml() {
    :;
}
# }} virsh nodedev-dumpxml

# {{ virsh nodedev-list
# @cmd enumerate devices on this host
# @flag --tree              list devices in a tree
# @option --cap <string>    capability names, separated by comma
# @flag --inactive          list inactive devices
# @flag --all               list inactive & active devices
nodedev-list() {
    :;
}
# }} virsh nodedev-list

# {{ virsh nodedev-reattach
# @cmd reattach node device to its device driver
# @option --device <string>    device key
# @arg device!
nodedev-reattach() {
    :;
}
# }} virsh nodedev-reattach

# {{ virsh nodedev-reset
# @cmd reset node device
# @option --device <string>    device key
# @arg device!
nodedev-reset() {
    :;
}
# }} virsh nodedev-reset

# {{ virsh nodedev-event
# @cmd Node Device Events
# @option --device <string>     filter by node device name
# @option --event <string>      which event type to wait for
# @flag --loop                  loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>    timeout seconds
# @flag --list                  list valid event types
# @flag --timestamp             show timestamp for each printed event
nodedev-event() {
    :;
}
# }} virsh nodedev-event

# {{ virsh nodedev-define
# @cmd Define a device by an xml file on a node
# @option --file <file>    file containing an XML description of the device
# @flag --validate         validate the XML against the schema
# @arg file!
nodedev-define() {
    :;
}
# }} virsh nodedev-define

# {{ virsh nodedev-undefine
# @cmd Undefine an inactive node device
# @option --device <string>    device name or wwn pair in 'wwnn,wwpn' format
# @arg device!
nodedev-undefine() {
    :;
}
# }} virsh nodedev-undefine

# {{ virsh nodedev-start
# @cmd Start an inactive node device
# @option --device <string>    device name
# @arg device!
nodedev-start() {
    :;
}
# }} virsh nodedev-start

# {{ virsh nodedev-autostart
# @cmd autostart a defined node device
# @option --device <string>    device name or wwn pair in 'wwnn,wwpn' format
# @flag --disable              disable autostarting
# @arg device!
nodedev-autostart() {
    :;
}
# }} virsh nodedev-autostart

# {{ virsh nodedev-info
# @cmd node device information
# @option --device <string>    device name or wwn pair in 'wwnn,wwpn' format
# @arg device!
nodedev-info() {
    :;
}
# }} virsh nodedev-info

# {{ virsh secret-define
# @cmd define or modify a secret from an XML file
# @option --file <file>    file containing secret attributes in XML
# @flag --validate         validate the XML against the schema
# @arg file!
secret-define() {
    :;
}
# }} virsh secret-define

# {{ virsh secret-dumpxml
# @cmd secret attributes in XML
# @option --secret <string>    secret UUID
# @option --xpath <path>       xpath expression to filter the XML document
# @flag --wrap                 wrap xpath results in an common root element
# @arg secret!
secret-dumpxml() {
    :;
}
# }} virsh secret-dumpxml

# {{ virsh secret-event
# @cmd Secret Events
# @option --secret <string>     filter by secret name or uuid
# @option --event <string>      which event type to wait for
# @flag --loop                  loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>    timeout seconds
# @flag --list                  list valid event types
# @flag --timestamp             show timestamp for each printed event
secret-event() {
    :;
}
# }} virsh secret-event

# {{ virsh secret-get-value
# @cmd Output a secret value
# @option --secret <string>    secret UUID
# @flag --plain                get value without converting to base64
# @arg secret!
secret-get-value() {
    :;
}
# }} virsh secret-get-value

# {{ virsh secret-list
# @cmd list secrets
# @flag --ephemeral       list ephemeral secrets
# @flag --no-ephemeral    list non-ephemeral secrets
# @flag --private         list private secrets
# @flag --no-private      list non-private secrets
secret-list() {
    :;
}
# }} virsh secret-list

# {{ virsh secret-set-value
# @cmd set a secret value
# @option --secret <string>    secret UUID
# @option --file <file>        read secret from file
# @flag --plain                read the secret from file without converting from base64
# @flag --interactive          read the secret from the terminal
# @option --base64 <string>    base64-encoded secret value
# @arg secret!
secret-set-value() {
    :;
}
# }} virsh secret-set-value

# {{ virsh secret-undefine
# @cmd undefine a secret
# @option --secret <string>    secret UUID
# @arg secret!
secret-undefine() {
    :;
}
# }} virsh secret-undefine

# {{ virsh snapshot-create
# @cmd Create a snapshot from XML
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --xmlfile <file>                       domain snapshot XML
# @flag --redefine                               redefine metadata for existing snapshot
# @flag --current                                with redefine, set current snapshot
# @flag --no-metadata                            take snapshot but create no metadata
# @flag --halt                                   halt domain after snapshot is created
# @flag --disk-only                              capture disk state but not vm state
# @flag --reuse-external                         reuse any existing external files
# @flag --quiesce                                quiesce guest's file systems
# @flag --atomic                                 require atomic operation
# @flag --live                                   take a live snapshot
# @flag --validate                               validate the XML against the schema
# @arg domain![`_choice_domain`]
snapshot-create() {
    :;
}
# }} virsh snapshot-create

# {{ virsh snapshot-create-as
# @cmd Create a snapshot from a set of args
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --name <string>                        name of snapshot
# @option --description <string>                 description of snapshot
# @flag --print-xml                              print XML document rather than create
# @flag --no-metadata                            take snapshot but create no metadata
# @flag --halt                                   halt domain after snapshot is created
# @flag --disk-only                              capture disk state but not vm state
# @flag --reuse-external                         reuse any existing external files
# @flag --quiesce                                quiesce guest's file systems
# @flag --atomic                                 require atomic operation
# @flag --live                                   take a live snapshot
# @flag --validate                               validate the XML against the schema
# @option --memspec <file>                       memory attributes: [file=]name[,snapshot=type]
# @option --diskspec <file>                      disk attributes: disk[,snapshot=type][,driver=type][,stype=type][,file=name]
# @arg domain![`_choice_domain`]
# @arg diskspec-string* <[--diskspec] <string>>
snapshot-create-as() {
    :;
}
# }} virsh snapshot-create-as

# {{ virsh snapshot-current
# @cmd Get or set the current snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --name                                   list the name, rather than the full xml
# @flag --security-info                          include security sensitive information in XML dump
# @option --snapshotname <string>                name of existing snapshot to make current
# @arg domain![`_choice_domain`]
snapshot-current() {
    :;
}
# }} virsh snapshot-current

# {{ virsh snapshot-delete
# @cmd Delete a domain snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                snapshot name
# @flag --current                                delete current snapshot
# @flag --children                               delete snapshot and all children
# @flag --children-only                          delete children but not snapshot
# @flag --metadata                               delete only libvirt metadata, leaving snapshot contents behind
# @arg domain![`_choice_domain`]
snapshot-delete() {
    :;
}
# }} virsh snapshot-delete

# {{ virsh snapshot-dumpxml
# @cmd Dump XML for a domain snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                snapshot name
# @flag --security-info                          include security sensitive information in XML dump
# @option --xpath <path>                         xpath expression to filter the XML document
# @flag --wrap                                   wrap xpath results in an common root element
# @arg domain![`_choice_domain`]
# @arg snapshotname!
snapshot-dumpxml() {
    :;
}
# }} virsh snapshot-dumpxml

# {{ virsh snapshot-edit
# @cmd edit XML for a snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                snapshot name
# @flag --current                                also set edited snapshot as current
# @flag --rename                                 allow renaming an existing snapshot
# @flag --clone                                  allow cloning to new name
# @arg domain![`_choice_domain`]
snapshot-edit() {
    :;
}
# }} virsh snapshot-edit

# {{ virsh snapshot-info
# @cmd snapshot information
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                snapshot name
# @flag --current                                info on current snapshot
# @arg domain![`_choice_domain`]
snapshot-info() {
    :;
}
# }} virsh snapshot-info

# {{ virsh snapshot-list
# @cmd List snapshots for a domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @flag --parent                                 add a column showing parent snapshot
# @flag --roots                                  list only snapshots without parents
# @flag --leaves                                 list only snapshots without children
# @flag --no-leaves                              list only snapshots that are not leaves (with children)
# @flag --metadata                               list only snapshots that have metadata that would prevent undefine
# @flag --no-metadata                            list only snapshots that have no metadata managed by libvirt
# @flag --inactive                               filter by snapshots taken while inactive
# @flag --active                                 filter by snapshots taken while active (full system snapshots)
# @flag --disk-only                              filter by disk-only snapshots
# @flag --internal                               filter by internal snapshots
# @flag --external                               filter by external snapshots
# @flag --tree                                   list snapshots in a tree
# @option --from <string>                        limit list to children of given snapshot
# @flag --current                                limit list to children of current snapshot
# @flag --descendants                            with --from, list all descendants
# @flag --name                                   list snapshot names only
# @flag --topological                            sort list topologically rather than by name
# @arg domain![`_choice_domain`]
snapshot-list() {
    :;
}
# }} virsh snapshot-list

# {{ virsh snapshot-parent
# @cmd Get the name of the parent of a snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                find parent of snapshot name
# @flag --current                                find parent of current snapshot
# @arg domain![`_choice_domain`]
snapshot-parent() {
    :;
}
# }} virsh snapshot-parent

# {{ virsh snapshot-revert
# @cmd Revert a domain to a snapshot
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --snapshotname <string>                snapshot name
# @flag --current                                revert to current snapshot
# @flag --running                                after reverting, change state to running
# @flag --paused                                 after reverting, change state to paused
# @flag --force                                  try harder on risky reverts
# @flag --reset-nvram                            re-initialize NVRAM from its pristine template
# @arg domain![`_choice_domain`]
snapshot-revert() {
    :;
}
# }} virsh snapshot-revert

# {{ virsh backup-begin
# @cmd Start a disk backup of a live domain
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --backupxml <string>                   domain backup XML
# @option --checkpointxml <string>               domain checkpoint XML
# @flag --reuse-external                         reuse files provided by caller
# @arg domain![`_choice_domain`]
backup-begin() {
    :;
}
# }} virsh backup-begin

# {{ virsh backup-dumpxml
# @cmd Dump XML for an ongoing domain block backup job
# @option --domain[`_choice_domain`] <string>    domain name, id or uuid
# @option --xpath <path>                         xpath expression to filter the XML document
# @flag --wrap                                   wrap xpath results in an common root element
# @arg domain![`_choice_domain`]
backup-dumpxml() {
    :;
}
# }} virsh backup-dumpxml

# {{ virsh find-storage-pool-sources-as
# @cmd find potential storage pool sources
# @option --type <string>         type of storage pool sources to find
# @option --host <string>         optional host to query
# @option --port <string>         optional port to query
# @option --initiator <string>    optional initiator IQN to use for query
# @arg type!
find-storage-pool-sources-as() {
    :;
}
# }} virsh find-storage-pool-sources-as

# {{ virsh find-storage-pool-sources
# @cmd discover potential storage pool sources
# @option --type <string>     type of storage pool sources to discover
# @option --srcSpec <file>    optional file of source xml to query for pools
# @arg type!
find-storage-pool-sources() {
    :;
}
# }} virsh find-storage-pool-sources

# {{ virsh pool-autostart
# @cmd autostart a pool
# @option --pool <string>    pool name or uuid
# @flag --disable            disable autostarting
# @arg pool!
pool-autostart() {
    :;
}
# }} virsh pool-autostart

# {{ virsh pool-build
# @cmd build a pool
# @option --pool <string>    pool name or uuid
# @flag --no-overwrite       do not overwrite any existing data
# @flag --overwrite          overwrite any existing data
# @arg pool!
pool-build() {
    :;
}
# }} virsh pool-build

# {{ virsh pool-create-as
# @cmd create a pool from a set of args
# @option --name <string>                         name of the pool
# @option --type <string>                         type of the pool
# @flag --print-xml                               print XML document, but don't define/create
# @option --source-host <string>                  source-host for underlying storage
# @option --source-path <path>                    source path for underlying storage
# @option --source-dev <string>                   source device for underlying storage
# @option --source-name <string>                  source name for underlying storage
# @option --target <string>                       target for underlying storage
# @option --source-format <string>                format for underlying storage
# @option --auth-type <string>                    auth type to be used for underlying storage
# @option --auth-username <string>                auth username to be used for underlying storage
# @option --secret-usage <string>                 auth secret usage to be used for underlying storage
# @option --secret-uuid <string>                  auth secret UUID to be used for underlying storage
# @option --adapter-name <string>                 adapter name to be used for underlying storage
# @option --adapter-wwnn <string>                 adapter wwnn to be used for underlying storage
# @option --adapter-wwpn <string>                 adapter wwpn to be used for underlying storage
# @option --adapter-parent <string>               adapter parent scsi_hostN to be used for underlying vHBA storage
# @option --adapter-parent-wwnn <string>          adapter parent scsi_hostN wwnn to be used for underlying vHBA storage
# @option --adapter-parent-wwpn <string>          adapter parent scsi_hostN wwpn to be used for underlying vHBA storage
# @option --adapter-parent-fabric-wwn <string>    adapter parent scsi_hostN fabric_wwn to be used for underlying vHBA storage
# @option --source-protocol-ver <string>          nfsvers value for NFS pool mount option
# @option --source-initiator <string>             initiator iqn for underlying storage
# @flag --build                                   build the pool as normal
# @flag --no-overwrite                            do not overwrite any existing data
# @flag --overwrite                               overwrite any existing data
# @arg name!
# @arg type!
pool-create-as() {
    :;
}
# }} virsh pool-create-as

# {{ virsh pool-create
# @cmd create a pool from an XML file
# @option --file <file>    file containing an XML pool description
# @flag --build            build the pool as normal
# @flag --no-overwrite     do not overwrite any existing data
# @flag --overwrite        overwrite any existing data
# @arg file!
pool-create() {
    :;
}
# }} virsh pool-create

# {{ virsh pool-define-as
# @cmd define a pool from a set of args
# @option --name <string>                         name of the pool
# @option --type <string>                         type of the pool
# @flag --print-xml                               print XML document, but don't define/create
# @option --source-host <string>                  source-host for underlying storage
# @option --source-path <path>                    source path for underlying storage
# @option --source-dev <string>                   source device for underlying storage
# @option --source-name <string>                  source name for underlying storage
# @option --target <string>                       target for underlying storage
# @option --source-format <string>                format for underlying storage
# @option --auth-type <string>                    auth type to be used for underlying storage
# @option --auth-username <string>                auth username to be used for underlying storage
# @option --secret-usage <string>                 auth secret usage to be used for underlying storage
# @option --secret-uuid <string>                  auth secret UUID to be used for underlying storage
# @option --adapter-name <string>                 adapter name to be used for underlying storage
# @option --adapter-wwnn <string>                 adapter wwnn to be used for underlying storage
# @option --adapter-wwpn <string>                 adapter wwpn to be used for underlying storage
# @option --adapter-parent <string>               adapter parent scsi_hostN to be used for underlying vHBA storage
# @option --adapter-parent-wwnn <string>          adapter parent scsi_hostN wwnn to be used for underlying vHBA storage
# @option --adapter-parent-wwpn <string>          adapter parent scsi_hostN wwpn to be used for underlying vHBA storage
# @option --adapter-parent-fabric-wwn <string>    adapter parent scsi_hostN fabric_wwn to be used for underlying vHBA storage
# @option --source-protocol-ver <string>          nfsvers value for NFS pool mount option
# @option --source-initiator <string>             initiator iqn for underlying storage
# @arg name!
# @arg type!
pool-define-as() {
    :;
}
# }} virsh pool-define-as

# {{ virsh pool-define
# @cmd define an inactive persistent storage pool or modify an existing persistent one from an XML file
# @option --file <file>    file containing an XML pool description
# @flag --validate         validate the XML against the schema
# @arg file!
pool-define() {
    :;
}
# }} virsh pool-define

# {{ virsh pool-delete
# @cmd delete a pool
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-delete() {
    :;
}
# }} virsh pool-delete

# {{ virsh pool-destroy
# @cmd destroy (stop) a pool
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-destroy() {
    :;
}
# }} virsh pool-destroy

# {{ virsh pool-dumpxml
# @cmd pool information in XML
# @option --pool <string>    pool name or uuid
# @flag --inactive           show inactive defined XML
# @option --xpath <path>     xpath expression to filter the XML document
# @flag --wrap               wrap xpath results in an common root element
# @arg pool!
pool-dumpxml() {
    :;
}
# }} virsh pool-dumpxml

# {{ virsh pool-edit
# @cmd edit XML configuration for a storage pool
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-edit() {
    :;
}
# }} virsh pool-edit

# {{ virsh pool-info
# @cmd storage pool information
# @option --pool <string>    pool name or uuid
# @flag --bytes              Return pool info in bytes
# @arg pool!
pool-info() {
    :;
}
# }} virsh pool-info

# {{ virsh pool-list
# @cmd list pools
# @flag --inactive           list inactive pools
# @flag --all                list inactive & active pools
# @flag --transient          list transient pools
# @flag --persistent         list persistent pools
# @flag --autostart          list pools with autostart enabled
# @flag --no-autostart       list pools with autostart disabled
# @option --type <string>    only list pool of specified type(s) (if supported)
# @flag --details            display extended details for pools
# @flag --uuid               list UUID of active pools only
# @flag --name               list name of active pools only
pool-list() {
    :;
}
# }} virsh pool-list

# {{ virsh pool-name
# @cmd convert a pool UUID to pool name
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-name() {
    :;
}
# }} virsh pool-name

# {{ virsh pool-refresh
# @cmd refresh a pool
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-refresh() {
    :;
}
# }} virsh pool-refresh

# {{ virsh pool-start
# @cmd start a (previously defined) inactive pool
# @option --pool <string>    pool name or uuid
# @flag --build              build the pool as normal
# @flag --no-overwrite       do not overwrite any existing data
# @flag --overwrite          overwrite any existing data
# @arg pool!
pool-start() {
    :;
}
# }} virsh pool-start

# {{ virsh pool-undefine
# @cmd undefine an inactive pool
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-undefine() {
    :;
}
# }} virsh pool-undefine

# {{ virsh pool-uuid
# @cmd convert a pool name to pool UUID
# @option --pool <string>    pool name or uuid
# @arg pool!
pool-uuid() {
    :;
}
# }} virsh pool-uuid

# {{ virsh pool-event
# @cmd Storage Pool Events
# @option --pool <string>       filter by storage pool name or uuid
# @option --event <string>      which event type to wait for
# @flag --loop                  loop until timeout or interrupt, rather than one-shot
# @option --timeout <number>    timeout seconds
# @flag --list                  list valid event types
# @flag --timestamp             show timestamp for each printed event
pool-event() {
    :;
}
# }} virsh pool-event

# {{ virsh pool-capabilities
# @cmd storage pool capabilities
pool-capabilities() {
    :;
}
# }} virsh pool-capabilities

# {{ virsh vol-clone
# @cmd clone a volume.
# @option --vol <path>          vol name, key or path
# @option --newname <string>    clone name
# @option --pool <string>       pool name or uuid
# @flag --prealloc-metadata     preallocate metadata (for qcow2 instead of full allocation)
# @flag --reflink               use btrfs COW lightweight copy
# @flag --print-xml             print XML document rather than clone the volume
# @arg vol!
# @arg newname!
vol-clone() {
    :;
}
# }} virsh vol-clone

# {{ virsh vol-create-as
# @cmd create a volume from a set of args
# @option --pool <string>                  pool name
# @option --name <string>                  name of the volume
# @option --capacity <string>              size of the vol, as scaled integer (default bytes)
# @option --allocation <string>            initial allocation size, as scaled integer (default bytes)
# @option --format <file>                  file format type raw,bochs,qcow,qcow2,qed,vmdk
# @option --backing-vol <string>           the backing volume if taking a snapshot
# @option --backing-vol-format <string>    format of backing volume if taking a snapshot
# @flag --prealloc-metadata                preallocate metadata (for qcow2 instead of full allocation)
# @flag --print-xml                        print XML document, but don't define/create
# @arg pool!
# @arg name!
# @arg capacity!
vol-create-as() {
    :;
}
# }} virsh vol-create-as

# {{ virsh vol-create
# @cmd create a vol from an XML file
# @option --pool <string>      pool name
# @option --file <file>        file containing an XML vol description
# @flag --prealloc-metadata    preallocate metadata (for qcow2 instead of full allocation)
# @flag --validate             validate the XML against the schema
# @arg pool!
# @arg file!
vol-create() {
    :;
}
# }} virsh vol-create

# {{ virsh vol-create-from
# @cmd create a vol, using another volume as input
# @option --pool <string>         pool name or uuid
# @option --file <file>           file containing an XML vol description
# @option --vol <path>            vol name, key or path
# @option --inputpool <string>    pool name or uuid of the input volume's pool
# @flag --prealloc-metadata       preallocate metadata (for qcow2 instead of full allocation)
# @flag --reflink                 use btrfs COW lightweight copy
# @flag --validate                validate the XML against the schema
# @arg pool!
# @arg file!
# @arg vol!
vol-create-from() {
    :;
}
# }} virsh vol-create-from

# {{ virsh vol-delete
# @cmd delete a vol
# @option --vol <path>        vol name, key or path
# @option --pool <string>     pool name or uuid
# @flag --delete-snapshots    delete snapshots associated with volume (must be supported by storage driver)
# @arg vol!
vol-delete() {
    :;
}
# }} virsh vol-delete

# {{ virsh vol-download
# @cmd download volume contents to a file
# @option --vol <path>         vol name, key or path
# @option --file <file>        file
# @option --pool <string>      pool name or uuid
# @option --offset <number>    volume offset to download from
# @option --length <number>    amount of data to download
# @flag --sparse               preserve sparseness of volume
# @arg vol!
# @arg file!
vol-download() {
    :;
}
# }} virsh vol-download

# {{ virsh vol-dumpxml
# @cmd vol information in XML
# @option --vol <path>       vol name, key or path
# @option --pool <string>    pool name or uuid
# @option --xpath <path>     xpath expression to filter the XML document
# @flag --wrap               wrap xpath results in an common root element
# @arg vol!
vol-dumpxml() {
    :;
}
# }} virsh vol-dumpxml

# {{ virsh vol-info
# @cmd storage vol information
# @option --vol <path>       vol name, key or path
# @option --pool <string>    pool name or uuid
# @flag --bytes              sizes are represented in bytes rather than pretty units
# @flag --physical           return the physical size of the volume in allocation field
# @arg vol!
vol-info() {
    :;
}
# }} virsh vol-info

# {{ virsh vol-key
# @cmd returns the volume key for a given volume name or path
# @option --vol <path>       volume name or path
# @option --pool <string>    pool name or uuid
# @arg vol!
vol-key() {
    :;
}
# }} virsh vol-key

# {{ virsh vol-list
# @cmd list vols
# @option --pool <string>    pool name or uuid
# @flag --details            display extended details for volumes
# @arg pool!
vol-list() {
    :;
}
# }} virsh vol-list

# {{ virsh vol-name
# @cmd returns the volume name for a given volume key or path
# @option --vol <path>    volume key or path
# @arg vol!
vol-name() {
    :;
}
# }} virsh vol-name

# {{ virsh vol-path
# @cmd returns the volume path for a given volume name or key
# @option --vol <string>     volume name or key
# @option --pool <string>    pool name or uuid
# @arg vol!
vol-path() {
    :;
}
# }} virsh vol-path

# {{ virsh vol-pool
# @cmd returns the storage pool for a given volume key or path
# @option --vol <path>    volume key or path
# @flag --uuid            return the pool uuid rather than pool name
# @arg vol!
vol-pool() {
    :;
}
# }} virsh vol-pool

# {{ virsh vol-resize
# @cmd resize a vol
# @option --vol <path>           vol name, key or path
# @option --capacity <string>    new capacity for the vol, as scaled integer (default bytes)
# @option --pool <string>        pool name or uuid
# @flag --allocate               allocate the new capacity, rather than leaving it sparse
# @flag --delta                  use capacity as a delta to current size, rather than the new size
# @flag --shrink                 allow the resize to shrink the volume
# @arg vol!
# @arg capacity!
vol-resize() {
    :;
}
# }} virsh vol-resize

# {{ virsh vol-upload
# @cmd upload file contents to a volume
# @option --vol <path>         vol name, key or path
# @option --file <file>        file
# @option --pool <string>      pool name or uuid
# @option --offset <number>    volume offset to upload to
# @option --length <number>    amount of data to upload
# @flag --sparse               preserve sparseness of volume
# @arg vol!
# @arg file!
vol-upload() {
    :;
}
# }} virsh vol-upload

# {{ virsh vol-wipe
# @cmd wipe a vol
# @option --vol <path>            vol name, key or path
# @option --pool <string>         pool name or uuid
# @option --algorithm <string>    perform selected wiping algorithm
# @arg vol!
vol-wipe() {
    :;
}
# }} virsh vol-wipe

# {{ virsh cd
# @cmd change the current directory
# @option --dir <dir>    directory to switch to (default: home or else root)
cd() {
    :;
}
# }} virsh cd

# {{ virsh echo
# @cmd echo arguments.
# @flag --shell    escape for shell use
# @flag --xml      escape for XML use
# @flag --split    split each argument on ','; ',,' is an escape sequence
# @flag --err      output to stderr
# @arg string*
echo_() {
    :;
}
# }} virsh echo

# {{ virsh exit
# @cmd quit this interactive terminal
exit() {
    :;
}
# }} virsh exit

# {{ virsh pwd
# @cmd print the current directory
pwd() {
    :;
}
# }} virsh pwd

# {{ virsh quit
# @cmd quit this interactive terminal
quit() {
    :;
}
# }} virsh quit

# {{ virsh connect
# @cmd (re)connect to hypervisor
# @option --name <string>    hypervisor connection URI
# @flag --readonly           read-only connection
connect() {
    :;
}
# }} virsh connect

_choice_domain() {
    virsh -q list --name --all
}

_choice_network() {
    virsh -q net-list --name --all
}

command eval "$(argc --argc-eval "$0" "$@")"