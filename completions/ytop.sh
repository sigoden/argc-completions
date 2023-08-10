#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --average-cpu              Show average CPU in the CPU widget
# @flag -b --battery                  Show Battery widget (overridden by 'minimal' flag)
# @flag -f --fahrenheit               Show temperatures in fahrenheit
# @flag -h --help                     Prints help information
# @flag -m --minimal                  Only show the CPU, Mem, and Process widgets
# @flag -p --per-cpu                  Show each CPU in the CPU widget
# @flag -s --statusbar                Show a statusbar with the time
# @flag -V --version                  Prints version information
# @option -c --colorscheme[default|default-dark|solarized-dark|monokai|vice] <colorscheme>  Colorschemes: - default - default-dark (for white backgrounds) - solarized-dark - monokai - vice [default: default]
# @option -i --interface[`_module_os_network_interface`] <interface>  The name of the network interface to show in the Net widget.
# @option -I --interval <interval>    Interval in seconds between updates of the CPU and Mem widgets.

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"