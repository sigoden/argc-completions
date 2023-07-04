_patch_help() {
    if [[ "$*" == "adb" ]]; then
        adb --help | sed -n '/^global options/,/^$/ p'
        cat <<-'EOF'
general commands:
 devices                  list connected devices (-l for long output)
 help                     show this help message
 version                  show version num

networking:
 connect                  connect to a device via TCP/IP [default port=5555]
 disconnect               disconnect from given TCP/IP device [default port=5555], or all
 forward                  list all forward socket connections
 forward                  forward socket connection using:
 ppp                      run PPP over USB
 reverse                  reverse socket connection
 reverse                  remove specific reverse socket connection
 reverse                  remove all reverse socket connections from device

file transfer:
 push                     copy local files/directories to device
 pull                     copy files/dirs from device
 sync                     sync a local build from $ANDROID_PRODUCT_OUT to the device (default all)

shell:
 shell                    run remote shell command (interactive shell if no command given)
 emu                      run emulator console command

app installation (see also `adb shell cmd package help`):
 install                  push a single package to the device and install it
 install-multiple         push multiple APKs to the device for a single package and install them
 install-multi-package    push one or more packages to the device and install them atomically
 uninstall                remove this app package from the device

debugging:
 bugreport                write bugreport to given PATH
 jdwp                     list pids of processes hosting a JDWP transport
 logcat                   show device log (logcat --help for more)

security:
 disable-verity           disable dm-verity checking on userdebug builds
 enable-verity            re-enable dm-verity checking on userdebug builds
 keygen                   generate adb public/private key; private key stored in FILE,

scripting:
 wait-for-device          wait for device to be in the given state
 wait-for-recovery        wait for device to be in the given state
 wait-for-rescue          wait for device to be in the given state
 wait-for-sideload        wait for device to be in the given state
 wait-for-bootloader      wait for device to be in the given state
 wait-for-disconnect      wait for device to be in the given state
 wait-for-usb-device      wait for device to be in the given state
 wait-for-usb-recovery    wait for device to be in the given state
 wait-for-usb-rescue      wait for device to be in the given state
 wait-for-usb-sideload    wait for device to be in the given state
 wait-for-usb-bootloader  wait for device to be in the given state
 wait-for-usb-disconnect  wait for device to be in the given state
 wait-for-local-device    wait for device to be in the given state
 wait-for-local-recovery  wait for device to be in the given state
 wait-for-local-rescue    wait for device to be in the given state
 wait-for-local-sideload  wait for device to be in the given state
 wait-for-local-bootloader  wait for device to be in the given state
 wait-for-local-disconnect  wait for device to be in the given state
 get-state                print offline | bootloader | device
 get-serialno             print <serial-number>
 get-devpath              print <device-path>
 remount                  remount partitions read-write.
 reboot                   reboot the device; defaults to booting system image but
                          supports bootloader and recovery too. sideload reboots
                          into recovery and automatically starts sideload mode,
                          sideload-auto-reboot is the same but reboots after sideloading.
 sideload                 sideload the given full OTA package
 root                     restart adbd with root permissions
 unroot                   restart adbd without root permissions
 usb                      restart adbd listening on USB
 tcpip                    restart adbd listening on TCP on PORT

internal debugging:
 start-server             ensure that there is a server running
 kill-server              kill the server if it is running
 reconnect                kick connection from host side to force reconnect
EOF
    else
        cat <<-'EOF' | _patch_help_extract_subcmds $@
adb devices
    -l                      long output
adb connect HOST[:PORT]
adb disconnect [HOST[:PORT]] 
adb forward LOCAL REMOTE
    --list                  list all forward socket connections
    --no-rebind             don't replace existing connection
    --remove LOCAL          remove specific forward socket connection
    --remove-all            remove all forward socket connections
adb ppp TTY [PARAMETER...]
adb reverse LOCAL REMOTE
    --list                  list all reverse socket connections from device
    --no-rebind             don't replace existing connection
    --remove REMOTE         remove specific reverse socket connection
    --remove-all            remove all reverse socket connections from device
adb push LOCAL... REMOTE
    --sync                  only push files that are newer on the host than the device
adb pull REMOTE... LOCAL
    -a                      preserve file timestamp and mode
adb sync (all|data|odm|oem|product_services|product|system|vendor)
    -l                      list but don't copy
adb shell [COMMAND...]
    -e  ESCAPE             choose escape character, or "none"; default '~'
    -n                     don't read from stdin
    -T                     disable PTY allocation
    -t                     force PTY allocation
    -x                     disable remote exit codes and stdout/stderr separation
adb emu COMMAND
adb install PACKAGE
    -l                     specify that the APK file being installed should be retained, even if the installation is successful.
    -r                     replace existing application
    -t                     allow test packages
    -s                     install the app on the device's SD card if it supports external storage
    -d                     allow version code downgrade (debuggable packages only)
    -p                     partial application install (install-multiple only)
    -g                     grant all runtime permissions
    --instant              cause the app to be installed as an ephemeral install app
adb install-multiple PACKAGE...
    -l                     specify that the APK file being installed should be retained, even if the installation is successful.
    -r                     replace existing application
    -t                     allow test packages
    -s                     install the app on the device's SD card if it supports external storage
    -d                     allow version code downgrade (debuggable packages only)
    -p                     partial application install (install-multiple only)
    -g                     grant all runtime permissions
    --instant              cause the app to be installed as an ephemeral install app
adb install-multi-package  PACKAGE...
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
adb uninstall PACKAGE
    -k                     keep the data and cache directories
adb bugreport [PATH]
adb keygen FILE
adb remount
    -R                     used to remount the system partition as read-only after it has been remounted as read-write. 
adb reboot (bootloader|recovery|sideload|sideload-auto-reboot)
adb sideload OTAPACKAGE
adb tcpip PORT
adb reconnect
EOF
    fi
}
_patch_table() {
    if [[ "$*" == "adb reconnect" ]]; then
        _patch_table_edit_arguments ';;' 'TYPE;[`_choice_reconnect_type`]'
    else
        cat
    fi
}

_choice_reconnect_type() {
    echo "device	kick connection from device side to force reconnect"
    echo "offline	reset offline/unauthorized devices to force reconnect"
}