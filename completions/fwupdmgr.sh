#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                Show help options
# @flag -v --verbose             Show extra debugging information
# @flag --version                Show client and daemon versions
# @flag --offline                Schedule installation for next reboot when possible
# @flag --allow-reinstall        Allow reinstalling existing firmware versions
# @flag --allow-older            Allow downgrading firmware versions
# @flag --allow-branch-switch    Allow switching firmware branch
# @flag --force                  Force the action by relaxing some runtime checks
# @flag -y --assume-yes          Answer yes to all questions
# @flag --sign                   Sign the uploaded data with the client certificate
# @flag --no-unreported-check    Do not check for unreported history
# @flag --no-metadata-check      Do not check for old metadata
# @flag --no-remote-check        Do not check if download remotes should be enabled
# @flag --no-reboot-check        Do not check or prompt for reboot after update
# @flag --no-safety-check        Do not perform device safety checks
# @flag --no-device-prompt       Do not prompt for devices
# @flag --no-history             Do not write to the history database
# @flag --show-all               Show all results
# @flag --disable-ssl-strict     Ignore SSL strict checks when downloading files
# @flag --ipfs                   Only use IPFS when downloading files
# @flag --filter                 Filter with a set of device flags using a ~ prefix to exclude, e.g. 'internal,~needs-reboot'
# @flag --json                   Output in JSON format

# {{ fwupdmgr activate
# @cmd Activate devices
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
activate() {
    :;
}
# }} fwupdmgr activate

# {{ fwupdmgr block-firmware
# @cmd Blocks a specific firmware from being installed
# @arg checksum
block-firmware() {
    :;
}
# }} fwupdmgr block-firmware

# {{ fwupdmgr clear-results
# @cmd Clears the results from the last update
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
clear-results() {
    :;
}
# }} fwupdmgr clear-results

# {{ fwupdmgr device-test
# @cmd Test a device using a JSON manifest
# @arg filename1
# @arg filename2
device-test() {
    :;
}
# }} fwupdmgr device-test

# {{ fwupdmgr disable-remote
# @cmd Disables a given remote
# @arg remote-id[`_choice_remote_id`]
disable-remote() {
    :;
}
# }} fwupdmgr disable-remote

# {{ fwupdmgr downgrade
# @cmd Downgrades the firmware on a device
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
downgrade() {
    :;
}
# }} fwupdmgr downgrade

# {{ fwupdmgr download
# @cmd Download a file
# @arg location
download() {
    :;
}
# }} fwupdmgr download

# {{ fwupdmgr enable-remote
# @cmd Enables a given remote
# @arg remote-id[`_choice_remote_id`]
enable-remote() {
    :;
}
# }} fwupdmgr enable-remote

# {{ fwupdmgr get-approved-firmware
# @cmd Gets the list of approved firmware
get-approved-firmware() {
    :;
}
# }} fwupdmgr get-approved-firmware

# {{ fwupdmgr get-blocked-firmware
# @cmd Gets the list of blocked firmware
get-blocked-firmware() {
    :;
}
# }} fwupdmgr get-blocked-firmware

# {{ fwupdmgr get-details
# @cmd Gets details about a firmware file
# @arg file
get-details() {
    :;
}
# }} fwupdmgr get-details

# {{ fwupdmgr get-devices
# @cmd Get all devices that support firmware updates
get-devices() {
    :;
}
# }} fwupdmgr get-devices

# {{ fwupdmgr get-history
# @cmd Show history of firmware updates
get-history() {
    :;
}
# }} fwupdmgr get-history

# {{ fwupdmgr get-plugins
# @cmd Get all enabled plugins registered with the system
get-plugins() {
    :;
}
# }} fwupdmgr get-plugins

# {{ fwupdmgr get-releases
# @cmd Gets the releases for a device
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
get-releases() {
    :;
}
# }} fwupdmgr get-releases

# {{ fwupdmgr get-remotes
# @cmd Gets the configured remotes
get-remotes() {
    :;
}
# }} fwupdmgr get-remotes

# {{ fwupdmgr get-results
# @cmd Gets the results from the last update
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
get-results() {
    :;
}
# }} fwupdmgr get-results

# {{ fwupdmgr get-topology
# @cmd Alias to get-devices
get-topology() {
    :;
}
# }} fwupdmgr get-topology

# {{ fwupdmgr get-updates
# @cmd Gets the list of updates for connected hardware
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
get-updates() {
    :;
}
# }} fwupdmgr get-updates

# {{ fwupdmgr get-upgrades
# @cmd Alias to get-updates
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
get-upgrades() {
    :;
}
# }} fwupdmgr get-upgrades

# {{ fwupdmgr install
# @cmd Install a firmware file on this hardware
# @arg file
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
install() {
    :;
}
# }} fwupdmgr install

# {{ fwupdmgr modify-config
# @cmd Modifies a daemon configuration value
# @arg key-value <KEY,VALUE>
modify-config() {
    :;
}
# }} fwupdmgr modify-config

# {{ fwupdmgr modify-remote
# @cmd REMOTE-ID KEY VALUE Modifies a given remote
# @arg remote-id[`_choice_remote_id`]
# @arg key
# @arg value
modify-remote() {
    :;
}
# }} fwupdmgr modify-remote

# {{ fwupdmgr refresh
# @cmd Refresh metadata from remote server
# @arg file-file_sig-remote-id <FILE FILE_SIG REMOTE-ID>
refresh() {
    :;
}
# }} fwupdmgr refresh

# {{ fwupdmgr reinstall
# @cmd Reinstall current firmware on the device
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
reinstall() {
    :;
}
# }} fwupdmgr reinstall

# {{ fwupdmgr report-history
# @cmd Share firmware history with the developers
report-history() {
    :;
}
# }} fwupdmgr report-history

# {{ fwupdmgr security
# @cmd Gets the host security attributes
security() {
    :;
}
# }} fwupdmgr security

# {{ fwupdmgr set-approved-firmware
# @cmd Sets the list of approved firmware
# @arg filename-checksum1-checksum2-checksum3 <FILENAME|CHECKSUM1[,CHECKSUM2][,CHECKSUM3]>
set-approved-firmware() {
    :;
}
# }} fwupdmgr set-approved-firmware

# {{ fwupdmgr switch-branch
# @cmd Switch the firmware branch on the device
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
# @arg branch
switch-branch() {
    :;
}
# }} fwupdmgr switch-branch

# {{ fwupdmgr sync-bkc
# @cmd Sync firmware versions to the host best known configuration
sync-bkc() {
    :;
}
# }} fwupdmgr sync-bkc

# {{ fwupdmgr unblock-firmware
# @cmd Unblocks a specific firmware from being installed
# @arg checksum
unblock-firmware() {
    :;
}
# }} fwupdmgr unblock-firmware

# {{ fwupdmgr unlock
# @cmd Unlocks the device for firmware access
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
unlock() {
    :;
}
# }} fwupdmgr unlock

# {{ fwupdmgr update
# @cmd Updates all specified devices to latest firmware version, or all devices if unspecified
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
update() {
    :;
}
# }} fwupdmgr update

# {{ fwupdmgr upgrade
# @cmd Alias to update
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
upgrade() {
    :;
}
# }} fwupdmgr upgrade

# {{ fwupdmgr verify
# @cmd Checks cryptographic hash matches firmware
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
verify() {
    :;
}
# }} fwupdmgr verify

# {{ fwupdmgr verify-update
# @cmd Update the stored cryptographic hash with current ROM contents
# @arg device-id-guid[`_choice_device_id`] <DEVICE-ID|GUID>
verify-update() {
    :;
}
# }} fwupdmgr verify-update

_choice_device_id() {
    fwupdmgr get-devices --json | \
    yq '.Devices[] | .DeviceId + "	" + .Name'
}

_choice_remote_id() {
    fwupdmgr get-remotes --json | \
    yq '.Remotes[] | .Id + "	" + .Title'
}

command eval "$(argc --argc-eval "$0" "$@")"