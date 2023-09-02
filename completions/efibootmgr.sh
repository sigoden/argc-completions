#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --active                               sets bootnum active
# @flag -A --inactive                             sets bootnum inactive
# @option -b --bootnum[`_choice_boot`] <XXXX>     modify BootXXXX (hex)
# @flag -B --delete-bootnum                       delete bootnum
# @flag -c --create                               create new variable bootnum and add to bootorder
# @flag -C --create-only                          create new variable bootnum and do not add to bootorder
# @flag -D --remove-dups                          remove duplicate values from BootOrder
# @option -d --disk <disk>                        (defaults to /dev/sda) containing loader
# @flag -r --driver                               Operate on Driver variables, not Boot Variables.
# @option -e --edd <1|3|-1>                       force EDD 1.0 or 3.0 creation variables, or guess
# @option -E --device <num>                       EDD 1.0 device number (defaults to 0x80)
# @flag -g --gpt                                  force disk with invalid PMBR to be treated as GPT
# @option -i --iface <name>                       create a netboot entry for the named interface
# @option -l --loader <name>                      (defaults to "\EFI\ubuntu\grub.efi")
# @option -L --label <label>                      Boot manager display label (defaults to "Linux")
# @flag -m --mirror-below-4G                      t|f mirror memory below 4GB
# @flag -M --mirror-above-4G                      X percentage memory to mirror above 4GB
# @option -n --bootnext[`_choice_boot`] <XXXX>    set BootNext to XXXX (hex)
# @flag -N --delete-bootnext                      delete BootNext
# @option -o --bootorder* <XXXX,YYYY,ZZZZ,>       explicitly set BootOrder (hex)
# @flag -O --delete-bootorder                     delete BootOrder
# @option -p --part <part>                        partition containing loader (defaults to 1 on partitioned devices)
# @flag -q --quiet                                be quiet
# @option -t --timeout <seconds>                  set boot manager timeout waiting for user input.
# @flag -T --delete-timeout                       delete Timeout.
# @flag -u                                        handle extra args as UCS-2 (default is ASCII)
# @flag --unicode                                 handle extra args as UCS-2 (default is ASCII)
# @flag --UCS-2                                   handle extra args as UCS-2 (default is ASCII)
# @flag -v --verbose                              print additional information
# @flag -V --version                              return version and exit
# @flag -w --write-signature                      write unique sig to MBR if needed
# @flag -y --sysprep                              Operate on SysPrep variables, not Boot Variables.
# @option -@ --append-binary-args <file>          append extra args from file (use "-" for stdin)
# @flag -h --help                                 show help/usage

_choice_boot() {
    efibootmgr | sed -n 's/Boot\(\S\+\)\* \(.*\)$/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"