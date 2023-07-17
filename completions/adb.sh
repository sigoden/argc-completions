#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a               listen on all network interfaces, not just localhost
# @flag -d               use USB device (error if multiple devices connected)
# @flag -e               use TCP/IP device (error if multiple TCP/IP devices available)
# @option -s <SERIAL>    use device with given serial (overrides $ANDROID_SERIAL)
# @option -t <ID>        use device with given transport id
# @flag -H               name of adb server host [default=localhost]
# @flag -P               port of adb server [default=5037]
# @option -L <SOCKET>    listen on given socket for adb server [default=tcp:localhost:5037]

# {{ adb devices
# @cmd list connected devices (-l for long output)
# @flag -l    long output
devices() {
    :;
}
# }} adb devices

# {{ adb version
# @cmd show version num
version() {
    :;
}
# }} adb version

# {{ adb connect
# @cmd connect to a device via TCP/IP [default port=5555]
# @arg HOST-PORT <HOST[:PORT]>
connect() {
    :;
}
# }} adb connect

# {{ adb disconnect
# @cmd disconnect from given TCP/IP device [default port=5555], or all
# @arg HOST-PORT <HOST[:PORT]>
disconnect() {
    :;
}
# }} adb disconnect

# {{ adb forward
# @cmd list all forward socket connections
# @flag --list                list all forward socket connections
# @flag --no-rebind           don't replace existing connection
# @option --remove <LOCAL>    remove specific forward socket connection
# @flag --remove-all          remove all forward socket connections
# @arg LOCAL
# @arg REMOTE
forward() {
    :;
}
# }} adb forward

# {{ adb ppp
# @cmd run PPP over USB
# @arg TTY
# @arg PARAMETER*
ppp() {
    :;
}
# }} adb ppp

# {{ adb reverse
# @cmd reverse socket connection
# @flag --list                 list all reverse socket connections from device
# @flag --no-rebind            don't replace existing connection
# @option --remove <REMOTE>    remove specific reverse socket connection
# @flag --remove-all           remove all reverse socket connections from device
# @arg LOCAL
# @arg REMOTE
reverse() {
    :;
}
# }} adb reverse

# {{ adb push
# @cmd copy local files/directories to device
# @flag --sync    only push files that are newer on the host than the device
# @arg LOCAL*
# @arg REMOTE
push() {
    :;
}
# }} adb push

# {{ adb pull
# @cmd copy files/dirs from device
# @flag -a    preserve file timestamp and mode
# @arg REMOTE*
# @arg LOCAL
pull() {
    :;
}
# }} adb pull

# {{ adb sync
# @cmd sync a local build from $ANDROID_PRODUCT_OUT to the device (default all)
# @flag -l    list but don't copy
# @arg value[all|data|odm|oem|product_services|product|system|vendor]
sync() {
    :;
}
# }} adb sync

# {{ adb shell
# @cmd run remote shell command (interactive shell if no command given)
# @flag -e    ESCAPE             choose escape character, or "none"; default '~'
# @flag -n    don't read from stdin
# @flag -T    disable PTY allocation
# @flag -t    force PTY allocation
# @flag -x    disable remote exit codes and stdout/stderr separation
shell() {
    :;
}
# }} adb shell

# {{ adb emu
# @cmd run emulator console command
emu() {
    :;
}
# }} adb emu

# {{ adb install
# @cmd push a single package to the device and install it
# @flag -l           specify that the APK file being installed should be retained, even if the installation is successful.
# @flag -r           replace existing application
# @flag -t           allow test packages
# @flag -s           install the app on the device's SD card if it supports external storage
# @flag -d           allow version code downgrade (debuggable packages only)
# @flag -p           partial application install (install-multiple only)
# @flag -g           grant all runtime permissions
# @flag --instant    cause the app to be installed as an ephemeral install app
# @arg PACKAGE
install() {
    :;
}
# }} adb install

# {{ adb install-multiple
# @cmd push multiple APKs to the device for a single package and install them
# @flag -l           specify that the APK file being installed should be retained, even if the installation is successful.
# @flag -r           replace existing application
# @flag -t           allow test packages
# @flag -s           install the app on the device's SD card if it supports external storage
# @flag -d           allow version code downgrade (debuggable packages only)
# @flag -p           partial application install (install-multiple only)
# @flag -g           grant all runtime permissions
# @flag --instant    cause the app to be installed as an ephemeral install app
# @arg PACKAGE*
install-multiple() {
    :;
}
# }} adb install-multiple

# {{ adb install-multi-package
# @cmd push one or more packages to the device and install them atomically
# @flag -r                       replace existing application
# @flag -t                       allow test packages
# @flag -d                       allow version code downgrade (debuggable packages only)
# @flag -p                       partial application install (install-multiple only)
# @flag -g                       grant all runtime permissions
# @flag --instant                cause the app to be installed as an ephemeral install app
# @flag --no-streaming           always push APK to device and invoke Package Manager as separate steps
# @flag --streaming              force streaming APK directly into Package Manager
# @flag --fastdeploy             use fast deploy
# @flag --no-fastdeploy          prevent use of fast deploy
# @flag --force-agent            force update of deployment agent when using fast deploy
# @flag --date-check-agent       update deployment agent when local version is newer and using fast deploy
# @flag --version-check-agent    update deployment agent when local version has different version code and using fast deploy
# @flag --local-agent            locate agent files from local source build (instead of SDK location)
# @arg PACKAGE*
install-multi-package() {
    :;
}
# }} adb install-multi-package

# {{ adb uninstall
# @cmd remove this app package from the device
# @flag -k    keep the data and cache directories
# @arg PACKAGE
uninstall() {
    :;
}
# }} adb uninstall

# {{ adb bugreport
# @cmd write bugreport to given PATH
# @arg PATH
bugreport() {
    :;
}
# }} adb bugreport

# {{ adb jdwp
# @cmd list pids of processes hosting a JDWP transport
jdwp() {
    :;
}
# }} adb jdwp

# {{ adb logcat
# @cmd show device log (logcat --help for more)
logcat() {
    :;
}
# }} adb logcat

# {{ adb disable-verity
# @cmd disable dm-verity checking on userdebug builds
disable-verity() {
    :;
}
# }} adb disable-verity

# {{ adb enable-verity
# @cmd re-enable dm-verity checking on userdebug builds
enable-verity() {
    :;
}
# }} adb enable-verity

# {{ adb keygen
# @cmd generate adb public/private key; private key stored in FILE,
# @arg FILE
keygen() {
    :;
}
# }} adb keygen

# {{ adb wait-for-device
# @cmd wait for device to be in the given state
wait-for-device() {
    :;
}
# }} adb wait-for-device

# {{ adb wait-for-recovery
# @cmd wait for device to be in the given state
wait-for-recovery() {
    :;
}
# }} adb wait-for-recovery

# {{ adb wait-for-rescue
# @cmd wait for device to be in the given state
wait-for-rescue() {
    :;
}
# }} adb wait-for-rescue

# {{ adb wait-for-sideload
# @cmd wait for device to be in the given state
wait-for-sideload() {
    :;
}
# }} adb wait-for-sideload

# {{ adb wait-for-bootloader
# @cmd wait for device to be in the given state
wait-for-bootloader() {
    :;
}
# }} adb wait-for-bootloader

# {{ adb wait-for-disconnect
# @cmd wait for device to be in the given state
wait-for-disconnect() {
    :;
}
# }} adb wait-for-disconnect

# {{ adb wait-for-usb-device
# @cmd wait for device to be in the given state
wait-for-usb-device() {
    :;
}
# }} adb wait-for-usb-device

# {{ adb wait-for-usb-recovery
# @cmd wait for device to be in the given state
wait-for-usb-recovery() {
    :;
}
# }} adb wait-for-usb-recovery

# {{ adb wait-for-usb-rescue
# @cmd wait for device to be in the given state
wait-for-usb-rescue() {
    :;
}
# }} adb wait-for-usb-rescue

# {{ adb wait-for-usb-sideload
# @cmd wait for device to be in the given state
wait-for-usb-sideload() {
    :;
}
# }} adb wait-for-usb-sideload

# {{ adb wait-for-usb-bootloader
# @cmd wait for device to be in the given state
wait-for-usb-bootloader() {
    :;
}
# }} adb wait-for-usb-bootloader

# {{ adb wait-for-usb-disconnect
# @cmd wait for device to be in the given state
wait-for-usb-disconnect() {
    :;
}
# }} adb wait-for-usb-disconnect

# {{ adb wait-for-local-device
# @cmd wait for device to be in the given state
wait-for-local-device() {
    :;
}
# }} adb wait-for-local-device

# {{ adb wait-for-local-recovery
# @cmd wait for device to be in the given state
wait-for-local-recovery() {
    :;
}
# }} adb wait-for-local-recovery

# {{ adb wait-for-local-rescue
# @cmd wait for device to be in the given state
wait-for-local-rescue() {
    :;
}
# }} adb wait-for-local-rescue

# {{ adb wait-for-local-sideload
# @cmd wait for device to be in the given state
wait-for-local-sideload() {
    :;
}
# }} adb wait-for-local-sideload

# {{ adb wait-for-local-bootloader
# @cmd wait for device to be in the given state
wait-for-local-bootloader() {
    :;
}
# }} adb wait-for-local-bootloader

# {{ adb wait-for-local-disconnect
# @cmd wait for device to be in the given state
wait-for-local-disconnect() {
    :;
}
# }} adb wait-for-local-disconnect

# {{ adb get-state
# @cmd print offline | bootloader | device
get-state() {
    :;
}
# }} adb get-state

# {{ adb get-serialno
# @cmd print <serial-number>
get-serialno() {
    :;
}
# }} adb get-serialno

# {{ adb get-devpath
# @cmd print <device-path>
get-devpath() {
    :;
}
# }} adb get-devpath

# {{ adb remount
# @cmd remount partitions read-write.
# @flag -R    used to remount the system partition as read-only after it has been remounted as read-write.
remount() {
    :;
}
# }} adb remount

# {{ adb reboot
# @cmd reboot the device; defaults to booting system image but supports bootloader and recovery too.
# @arg value[bootloader|recovery|sideload|sideload-auto-reboot]
reboot() {
    :;
}
# }} adb reboot

# {{ adb sideload
# @cmd sideload the given full OTA package
# @arg OTAPACKAGE
sideload() {
    :;
}
# }} adb sideload

# {{ adb root
# @cmd restart adbd with root permissions
root() {
    :;
}
# }} adb root

# {{ adb unroot
# @cmd restart adbd without root permissions
unroot() {
    :;
}
# }} adb unroot

# {{ adb usb
# @cmd restart adbd listening on USB
usb() {
    :;
}
# }} adb usb

# {{ adb tcpip
# @cmd restart adbd listening on TCP on PORT
# @arg PORT
tcpip() {
    :;
}
# }} adb tcpip

# {{ adb start-server
# @cmd ensure that there is a server running
start-server() {
    :;
}
# }} adb start-server

# {{ adb kill-server
# @cmd kill the server if it is running
kill-server() {
    :;
}
# }} adb kill-server

# {{ adb reconnect
# @cmd kick connection from host side to force reconnect
# @arg TYPE[`_choice_reconnect_type`]
reconnect() {
    :;
}
# }} adb reconnect

_choice_reconnect_type() {
    echo "device	kick connection from device side to force reconnect"
    echo "offline	reset offline/unauthorized devices to force reconnect"
}

command eval "$(argc --argc-eval "$0" "$@")"