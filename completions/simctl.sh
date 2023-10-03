#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ simctl addmedia
# @cmd Add photos, live photos, videos, or contacts to the library of a device.
# @arg device[`_choice_device`]
# @arg paths+
addmedia() {
    :;
}
# }} simctl addmedia

# {{ simctl boot
# @cmd Boot a device or device pair.
# @option --arch <arch>          Specify the architecture to use when booting the simulator (eg: 'arm64' or 'x86_64')
# @option --disabledJob <job>    Disables the given launchd job.
# @option --enabledJob <job>     Enables the given launchd job when it would normally be disabled.
# @arg device![`_choice_delete`]
boot() {
    :;
}
# }} simctl boot

# {{ simctl clone
# @cmd Clone an existing device.
# @arg device![`_choice_delete`]
# @arg new-name! <new name>
# @arg destination-device-set <destination device set>
clone() {
    :;
}
# }} simctl clone

# {{ simctl create
# @cmd Create a new device.
# @arg name!
# @arg device-type-id! <device type id>
# @arg runtime-id[`_choice_runtime_id`] <runtime id>
create() {
    :;
}
# }} simctl create

# {{ simctl delete
# @cmd Delete specified devices, unavailable devices, or all devices.
# @arg device![`_choice_delete`]
# @arg device-n-unavailable-all <[... <device n>]|unavailable|all>
delete() {
    :;
}
# }} simctl delete

# {{ simctl diagnose
# @cmd Collect diagnostic information and logs.
# @flag -b                  Do NOT show the resulting archive in a Finder window upon completion.
# @flag -X                  Run all diagnostics with no timeout.
# @flag --timeout           Specify a duration (in seconds) to wait for the log collection before timeout.
# @flag --output            Specify the output directory.
# @flag --no-archive        Do not create an archive, leave the collected files uncompressed.
# @flag --all-logs          Include all device logs, even for non-booted devices.
# @flag --data-container    Include booted device(s) data directory.
# @flag --udid              Collect diagnostics only from the specified device.
diagnose() {
    :;
}
# }} simctl diagnose

# {{ simctl erase
# @cmd Erase a device's contents and settings.
# @arg device![`_choice_delete`]
# @arg device-n-all <[... <device n>]|all>
erase() {
    :;
}
# }} simctl erase

# {{ simctl get_app_container
# @cmd Print the path of the installed app's container
# @arg device![`_choice_delete`]
# @arg app-bundle-identifier! <app bundle identifier>
# @arg container
get_app_container() {
    :;
}

# {{{ simctl get_app_container app
# @cmd The .app bundle
get_app_container::app() {
    :;
}
# }}} simctl get_app_container app

# {{{ simctl get_app_container data
# @cmd The application's data container
get_app_container::data() {
    :;
}
# }}} simctl get_app_container data

# {{{ simctl get_app_container groups
# @cmd The App Group containers
get_app_container::groups() {
    :;
}
# }}} simctl get_app_container groups
# }} simctl get_app_container

# {{ simctl getenv
# @cmd Print an environment variable from a running device.
# @arg device![`_choice_delete`]
# @arg variable-name! <variable name>
getenv() {
    :;
}
# }} simctl getenv

# {{ simctl icloud_sync
# @cmd Trigger iCloud sync on a device.
# @arg device![`_choice_delete`]
icloud_sync() {
    :;
}
# }} simctl icloud_sync

# {{ simctl install
# @cmd Install an app on a device.
# @arg device![`_choice_delete`]
# @arg path!
install() {
    :;
}
# }} simctl install

# {{ simctl install_app_data
# @cmd Install an xcappdata package to a device, replacing the current contents of the container.
# @arg device![`_choice_delete`]
# @arg path-to-xcappdata-package! <path to xcappdata package>
install_app_data() {
    :;
}
# }} simctl install_app_data

# {{ simctl io
# @cmd Set up a device IO operation.
# @flag --poll       Poll after enumeration.
# @flag --codec      Specifies the codec type: "h264" or "hevc".
# @flag --force      Force the output file to be written to, even if the file already exists.
# @flag --type       Can be "png", "tiff", "bmp", "gif", "jpeg".
# @flag --display    iOS: supports "internal" or "external".
# @flag --mask       For non-rectangular displays, handle the mask by policy:
# @arg device![`_choice_delete`]
# @arg operation!
io() {
    :;
}
# }} simctl io

# {{ simctl keychain
# @cmd Manipulate a device's keychain
# @arg device![`_choice_delete`]
# @arg action!
keychain() {
    :;
}
# }} simctl keychain

# {{ simctl launch
# @cmd Launch an application by identifier on a device.
# @flag --console                      Block and print the application's stdout and stderr to the current terminal.
# @flag --console-pty                  Block and print the application's stdout and stderr to the current terminal via a PTY.
# @option --stdout <path>              Redirect the application's standard output to a file.
# @option --stderr <path>              Redirect the application's standard error to a file.
# @flag --terminate-running-process    Terminate any running copy of the application.
# @arg device![`_choice_delete`]
# @arg app-bundle-identifier! <app bundle identifier>
# @arg args+
launch() {
    :;
}
# }} simctl launch

# {{ simctl list
# @cmd List available devices, device types, runtimes, or device pairs.
# @flag -j    Print as JSON
# @flag -e    Encode slashes without escapes in JSON output
# @flag -v    More verbose output
# @arg enum[devices|devicetypes|runtimes|pairs]
# @arg search-term-available <<search term>|available>
list() {
    :;
}
# }} simctl list

# {{ simctl location
# @cmd Control a device's simulated location
# @arg device![`_choice_delete`]
# @arg action!
location() {
    :;
}
# }} simctl location

# {{ simctl logverbose
# @cmd enable or disable verbose logging for a device
# @arg device[`_choice_delete`]
# @arg enum[enable|disable]
logverbose() {
    :;
}
# }} simctl logverbose

# {{ simctl openurl
# @cmd Open a URL in a device.
# @arg device![`_choice_delete`]
# @arg url!
openurl() {
    :;
}
# }} simctl openurl

# {{ simctl pair
# @cmd Create a new watch and phone pair.
# @arg watch-device! <watch device>
# @arg phone-device! <phone device>
pair() {
    :;
}
# }} simctl pair

# {{ simctl pair_activate
# @cmd Set a given pair as active.
# @arg pair!
pair_activate() {
    :;
}
# }} simctl pair_activate

# {{ simctl pbcopy
# @cmd Copy standard input onto the device pasteboard.
# @arg device-or-host! <device or "host">
pbcopy() {
    :;
}
# }} simctl pbcopy

# {{ simctl pbpaste
# @cmd Print the contents of the device's pasteboard to standard output.
# @arg device-or-host! <device or "host">
pbpaste() {
    :;
}
# }} simctl pbpaste

# {{ simctl pbsync
# @cmd Sync the pasteboard content from one pasteboard to another.
# @arg source-device-or-host! <source device or "host">
# @arg destination-device-or-host! <destination device or "host">
pbsync() {
    :;
}
# }} simctl pbsync

# {{ simctl privacy
# @cmd Grant, revoke, or reset privacy and permissions
# @arg device![`_choice_delete`]
# @arg action!
# @arg service!
# @arg bundle-identifier <bundle identifier>
privacy() {
    :;
}
# }} simctl privacy

# {{ simctl push
# @cmd Send a simulated push notification
# @arg device![`_choice_delete`]
# @arg bundle-identifier <bundle identifier>
# @arg json-file <<json file>|->
push() {
    :;
}
# }} simctl push

# {{ simctl rename
# @cmd Rename a device.
# @arg device![`_choice_delete`]
# @arg name!
rename() {
    :;
}
# }} simctl rename

# {{ simctl runtime
# @cmd Perform operations on runtimes
# @flag -m --move                         Remove the original file if the image is added successfully.
# @flag -a --async                        Print the UUID of the new image then exit, do not wait on the results of the add operation.
# @option -d --notUsedSinceDays <days>    Delete images not used within the past <days> days.
# @flag -n --dry-run                      Print what images would be deleted without actually deleting anything.
# @flag -v                                Verbose mode.
# @flag -j                                Print as JSON
# @flag --default                         Clear the override for the given SDK and revert to default behavior.
# @flag --sdkBuild                        Explicitly specify the SDK build, eg for an Xcode other than the selected Xcode.
# @arg operation!
runtime() {
    :;
}
# }} simctl runtime

# {{ simctl shutdown
# @cmd Shutdown a device.
# @arg device-all <<device>|all>
shutdown() {
    :;
}
# }} simctl shutdown

# {{ simctl spawn
# @cmd Spawn a process by executing a given executable on a device.
# @arg device![`_choice_delete`]
# @arg path-to-executable! <path to executable>
# @arg args+
spawn() {
    :;
}
# }} simctl spawn

# {{ simctl status_bar
# @cmd Set or clear status bar overrides
# @option --time <string>                    Set the date or time to a fixed value.
# @option --dataNetwork <dataNetworkType>    If specified must be one of 'hide', 'wifi', '3g', '4g', 'lte', 'lte-a', 'lte+', '5g', '5g+', '5g-uwb', or '5g-uc'.
# @option --wifiMode <mode>                  If specified must be one of 'searching', 'failed', or 'active'.
# @option --wifiBars <int>                   If specified must be 0-3.
# @option --cellularMode <mode>              If specified must be one of 'notSupported', 'searching', 'failed', or 'active'.
# @option --cellularBars <int>               If specified must be 0-4.
# @option --operatorName <string>            Set the cellular operator/carrier name.
# @option --batteryState <state>             If specified must be one of 'charging', 'charged', or 'discharging'.
# @option --batteryLevel <int>               If specified must be 0-100.
# @arg device![`_choice_delete`]
status_bar() {
    :;
}

# {{{ simctl status_bar list
# @cmd
status_bar::list() {
    :;
}
# }}} simctl status_bar list

# {{{ simctl status_bar clear
# @cmd
status_bar::clear() {
    :;
}
# }}} simctl status_bar clear

# {{{ simctl status_bar override
# @cmd
status_bar::override() {
    :;
}
# }}} simctl status_bar override
# }} simctl status_bar

# {{ simctl terminate
# @cmd Terminate an application by identifier on a device.
# @arg device![`_choice_delete`]
# @arg app-bundle-identifier! <app bundle identifier>
terminate() {
    :;
}
# }} simctl terminate

# {{ simctl ui
# @cmd Get or Set UI options
# @arg device![`_choice_delete`]
ui() {
    :;
}

# {{{ simctl ui appearance
# @cmd light The Light appearance style.
ui::appearance() {
    :;
}
# }}} simctl ui appearance

# {{{ simctl ui increase_contrast
# @cmd enabled Increase Contrast is enabled.
ui::increase_contrast() {
    :;
}
# }}} simctl ui increase_contrast

# {{{ simctl ui content_size
# @cmd Standard sizes: extra-small, small, medium, large, extra-large, extra-extra-large, extra-extra-extra-large.
ui::content_size() {
    :;
}
# }}} simctl ui content_size
# }} simctl ui

# {{ simctl uninstall
# @cmd Uninstall an app from a device.
# @arg device![`_choice_delete`]
# @arg app-bundle-identifier! <app bundle identifier>
uninstall() {
    :;
}
# }} simctl uninstall

# {{ simctl unpair
# @cmd Unpair a watch and phone pair.
# @arg pair-uuid! <pair UUID>
unpair() {
    :;
}
# }} simctl unpair

# {{ simctl upgrade
# @cmd Upgrade a device to a newer runtime.
# @arg device![`_choice_delete`]
# @arg runtime-id![`_choice_runtime_id`] <runtime id>
upgrade() {
    :;
}
# }} simctl upgrade

_choice_device() {
    xcrun simctl list devices | sed -n 's/ (.*)//p'
}

_choice_delete() {
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        print "%s\n" unavailable all
    fi
    _choice_device
}

_choice_runtime_id() {
    xcrun simctl list runtimes | sed -n 's/^\(.*\) - \(com\.apple\..*\)/\2\t\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"