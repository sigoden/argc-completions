#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                               print usage information and exit
# @flag -v --version                            print the version information and exit
# @option -p --propfile <argument>              the jmeter property file to use
# @option -q --addprop <argument>               additional JMeter property file(s)
# @option -t --testfile <argument>              the jmeter test(.jmx) file to run
# @option -l --logfile <argument>               the file to log samples to
# @option -j --jmeterlogfile <argument>         jmeter run log file (jmeter.log)
# @flag -n --nongui                             run JMeter in nongui mode
# @flag -s --server                             run the JMeter server
# @option -H --proxyHost <argument>             Set a proxy server for JMeter to use
# @option -P --proxyPort <argument>             Set proxy server port for JMeter to use
# @option -N --nonProxyHosts <argument>         Set nonproxy host list (e.g. *.apache.org|localhost)
# @option -u --username <argument>              Set username for proxy server that JMeter is to use
# @option -a --password <argument>              Set password for proxy server that JMeter is to use
# @option -J --jmeterproperty <<argument>=<value>>  Define additional JMeter properties
# @option -G --globalproperty <<argument>=<value>>  Define Global properties (sent to servers) e.g. -Gport=123
# @option -D --systemproperty <<argument>=<value>>  Define additional system properties
# @option -S --systemPropertyFile <argument>    additional system property file(s)
# @option -L --loglevel <<argument>=<value>>    [category=]level e.g. jorphan=INFO or jmeter.util=DEBUG
# @flag -r --runremote                          Start remote servers (as defined in remote_hosts)
# @option -R --remotestart <argument>           Start these remote servers (overrides remote_hosts)
# @option -d --homedir <argument>               the jmeter home directory to use
# @flag -X --remoteexit                         Exit the remote servers at end of test (non-GUI)

command eval "$(argc --argc-eval "$0" "$@")"