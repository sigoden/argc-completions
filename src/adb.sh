_patch_help() {
    if [[ "$*" == "adb" ]]; then
        adb --help | sed -n '/^global options/,/^$/ p'
    fi
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
# push LOCAL... REMOTE - copy local files/directories to device
    --sync                  only push files that are newer on the host than the device
# pull REMOTE... LOCAL - copy files/dirs from device
    -a                      preserve file timestamp and mode
# sync (all|data|odm|oem|product_services|product|system|vendor) - sync a local build from $ANDROID_PRODUCT_OUT to the device (default all)
    -l                      list but don't copy
# shell [COMMAND...] - run remote shell command (interactive shell if no command given)
    -e ESCAPE              choose escape character, or "none"; default '~'
    -n                     don't read from stdin
    -T                     disable PTY allocation
    -t                     force PTY allocation
    -x                     disable remote exit codes and stdout/stderr separation
# emu COMMAND - run emulator console command
# install PACKAGE - push a single package to the device and install it
    -l                     specify that the APK file being installed should be retained, even if the installation is successful.
    -r                     replace existing application
    -t                     allow test packages
    -s                     install the app on the device's SD card if it supports external storage
    -d                     allow version code downgrade (debuggable packages only)
    -p                     partial application install (install-multiple only)
    -g                     grant all runtime permissions
    --instant              cause the app to be installed as an ephemeral install app
# install-multiple PACKAGE... - push multiple APKs to the device for a single package and install them
    -l                     specify that the APK file being installed should be retained, even if the installation is successful.
    -r                     replace existing application
    -t                     allow test packages
    -s                     install the app on the device's SD card if it supports external storage
    -d                     allow version code downgrade (debuggable packages only)
    -p                     partial application install (install-multiple only)
    -g                     grant all runtime permissions
    --instant              cause the app to be installed as an ephemeral install app
# install-multi-package PACKAGE... - push one or more packages to the device and install them atomically
    -r                     replace existing application
    -t                     allow test packages
    -d                     allow version code downgrade (debuggable packages only)
    -p                     partial application install (install-multiple only)
    -g                     grant all runtime permissions
    --instant              cause the app to be installed as an ephemeral install app
    --no-streaming         always push APK to device and invoke Package Manager as separate steps
    --streaming            force streaming APK directly into Package Manager
    --fastdeploy           use fast deploy
    --no-fastdeploy        prevent use of fast deploy
    --force-agent          force update of deployment agent when using fast deploy
    --date-check-agent     update deployment agent when local version is newer and using fast deploy
    --version-check-agent  update deployment agent when local version has different version code and using fast deploy
    --local-agent          locate agent files from local source build (instead of SDK location)
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
