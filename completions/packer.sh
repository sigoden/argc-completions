#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ packer build
# @cmd build image(s) from template
# @option -color <false>           Disable color output.
# @flag -debug                     Debug mode enabled for builds.
# @option -except <foo,bar,baz>    Run all builds and post-processors other than these.
# @option -only <foo,bar,baz>      Build only the specified builds.
# @flag -force                     Force a build to continue if artifacts exist, deletes existing artifacts.
# @flag -machine-readable          Produce machine-readable output.
# @option -on-error[cleanup|abort|ask|run-cleanup-provisioner]  If the build fails do: clean up (default), abort, ask, or run-cleanup-provisioner.
# @option -parallel-builds <1>     Number of builds to run in parallel.
# @flag -timestamp-ui              Enable prefixing of each ui output with an RFC3339 timestamp.
# @option -var <key=value>         Variable for templates, can be used multiple times.
# @option -var-file <path>         JSON or HCL2 file containing user variables, can be used multiple times.
# @flag -warn-on-undeclared-var    Display warnings for user variable files containing undeclared variables.
# @arg template
build() {
    :;
}
# }} packer build

# {{ packer console
# @cmd creates a console for testing variable interpolation
# @option -var <key=value>    Variable for templates, can be used multiple times.
# @option -var-file <path>    JSON or HCL2 file containing user variables.
# @flag -config-type          Set to 'hcl2' to run in HCL2 mode when no file is passed.
# @arg template
console() {
    :;
}
# }} packer console

# {{ packer fix
# @cmd fixes templates from old versions of packer
# @option -validate <true>    If true (default), validates the fixed template.
# @arg template
fix() {
    :;
}

# {{{ packer fix iso-md5
# @cmd Replaces "iso_md5" in builders with "iso_checksum"
fix::iso-md5() {
    :;
}
# }}} packer fix iso-md5

# {{{ packer fix createtime
# @cmd Replaces ".CreateTime" in builder configs with "{{timestamp}}"
fix::createtime() {
    :;
}
# }}} packer fix createtime

# {{{ packer fix virtualbox-gaattach
# @cmd Updates VirtualBox builders using "guest_additions_attach" to use "guest_additions_mode"
fix::virtualbox-gaattach() {
    :;
}
# }}} packer fix virtualbox-gaattach

# {{{ packer fix pp-vagrant-override
# @cmd Fixes provider-specific overrides for Vagrant post-processor
fix::pp-vagrant-override() {
    :;
}
# }}} packer fix pp-vagrant-override

# {{{ packer fix virtualbox-rename
# @cmd Updates "virtualbox" builders to "virtualbox-iso"
fix::virtualbox-rename() {
    :;
}
# }}} packer fix virtualbox-rename

# {{{ packer fix vmware-rename
# @cmd Updates "vmware" builders to "vmware-iso"
fix::vmware-rename() {
    :;
}
# }}} packer fix vmware-rename

# {{{ packer fix parallels-headless
# @cmd Removes unused "headless" from Parallels builders
fix::parallels-headless() {
    :;
}
# }}} packer fix parallels-headless

# {{{ packer fix parallels-deprecations
# @cmd Removes deprecated "parallels_tools_host_path" from Parallels builders and changes "guest_os_distribution" to "guest_os_type".
fix::parallels-deprecations() {
    :;
}
# }}} packer fix parallels-deprecations

# {{{ packer fix sshkeypath
# @cmd Updates builders using "ssh_key_path" to use "ssh_private_key_file"
fix::sshkeypath() {
    :;
}
# }}} packer fix sshkeypath

# {{{ packer fix sshdisableagent
# @cmd Updates builders using "ssh_disable_agent" to use "ssh_disable_agent_forwarding"
fix::sshdisableagent() {
    :;
}
# }}} packer fix sshdisableagent

# {{{ packer fix scaleway-access-key
# @cmd Updates builders using "access_key" to use "organization_id"
fix::scaleway-access-key() {
    :;
}
# }}} packer fix scaleway-access-key

# {{{ packer fix manifest-filename
# @cmd Updates "manifest" post-processor so any "filename" field is renamed to "output".
fix::manifest-filename() {
    :;
}
# }}} packer fix manifest-filename

# {{{ packer fix amazon-shutdown_behavior
# @cmd Changes "shutdown_behaviour" to "shutdown_behavior" in Amazon builders.
fix::amazon-shutdown_behavior() {
    :;
}
# }}} packer fix amazon-shutdown_behavior

# {{{ packer fix amazon-enhanced-networking
# @cmd Replaces "enhanced_networking" in builders with "ena_support"
fix::amazon-enhanced-networking() {
    :;
}
# }}} packer fix amazon-enhanced-networking

# {{{ packer fix amazon-private-ip
# @cmd Replaces `"ssh_private_ip": true` in amazon builders with `"ssh_interface": "private_ip"`
fix::amazon-private-ip() {
    :;
}
# }}} packer fix amazon-private-ip

# {{{ packer fix amazon-temp-sec-cidrs
# @cmd Replaces "temporary_security_group_source_cidr" (string) with "temporary_security_group_source_cidrs" (list of strings)
fix::amazon-temp-sec-cidrs() {
    :;
}
# }}} packer fix amazon-temp-sec-cidrs

# {{{ packer fix docker-email
# @cmd Removes "login_email" from the Docker builder.
fix::docker-email() {
    :;
}
# }}} packer fix docker-email

# {{{ packer fix docker-tag-tags
# @cmd Updates "docker" post-processor so any "tag" field is renamed to "tags".
fix::docker-tag-tags() {
    :;
}
# }}} packer fix docker-tag-tags

# {{{ packer fix powershell-escapes
# @cmd Removes PowerShell escapes from user env vars and elevated username and password strings
fix::powershell-escapes() {
    :;
}
# }}} packer fix powershell-escapes

# {{{ packer fix vmware-compaction
# @cmd Adds "skip_compaction = true" to "vmware-iso" builders with incompatible disk_type_id
fix::vmware-compaction() {
    :;
}
# }}} packer fix vmware-compaction

# {{{ packer fix hyperv-deprecations
# @cmd Removes the deprecated "vhd_temp_path" setting from Hyper-V ISO builder templates
fix::hyperv-deprecations() {
    :;
}
# }}} packer fix hyperv-deprecations

# {{{ packer fix hyperv-vmxc-typo
# @cmd Fixes a typo replacing "clone_from_vmxc_path" with "clone_from_vmcx_path" in Hyper-V VMCX builder templates
fix::hyperv-vmxc-typo() {
    :;
}
# }}} packer fix hyperv-vmxc-typo

# {{{ packer fix hyperv-cpu-and-ram
# @cmd Replaces "cpu" with "cpus" and "ram_size" with "memory"in Hyper-V VMCX builder templates
fix::hyperv-cpu-and-ram() {
    :;
}
# }}} packer fix hyperv-cpu-and-ram

# {{{ packer fix clean-image-name
# @cmd Replaces /clean_(image|ami)_name/ in builder configs with "clean_resource_name"
fix::clean-image-name() {
    :;
}
# }}} packer fix clean-image-name

# {{{ packer fix spot-price-auto-product
# @cmd Removes the deprecated "spot_price_auto_product" setting from Amazon builder templates
fix::spot-price-auto-product() {
    :;
}
# }}} packer fix spot-price-auto-product

# {{{ packer fix qemu-disk-size
# @cmd Updates "disk_size" from int to string in QEMU builders.
fix::qemu-disk-size() {
    :;
}
# }}} packer fix qemu-disk-size

# {{{ packer fix comm-config
# @cmd Remove ssh prefixes from communicator port forwarding configuration (host_port_min, host_port_max, skip_nat_mapping)
fix::comm-config() {
    :;
}
# }}} packer fix comm-config

# {{{ packer fix ssh-wait-timeout
# @cmd Replaces "ssh_wait_timeout" with "ssh_timeout"
fix::ssh-wait-timeout() {
    :;
}
# }}} packer fix ssh-wait-timeout

# {{{ packer fix vsphere-iso-net-disk
# @cmd Removes deprecated network and disk fields from "vsphere-iso" builder
fix::vsphere-iso-net-disk() {
    :;
}
# }}} packer fix vsphere-iso-net-disk

# {{{ packer fix iso-checksum-type-and-url
# @cmd Puts content of potential "iso_checksum_url" and "iso_checksum_url" in "iso_checksum"
fix::iso-checksum-type-and-url() {
    :;
}
# }}} packer fix iso-checksum-type-and-url

# {{{ packer fix qemu-host-port
# @cmd Updates ssh_host_port_min and ssh_host_port_max to host_port_min and host_port_max
fix::qemu-host-port() {
    :;
}
# }}} packer fix qemu-host-port

# {{{ packer fix azure-exclude_from_latest
# @cmd Changes "exlude_from_latest" to "exclude_from_latest" in Azure builders.
fix::azure-exclude_from_latest() {
    :;
}
# }}} packer fix azure-exclude_from_latest

# {{{ packer fix proxmox-type
# @cmd Updates the builder type proxmox to proxmox-iso
fix::proxmox-type() {
    :;
}
# }}} packer fix proxmox-type
# }} packer fix

# {{ packer fmt
# @cmd Rewrites HCL2 config files to canonical format
# @flag -check              Check if the input is formatted.
# @flag -diff               Display diffs of formatting change
# @option -write <false>    Don't write to source files (always disabled if using -check)
# @flag -recursive          Also process files in subdirectories.
# @arg template
fmt() {
    :;
}
# }} packer fmt

# {{ packer hcl2_upgrade
# @cmd transform a JSON template into an HCL2 configuration
# @option -output-file <path>    Set output file name.
# @flag -with-annotations        Add helper annotation comments to the file to help new HCL2 users understand the template format.
# @arg template
hcl2_upgrade() {
    :;
}
# }} packer hcl2_upgrade

# {{ packer init
# @cmd Install missing plugins or upgrade plugins
# @flag -upgrade    On top of installing missing plugins, update installed plugins to the latest available version, if there is a new higher one.
# @arg template
init() {
    :;
}
# }} packer init

# {{ packer inspect
# @cmd see components of a template
# @flag -machine-readable    Machine-readable output
# @arg template
inspect() {
    :;
}
# }} packer inspect

# {{ packer plugins
# @cmd Interact with Packer plugins and catalog
plugins() {
    :;
}

# {{{ packer plugins install
# @cmd Install latest Packer plugin [matching version constraint]
plugins::install() {
    :;
}
# }}} packer plugins install

# {{{ packer plugins installed
# @cmd List all installed Packer plugin binaries
plugins::installed() {
    :;
}
# }}} packer plugins installed

# {{{ packer plugins remove
# @cmd Remove Packer plugins [matching a version]
plugins::remove() {
    :;
}
# }}} packer plugins remove

# {{{ packer plugins required
# @cmd List plugins required by a config
plugins::required() {
    :;
}
# }}} packer plugins required
# }} packer plugins

# {{ packer validate
# @cmd check that a template is valid
# @flag -syntax-only               Only check syntax.
# @option -except <foo,bar,baz>    Validate all builds other than these.
# @option -only <foo,bar,baz>      Validate only these builds.
# @flag -machine-readable          Produce machine-readable output.
# @option -var <key=value>         Variable for templates, can be used multiple times.
# @option -var-file <path>         JSON or HCL2 file containing user variables, can be used multiple times.
# @flag -no-warn-undeclared-var    Disable warnings for user variable files containing undeclared variables.
# @flag -evaluate-datasources      Evaluate data sources during validation (HCL2 only, may incur costs); Defaults to false.
# @arg template
validate() {
    :;
}
# }} packer validate

# {{ packer version
# @cmd Prints the Packer version
version() {
    :;
}
# }} packer version

command eval "$(argc --argc-eval "$0" "$@")"