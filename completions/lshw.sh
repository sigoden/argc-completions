#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -version             print program version ()
# @flag -html                output hardware tree as HTML
# @flag -xml                 output hardware tree as XML
# @flag -json                output hardware tree as a JSON object
# @flag -short               output hardware paths
# @flag -businfo             output bus information
# @option -class             only show a certain class of hardware
# @option -C <CLASS>         same as '-class CLASS'
# @option -c <CLASS>         same as '-class CLASS'
# @option -disable <TEST>    disable a test (like pci, isapnp, cpuid, etc.
# @option -enable <TEST>     enable a test (like pci, isapnp, cpuid, etc.
# @flag -quiet               don't display status
# @flag -sanitize            sanitize output (remove sensitive information like serial numbers, etc.)
# @flag -numeric             output numeric IDs (for PCI, USB, etc.)
# @flag -notime              exclude volatile attributes (timestamps) from output

command eval "$(argc --argc-eval "$0" "$@")"