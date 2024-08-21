#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -m <<module>/<module-version>>        The name of the module and module version you want to operate on.
# @option -v <module-version>                   The version of the module to execute the specified action upon.
# @option -k[`_choice_kernel_arch`] <<kernel-version>/<arch>>  The kernel and arch to perform the action upon.
# @option -a --arch[`_choice_arch`]             The system architecture to perform the action upon.
# @flag -q --quiet                              Quiet.
# @flag -V --version                            Prints the currently installed version of dkms and exits.
# @option -c <dkms.conf-location>               The location of the dkms.conf file.
# @flag -d --distro                             The distribution being used.
# @flag -r --release                            The release being used.
# @flag --size                                  The size of the driver disk image to be created.
# @option --config <kernel-.config-location>    During a build this option is used to specify an alternate location for the kernel .config file which was used to compile that kernel.
# @option --archive <tarball-location>          This option is used during a ldtarball action to specify the location of the tarball you wish to load into your DKMS tree.
# @option --templatekernel[`_choice_kernel_arch`] <kernel-version>  This option is required for the action: match.
# @flag --force                                 This option can be used in conjunction with ldtarball to force copying over of extant files.
# @flag --binaries-only                         This option can be used in conjunction with mktarball in order to create a DKMS tarball which does not contain the source for the module within it.
# @flag --source-only                           This option can be used in conjunction with mktarball or mkrpm or mkdeb in order to create a DKMS tarball which does not contain any prebuilt kernel module binaries within it.
# @flag --all                                   This option can be used to automatically specify all relevant kernels/arches for a module/module-version.
# @flag --no-prepare-kernel                     This option keeps DKMS from first preparing your kernel before building a module for it.
# @flag --no-clean-kernel                       This option keeps DKMS from cleaning your kernel source tree after a build.
# @flag --no-depmod                             This option prevents DKMS from running the depmod command during install and uninstall which will avoid (re)calculating module dependencies and thereby save time.
# @option --kernelsourcedir <kernel-source-directory-location>  Using this option you can specify the location of your kernel source directory.
# @option --directive <"cli-directive=cli-value">  Using this option, you can specify additional directives from the command line.
# @flag --rpm_safe_upgrade                      This flag should be used when packaging DKMS enabled modules in RPMs.
# @option --spec <specfile>                     This option is used by the mkkmp action to specify which RPM spec file to use when generating the KMP.
# @option --dkmstree <path/to/place>            Provides a destination tree for building and installing modules to.
# @option --sourcetree <path/to/place>          Provides a location to build a DKMS package from.
# @option --installtree <path/to/place>         Provides a location to place modules when a dkms install command is issued.
# @option --legacy-postinst <0|1>               Includes a legacy postinstall script so that a DEB or RPM built by DKMS can be used on versions prior than DKMS 2.1.
# @option --dkmsframework <path/to/file>        A supplemental configuration file to the system-wide dkms framework, typically located in /etc/dkms/framework.conf.
# @option -j <number>                           Run no more than number jobs in parallel; see the -j option of make(1).

# {{ dkms add
# @cmd Adds a module/module-version combination to the tree for builds and installs.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
# @arg path-to-source-tree </path/to/source-tree>
# @arg path-to-tarball-tar </path/to/tarball.tar>
add() {
    :;
}
# }} dkms add

# {{ dkms remove
# @cmd Removes a module/version or module/version/kernel/arch combination from the tree.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
remove() {
    :;
}
# }} dkms remove

# {{ dkms build
# @cmd Builds the specified module/version combo for the specified kernel/arch.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
build() {
    :;
}
# }} dkms build

# {{ dkms unbuild
# @cmd Undoes the build for a module/version or module/version/kernel/arch combination from the tree.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
unbuild() {
    :;
}
# }} dkms unbuild

# {{ dkms install
# @cmd Installs a built module/version combo onto the kernel it was built for.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
# @arg path-to-driver-rpm </path/to/driver.rpm>
install() {
    :;
}
# }} dkms install

# {{ dkms uninstall
# @cmd Uninstalls an installed module/module-version combo from the kernel/arch passed in the -k option, or the current kernel if the -k option was not passed.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
uninstall() {
    :;
}
# }} dkms uninstall

# {{ dkms match
# @cmd Match installs modules onto the specified kernel by looking at the configuration of the specified templatekernel.
match() {
    :;
}
# }} dkms match

# {{ dkms mkdriverdisk
# @cmd Creates a floppy driver disk image for use when updated drivers are needed to install an OS.
# @arg module-version[`_choice_module_version`] <module/version>
mkdriverdisk() {
    :;
}
# }} dkms mkdriverdisk

# {{ dkms mktarball
# @cmd Creates a tarball archive for the specified module/version of all files in the DKMS tree for that module/version combination.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mktarball() {
    :;
}
# }} dkms mktarball

# {{ dkms ldtarball
# @cmd This takes a tarball made from the mktarball command and loads it into your DKMS tree.
# @arg path-to-tarball-tar </path/to/tarball.tar>
ldtarball() {
    :;
}
# }} dkms ldtarball

# {{ dkms mkrpm
# @cmd This action allows you to create an RPM package for a specified module / version.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mkrpm() {
    :;
}
# }} dkms mkrpm

# {{ dkms mkdeb
# @cmd This action allows you to create a debian binary package for a specified module / version.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mkdeb() {
    :;
}
# }} dkms mkdeb

# {{ dkms mkbmdeb
# @cmd Creates a Debian binary package containing just the binary modules in the /lib/modules installation path.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mkbmdeb() {
    :;
}
# }} dkms mkbmdeb

# {{ dkms mkdsc
# @cmd This action allows you to create a debian source package for a specified module / version.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mkdsc() {
    :;
}
# }} dkms mkdsc

# {{ dkms mkkmp
# @cmd This action allows you to create an Kernel Module Package source RPM for a specified module / version.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
mkkmp() {
    :;
}
# }} dkms mkkmp

# {{ dkms status
# @cmd Returns the current status of modules, versions and kernels within the tree as well as whether they have been added, built or installed.
# @arg module-module-version[`_choice_module_version`] <module/module-version>
status() {
    :;
}
# }} dkms status

# {{ dkms autoinstall
# @cmd Attempt to install the latest revision of all modules that have been installed for other kernel revisions.
autoinstall() {
    :;
}
# }} dkms autoinstall

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_kernel_arch() {
    _argc_util_mode_kv '/'
    if [[ -z "$argc__kv_prefix" ]]; then
        ls -1 /lib/modules/ | _argc_util_transform nospace
    else
        find /lib/modules/$argc__kv_prefix/build/arch/ -maxdepth 1 -type d ! -type l -printf "%P\n" | tail -n +2
    fi
}

_choice_arch() {
    find /lib/modules/$(uname -r)/build/arch/ -maxdepth 1 -type d ! -type l -printf "%P\n" | tail -n +2
}

_choice_module_version() {
    find "${argc_dkmstree:-"/var/lib/dkms"}" -maxdepth 2 -type d ! -type l -printf "%P\n" | grep '/'
}

command eval "$(argc --argc-eval "$0" "$@")"