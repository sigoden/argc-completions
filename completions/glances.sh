#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  show this help message and exit
# @flag -V --version                               show program's version number and exit
# @flag -d --debug                                 enable debug mode
# @option -C --config <CONF_FILE>                  path to the configuration file
# @flag --modules-list                             display modules (plugins & exports) list and exit
# @flag --module-list                              display modules (plugins & exports) list and exit
# @option --disable-plugin <DISABLE_PLUGIN>        disable plugin (comma separated list or all).
# @option --disable-plugins <DISABLE_PLUGIN>       disable plugin (comma separated list or all).
# @option --enable-plugin <ENABLE_PLUGIN>          enable plugin (comma separated list)
# @option --enable-plugins <ENABLE_PLUGIN>         enable plugin (comma separated list)
# @flag --disable-process                          disable process module
# @flag --disable-webui                            disable the Web Interface
# @flag --light                                    light mode for Curses UI (disable all but top menu)
# @flag --enable-light                             light mode for Curses UI (disable all but top menu)
# @flag -0 --disable-irix                          task's cpu usage will be divided by the total number of CPUs
# @flag -1 --percpu                                start Glances in per CPU mode
# @flag -2 --disable-left-sidebar                  disable network, disk I/O, FS and sensors modules
# @flag -3 --disable-quicklook                     disable quick look module
# @flag -4 --full-quicklook                        disable all but quick look and load
# @flag -5 --disable-top                           disable top menu (QL, CPU, MEM, SWAP and LOAD)
# @flag -6 --meangpu                               start Glances in mean GPU mode
# @flag --disable-history                          disable stats history
# @flag --disable-bold                             disable bold mode in the terminal
# @flag --disable-bg                               disable background colors in the terminal
# @flag --enable-irq                               enable IRQ module
# @flag --enable-process-extended                  enable extended stats on top process
# @flag --separator                                enable separator in the UI
# @flag --enable-separator                         enable separator in the UI
# @flag --disable-cursor                           disable cursor (process selection) in the UI
# @option --sort-processes[cpu_percent|memory_percent|username|cpu_times|io_counters|name] <cpu_percent,memory_percent,username,cpu_times,io_counters,name>  Sort processes by: cpu_percent, memory_percent, username, cpu_times, io_counters, name
# @flag --programs                                 Accumulate processes by program
# @flag --program                                  Accumulate processes by program
# @option --export                                 enable export module (comma separated list)
# @option --export-csv-file <EXPORT_CSV_FILE>      file path for CSV exporter
# @flag --export-csv-overwrite                     overwrite existing CSV file
# @option --export-json-file <EXPORT_JSON_FILE>    file path for JSON exporter
# @option --export-graph-path <EXPORT_GRAPH_PATH>  Folder for Graph exporter
# @option -c --client                              connect to a Glances server by IPv4/IPv6 address or hostname
# @flag -s --server                                run Glances in server mode
# @flag --browser                                  start the client browser (list of servers)
# @flag --disable-autodiscover                     disable autodiscover feature
# @option -p --port                                define the client/server TCP port [default: 61209]
# @option -B --bind <BIND_ADDRESS>                 bind server to the given IPv4/IPv6 address or hostname
# @flag --username                                 define a client/server username
# @flag --password                                 define a client/server password
# @option -u <USERNAME_USED>                       use the given client/server username
# @option --snmp-community <SNMP_COMMUNITY>        SNMP community
# @option --snmp-port <SNMP_PORT>                  SNMP port
# @option --snmp-version <SNMP_VERSION>            SNMP version (1, 2c or 3)
# @option --snmp-user <SNMP_USER>                  SNMP username (only for SNMPv3)
# @option --snmp-auth <SNMP_AUTH>                  SNMP authentication key (only for SNMPv3)
# @flag --snmp-force                               force SNMP mode
# @option -t --time                                set minimum refresh rate in seconds [default: 2 sec]
# @flag -w --webserver                             run Glances in web server mode (bottle needed)
# @option --cached-time <CACHED_TIME>              set the server cache time [default: 1 sec]
# @option --stop-after <STOP_AFTER>                stop Glances after n refresh
# @flag --open-web-browser                         try to open the Web UI in the default Web browser
# @flag -q --quiet                                 do not display the curses interface
# @option -f --process-filter <PROCESS_FILTER>     set the process filter pattern (regular expression)
# @flag --process-short-name                       force short name for processes name
# @flag --process-long-name                        force long name for processes name
# @option --stdout                                 display stats to stdout, one stat per line (comma separated list of plugins/plugins.attribute)
# @option --stdout-json <STDOUT_JSON>              display stats to stdout, JSON format (comma separated list of plugins/plugins.attribute)
# @option --stdout-csv <STDOUT_CSV>                display stats to stdout, CSV format (comma separated list of plugins/plugins.attribute)
# @flag --issue                                    test all plugins and exit (please copy/paste the output if you open an issue)
# @flag --trace-malloc                             trace memory allocation and display it at the end of the process (python 3.4 or higher needed)
# @flag --memory-leak                              test memory leak (python 3.4 or higher needed)
# @flag --api-doc                                  display fields descriptions
# @flag --hide-kernel-threads                      hide kernel threads in process list (not available on Windows)
# @flag -b --byte                                  display network rate in byte per second
# @flag --diskio-show-ramfs                        show RAM Fs in the DiskIO plugin
# @flag --diskio-iops                              show IO per second in the DiskIO plugin
# @flag --fahrenheit                               display temperature in Fahrenheit (default is Celsius)
# @flag --fs-free-space                            display FS free space instead of used
# @flag --sparkline                                display sparklines instead of bar in the curses interface
# @flag --disable-unicode                          disable unicode characters in the curses interface
# @flag --theme-white                              optimize display colors for white background
# @flag --disable-check-update                     disable online Glances version ckeck
# @option --strftime <STRFTIME_FORMAT>             strftime format string for displaying current date in standalone mode

command eval "$(argc --argc-eval "$0" "$@")"