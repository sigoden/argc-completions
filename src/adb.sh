_patch_help() {
    if [[ "$*" == "adb" ]]; then
        adb --help | sed -n '/^global options/,/^$/ p'
    fi
    embed_help="$( \
        cat <<-'EOF' | _patch_help_embed_help $@
# devices - list connected devices (-l for long output)
    -l                      long output
# help - show this help message
# version - show version num

# connect HOST[:PORT] - connect to a device via TCP/IP [default port=5555]
# disconnect [HOST[:PORT]] - disconnect from given TCP/IP device [default port=5555], or all
# forward LOCAL REMOTE - forward socket connection using
    --list                  list all forward socket connections
    --no-rebind             don't replace existing connection
    --remove LOCAL          remove specific forward socket connection
    --remove-all            remove all forward socket connections
# ppp TTY [PARAMETER...] - run PPP over USB
# reverse  LOCAL REMOTE - reverse socket connection
    --list                  list all reverse socket connections from device
    --no-rebind             don't replace existing connection
    --remove REMOTE         remove specific reverse socket connection
    --remove-all            remove all reverse socket connections from device
# push% - copy local files/directories to device
# pull% - copy files/dirs from device
# sync% - sync a local build from $ANDROID_PRODUCT_OUT to the device (default all) 
# shell% - run remote shell command (interactive shell if no command given)
# emu COMMAND - run emulator console command
# install PACKAGE - push a single package to the device and install it
# install-multiple PACKAGE... - push multiple APKs to the device for a single package and install them
# install-multi-package% - push one or more packages to the device and install them atomically
# uninstall PACKAGE - remove this app package from the device
    -k                     keep the data and cache directories
# bugreport [PATH] - write bugreport to given PATH
# jdwp - list pids of processes hosting a JDWP transport
# logcat - show device log (logcat --help for more)
# disable-verity - disable dm-verity checking on userdebug builds
# enable-verity - re-enable dm-verity checking on userdebug builds
# keygen FILE - generate adb public/private key; private key stored in FILE,
# wait-for-device - wait for device to be in the given state
# wait-for-recovery - wait for device to be in the given state
# wait-for-rescue - wait for device to be in the given state
# wait-for-sideload - wait for device to be in the given state
# wait-for-bootloader - wait for device to be in the given state
# wait-for-disconnect - wait for device to be in the given state
# wait-for-usb-device - wait for device to be in the given state
# wait-for-usb-recovery - wait for device to be in the given state
# wait-for-usb-rescue - wait for device to be in the given state
# wait-for-usb-sideload - wait for device to be in the given state
# wait-for-usb-bootloader - wait for device to be in the given state
# wait-for-usb-disconnect - wait for device to be in the given state
# wait-for-local-device - wait for device to be in the given state
# wait-for-local-recovery - wait for device to be in the given state
# wait-for-local-rescue - wait for device to be in the given state
# wait-for-local-sideload - wait for device to be in the given state
# wait-for-local-bootloader - wait for device to be in the given state
# wait-for-local-disconnect - wait for device to be in the given state
# get-state - print offline | bootloader | device
# get-serialno - print <serial-number>
# get-devpath - print <device-path>
# remount - remount partitions read-write.
    -R                     used to remount the system partition as read-only after it has been remounted as read-write. 
# reboot (bootloader|recovery|sideload|sideload-auto-reboot) - reboot the device; defaults to booting system image but
# sideload OTAPACKAGE - sideload the given full OTA package
# root - restart adbd with root permissions
# unroot - restart adbd without root permissions
# usb - restart adbd listening on USB
# tcpip PORT - restart adbd listening on TCP on PORT
# start-server - ensure that there is a server running
# kill-server - kill the server if it is running
# reconnect - kick connection from host side to force reconnect
EOF
)"
        echo "$embed_help"
        if [[ -z "$embed_help" ]] || grep -q __HELP_CMD__ <<<"$embed_help"; then
            subcmd_help_text="$($1 --help | sed -n "/^ $2 /,/^ [a-z]/ p" | head -n -1 | sed 's/\(-\S\+\):/\1 /')"
            echo "Usage:$subcmd_help_text"
        fi
}

_patch_table() {
    if [[ "$*" == "adb shell" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'command;[`_module_os_command`]' \
            'args;~[`_module_os_command_args`]' \

    elif [[ "$*" == "adb emu" ]]; then
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \

    elif [[ "$*" == "adb install" ]] \
      || [[ "$*" == "adb install-multiple" ]] \
    ; then
        _patch_table_copy_options adb install-multi-package

    elif [[ "$*" == "adb reconnect" ]]; then
        _patch_table_edit_arguments ';;' 'type;[`_choice_reconnect_type`]'

    else
        cat
    fi
}

_choice_reconnect_type() {
    echo "device	kick connection from device side to force reconnect"
    echo "offline	reset offline/unauthorized devices to force reconnect"
}
