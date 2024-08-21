#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -c --cpu[system|user|idle|wait]          enable cpu stats, for more CPU related stats also see --cpu-adv and --cpu-use
# @option -C <0,3,total>                           include cpu0, cpu3 and total (when using -c/--cpu); use all to show all CPUs
# @option -d --disk[read|write]                    enable disk stats, for more disk related stats look into the other --disk plugins
# @option -D <total,hda>                           include total and hda (when using -d/--disk)
# @flag -g --page                                  enable page stats (page in, page out)
# @flag -i --int                                   enable interrupt stats
# @option -I <5,10>                                include interrupt 5 and 10 (when using -i/--int)
# @flag -l --load                                  enable load average stats (1 min, 5 mins, 15mins)
# @option -m --mem[used|buffers|cache|free]        enable memory stats; for more memory related stats also try --mem-adv and --swap
# @option -n --net[receive|send]                   enable network stats
# @option -N[`_module_os_network_interface`] <eth1,total>  include eth1 and total (when using -n/--net)
# @option -p --proc[runnable|uninterruptible|new]  enable process stats
# @flag -r --io                                    enable I/O request stats (read, write requests)
# @option -s --swap[used|free]                     enable swap stats
# @option -S <swap1,total>                         include swap1 and total (when using -s/--swap)
# @flag -t --time                                  enable time/date output
# @flag -T --epoch                                 enable time counter (seconds since epoch)
# @flag -y --sys                                   enable system stats (interrupts, context switches)
# @flag --aio                                      enable aio stats (asynchronous I/O)
# @flag --cpu-adv                                  enable advanced cpu stats
# @flag --cpu-use                                  enable only cpu usage stats
# @flag --fs                                       enable filesystem stats (open files, inodes)
# @flag --filesystem                               enable filesystem stats (open files, inodes)
# @flag --ipc                                      enable ipc stats (message queue, semaphores, shared memory)
# @option --lock[posix|flock|read|write]           enable file lock stats
# @flag --mem-adv                                  enable advanced memory stats
# @flag --raw                                      enable raw stats (raw sockets)
# @option --socket[total|tcp|udp|raw|ip-fragments]  enable socket stats
# @option --tcp[listen|established|syn|time_wait|close]  enable tcp stats
# @option --udp[listen|active]                     enable udp stats
# @option --unix[datagram|stream|listen|active]    enable unix stats
# @flag --vm                                       enable vm stats (hard pagefaults, soft pagefaults, allocated, free)
# @option --vm-adv[steal|scanK|scanD|pgoru|astll]  enable advance vm stats
# @option --zones[d32F|d32H|normF|normH]           enable zoneinfo stats
# @flag --plugin-name                              enable (external) plugins by plugin name, see PLUGINS for options
# @flag --list                                     list the internal and external plugin names
# @flag -a --all                                   equals -cdngy (default)
# @flag -f --full                                  expand -C, -D, -I, -N and -S discovery lists
# @flag -v --vmstat                                equals -pmgdsc -D total
# @flag --bits                                     force bits for values expressed in bytes
# @flag --float                                    force float values on screen (mutual exclusive with --integer)
# @flag --integer                                  force integer values on screen (mutual exclusive with --float)
# @flag --bw                                       change colors for white background terminal
# @flag --blackonwhite                             change colors for white background terminal
# @flag --nocolor                                  disable colors
# @flag --noheaders                                disable repetitive headers
# @flag --noupdate                                 disable intermediate updates when delay > 1
# @option --output <file>                          write CSV output to file
# @flag --profile                                  show profiling statistics when exiting dstat
# @flag --battery                                  battery in percentage (needs ACPI)
# @flag --battery-remain                           battery remaining in hours, minutes (needs ACPI)
# @flag --cpufreq                                  CPU frequency in percentage (needs ACPI)
# @flag --dbus                                     number of dbus connections (needs python-dbus)
# @flag --disk-avgqu                               average queue length of the requests that were issued to the device
# @flag --disk-avgrq                               average size (in sectors) of the requests that were issued to the device
# @flag --disk-svctm                               average service time (in milliseconds) for I/O requests that were issued to the device
# @flag --disk-tps                                 number of transfers per second that were issued to the device
# @flag --disk-util                                percentage of CPU time during which I/O requests were issued to the device (bandwidth utilization for the device)
# @flag --disk-wait                                average time (in milliseconds) for I/O requests issued to the device to be served
# @flag --dstat                                    show dstat cputime consumption and latency
# @flag --dstat-cpu                                show dstat advanced cpu usage
# @flag --dstat-ctxt                               show dstat context switches
# @flag --dstat-mem                                show dstat advanced memory usage
# @flag --fan                                      fan speed (needs ACPI)
# @flag --freespace                                per filesystem disk usage
# @flag --gpfs                                     GPFS read/write I/O (needs mmpmon)
# @flag --gpfs-ops                                 GPFS filesystem operations (needs mmpmon)
# @flag --helloworld                               Hello world example dstat plugin
# @flag --innodb-buffer                            show innodb buffer stats
# @flag --innodb-io                                show innodb I/O stats
# @flag --innodb-ops                               show innodb operations counters
# @flag --lustre                                   show lustre I/O throughput
# @flag --md-status                                show software raid (md) progress and speed
# @flag --memcache-hits                            show the number of hits and misses from memcache
# @flag --mysql5-cmds                              show the MySQL5 command stats
# @flag --mysql5-conn                              show the MySQL5 connection stats
# @flag --mysql5-innodb                            show the MySQL5 innodb stats
# @flag --mysql5-io                                show the MySQL5 I/O stats
# @flag --mysql5-keys                              show the MySQL5 keys stats
# @flag --mysql-io                                 show the MySQL I/O stats
# @flag --mysql-keys                               show the MySQL keys stats
# @flag --net-packets                              show the number of packets received and transmitted
# @flag --nfs3                                     show NFS v3 client operations
# @flag --nfs3-ops                                 show extended NFS v3 client operations
# @flag --nfsd3                                    show NFS v3 server operations
# @flag --nfsd3-ops                                show extended NFS v3 server operations
# @flag --nfsd4-ops                                show extended NFS v4 server operations
# @flag --nfsstat4                                 show NFS v4 stats
# @flag --ntp                                      show NTP time from an NTP server
# @flag --postfix                                  show postfix queue sizes (needs postfix)
# @flag --power                                    show power usage
# @flag --proc-count                               show total number of processes
# @flag --qmail                                    show qmail queue sizes (needs qmail)
# @flag --redis                                    show redis stats
# @flag --rpc                                      show RPC client calls stats
# @flag --rpcd                                     show RPC server calls stats
# @flag --sendmail                                 show sendmail queue size (needs sendmail)
# @flag --snmp-cpu                                 show CPU stats using SNMP from DSTAT_SNMPSERVER
# @flag --snmp-load                                show load stats using SNMP from DSTAT_SNMPSERVER
# @flag --snmp-mem                                 show memory stats using SNMP from DSTAT_SNMPSERVER
# @flag --snmp-net                                 show network stats using SNMP from DSTAT_SNMPSERVER
# @flag --snmp-net-err                             show network errors using SNMP from DSTAT_SNMPSERVER
# @flag --snmp-sys                                 show system stats (interrupts and context switches) using SNMP from DSTAT_SNMPSERVER
# @flag --snooze                                   show number of ticks per second
# @flag --squid                                    show squid usage statistics
# @flag --test                                     show test plugin output
# @flag --thermal                                  system temperature sensors
# @flag --top-bio                                  show most expensive block I/O process
# @flag --top-bio-adv                              show most expensive block I/O process (incl.
# @flag --top-childwait                            show process waiting for child the most
# @flag --top-cpu                                  show most expensive CPU process
# @flag --top-cpu-adv                              show most expensive CPU process (incl.
# @flag --top-cputime                              show process using the most CPU time (in ms)
# @flag --top-cputime-avg                          show process with the highest average timeslice (in ms)
# @flag --top-int                                  show most frequent interrupt
# @flag --top-io                                   show most expensive I/O process
# @flag --top-io-adv                               show most expensive I/O process (incl.
# @flag --top-latency                              show process with highest total latency (in ms)
# @flag --top-latency-avg                          show process with the highest average latency (in ms)
# @flag --top-mem                                  show process using the most memory
# @flag --top-oom                                  show process that will be killed by OOM the first
# @flag --utmp                                     show number of utmp connections (needs python-utmp)
# @flag --vm-cpu                                   show VMware CPU stats from hypervisor
# @flag --vm-mem                                   show VMware memory stats from hypervisor
# @flag --vm-mem-adv                               show advanced VMware memory stats from hypervisor
# @flag --vmk-hba                                  show VMware ESX kernel vmhba stats
# @flag --vmk-int                                  show VMware ESX kernel interrupt stats
# @flag --vmk-nic                                  show VMware ESX kernel port stats
# @flag --vz-cpu                                   show CPU usage per OpenVZ guest
# @flag --vz-io                                    show I/O usage per OpenVZ guest
# @flag --vz-ubc                                   show OpenVZ user beancounters
# @flag --wifi                                     wireless link quality and signal to noise ratio
# @flag --zfs-arc                                  show ZFS arc stats
# @flag --zfs-l2arc                                show ZFS l2arc stats
# @flag --zfs-zil                                  show ZFS zil stats
# @arg delay
# @arg count

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"