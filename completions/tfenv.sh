#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ tfenv install
# @cmd Install a specific version of Terraform
# @arg version[`_choice_version`]
install() {
    :;
}
# }} tfenv install

# {{ tfenv use
# @cmd Switch a version to use
# @arg version[`_choice_installed_version`]
use() {
    :;
}
# }} tfenv use

# {{ tfenv uninstall
# @cmd Uninstall a specific version of Terraform
# @arg version[`_choice_installed_version`]
uninstall() {
    :;
}
# }} tfenv uninstall

# {{ tfenv list
# @cmd List all installed versions
list() {
    :;
}
# }} tfenv list

# {{ tfenv list-remote
# @cmd List all installable versions
list-remote() {
    :;
}
# }} tfenv list-remote

# {{ tfenv version-name
# @cmd Print current version
version-name() {
    :;
}
# }} tfenv version-name

# {{ tfenv init
# @cmd Update environment to use tfenv correctly.
init() {
    :;
}
# }} tfenv init

# {{ tfenv pin
# @cmd Write the current active version to ./.terraform-version
pin() {
    :;
}
# }} tfenv pin

_choice_version() {
    tfenv list-remote
}

_choice_installed_version() {
    tfenv list
}

command eval "$(argc --argc-eval "$0" "$@")"