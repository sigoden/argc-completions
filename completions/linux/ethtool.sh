#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                  Shows a short help message.
# @flag --version                  Shows the ethtool version number.
# @option --debug <N>              Turns on debugging messages.
# @flag --json                     Output results in JavaScript Object Notation (JSON).
# @flag -I --include-statistics    Include command-related statistics in the output.
# @flag -a --show-pause            Queries the specified Ethernet device for pause parameter information.
# @flag -A --pause                 Changes the pause parameters of the specified Ethernet device.
# @flag -c --show-coalesce         Queries the specified network device for coalescing information.
# @flag -C --coalesce              Changes the coalescing settings of the specified network device.
# @flag -g --show-ring             Queries the specified network device for rx/tx ring parameter information.
# @flag -G --set-ring              Changes the rx/tx ring parameters of the specified network device.
# @flag -i --driver                Queries the specified network device for associated driver information.
# @flag -d --register-dump         Retrieves and prints a register dump for the specified network device.
# @flag -e --eeprom-dump           Retrieves and prints an EEPROM dump for the specified network device.
# @flag -E --change-eeprom         If value is specified, changes EEPROM byte for the specified network device.
# @flag -k                         Queries the specified network device for the state of protocol offload and other features.
# @flag --show-features            Queries the specified network device for the state of protocol offload and other features.
# @flag --show-offload             Queries the specified network device for the state of protocol offload and other features.
# @flag -K                         Changes the offload parameters and other features of the specified network device.
# @flag --features                 Changes the offload parameters and other features of the specified network device.
# @flag --offload                  Changes the offload parameters and other features of the specified network device.
# @flag -p --identify              Initiates adapter-specific action intended to enable an operator to easily identify the adapter by sight.
# @flag -P --show-permaddr         Queries the specified network device for permanent hardware address.
# @flag -r --negotiate             Restarts auto-negotiation on the specified Ethernet device, if auto-negotiation is enabled.
# @flag -S --statistics            Queries the specified network device for standard (IEEE, IETF, etc.), or NIC- and driver-specific statistics.
# @flag --phy-statistics           Queries the specified network device for PHY specific statistics.
# @flag -t --test                  Executes adapter selftest on the specified network device.
# @flag -s --change                Allows changing some or all settings of the specified network device.
# @flag -n                         Retrieves receive network flow classification options or rules.
# @flag -u                         Retrieves receive network flow classification options or rules.
# @flag --show-nfc                 Retrieves receive network flow classification options or rules.
# @flag --show-ntuple              Retrieves receive network flow classification options or rules.
# @flag -N                         Configures receive network flow classification options or rules.
# @flag -U                         Configures receive network flow classification options or rules.
# @flag --config-nfc               Configures receive network flow classification options or rules.
# @flag --config-ntuple            Configures receive network flow classification options or rules.
# @flag -w --get-dump              Retrieves and prints firmware dump for the specified network device.
# @flag -W --set-dump              Sets the dump flag for the device.
# @flag -T --show-time-stamping    Show the device's time stamping capabilities and associated PTP hardware clock.
# @flag -x                         Retrieves the receive flow hash indirection table and/or RSS hash key.
# @flag --show-rxfh-indir          Retrieves the receive flow hash indirection table and/or RSS hash key.
# @flag --show-rxfh                Retrieves the receive flow hash indirection table and/or RSS hash key.
# @flag -X                         Configures the receive flow hash indirection table and/or RSS hash key.
# @flag --set-rxfh-indir           Configures the receive flow hash indirection table and/or RSS hash key.
# @flag --rxfh                     Configures the receive flow hash indirection table and/or RSS hash key.
# @flag -f --flash                 Write a firmware image to flash or other non-volatile memory on the device.
# @flag -l --show-channels         Queries the specified network device for the numbers of channels it has.
# @flag -L --set-channels          Changes the numbers of channels of the specified network device.
# @flag -m                         Retrieves and if possible decodes the EEPROM from plugin modules, e.g SFP+, QSFP.
# @flag --dump-module-eeprom       Retrieves and if possible decodes the EEPROM from plugin modules, e.g SFP+, QSFP.
# @flag --module-info              Retrieves and if possible decodes the EEPROM from plugin modules, e.g SFP+, QSFP.
# @flag --show-priv-flags          Queries the specified network device for its private flags.
# @flag --set-priv-flags           Sets the device's private flags as specified.
# @flag --show-eee                 Queries the specified network device for its support of Energy-Efficient Ethernet (according to the IEEE 802.3az specifications)
# @flag --set-eee                  Sets the device EEE behaviour.
# @flag --set-phy-tunable          Sets the PHY tunable parameters.
# @flag --get-phy-tunable          Gets the PHY tunable parameters.
# @flag --get-tunable              Get the tunable parameters.
# @flag --set-tunable              Set driver's tunable parameters.
# @flag --reset                    Reset hardware components specified by flags and components listed below
# @flag --show-fec                 Queries the specified network device for its support of Forward Error Correction.
# @flag --set-fec                  Configures Forward Error Correction for the specified network device.
# @option -Q <|--per-queue>        Applies provided sub command to specific queues.
# @flag --cable-test-tdr           Perform a cable test and report the raw Time Domain Reflectometer data.
# @flag --monitor                  Listens to netlink notification and displays them.
# @flag --show-tunnels             Show tunnel-related device capabilities and state.
# @arg ifaces*[`_module_os_network_interface`]

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"