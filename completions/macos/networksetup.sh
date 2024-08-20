#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ networksetup -listnetworkserviceorder
# @cmd Displays a list of network services in the order they are contacted for a connection, along with the corresponding port and device for each.
-listnetworkserviceorder() {
    :;
}
# }} networksetup -listnetworkserviceorder

# {{ networksetup -listallnetworkservices
# @cmd Displays a list of all the network services on the server's hardware ports.
-listallnetworkservices() {
    :;
}
# }} networksetup -listallnetworkservices

# {{ networksetup -listallhardwareports
# @cmd Displays list of hardware ports with corresponding device name and ethernet address.
-listallhardwareports() {
    :;
}
# }} networksetup -listallhardwareports

# {{ networksetup -detectnewhardware
# @cmd Detects new network hardware and creates a default network service on the hardware.
-detectnewhardware() {
    :;
}
# }} networksetup -detectnewhardware

# {{ networksetup -getmacaddress
# @cmd Displays ethernet (or Wi-Fi) address for hardwareport or device specified.
# @arg hardwareport[`_choice_hardwareport`]
-getmacaddress() {
    :;
}
# }} networksetup -getmacaddress

# {{ networksetup -getcomputername
# @cmd Displays the computer name.
-getcomputername() {
    :;
}
# }} networksetup -getcomputername

# {{ networksetup -setcomputername
# @cmd Sets computer name to <computername>.
# @arg computername
-setcomputername() {
    :;
}
# }} networksetup -setcomputername

# {{ networksetup -getinfo
# @cmd Displays the IP address, subnet mask, router, and hardware address for the <networkservice> that you specify.
# @arg networkservice[`_choice_service`]
-getinfo() {
    :;
}
# }} networksetup -getinfo

# {{ networksetup -setmanual
# @cmd Set the TCP/IP configuration for <networkservice> to manual with IP address set to <ip>, Subnet Mask set to <subnet>, and Router address set to <router>.
# @arg networkservice[`_choice_service`]
# @arg ip
# @arg subnet
# @arg router
-setmanual() {
    :;
}
# }} networksetup -setmanual

# {{ networksetup -setdhcp
# @cmd Use this command to set the TCP/IP configuration for the specified <networkservice> to use DHCP.
# @arg networkservice[`_choice_service`]
# @arg clientid
-setdhcp() {
    :;
}
# }} networksetup -setdhcp

# {{ networksetup -setbootp
# @cmd Use this command to set the TCP/IP configuration for the specified <networkservice> to use BOOTP.
# @arg networkservice[`_choice_service`]
-setbootp() {
    :;
}
# }} networksetup -setbootp

# {{ networksetup -setmanualwithdhcprouter
# @cmd Use this command to specify a manual IP address to use for DHCP for the specified <networkservice>.
# @arg networkservice[`_choice_service`]
# @arg ip
-setmanualwithdhcprouter() {
    :;
}
# }} networksetup -setmanualwithdhcprouter

# {{ networksetup -getadditionalroutes
# @cmd Use this command to display the list of additional IPv4 routes configured for the service.
# @arg networkservice[`_choice_service`]
-getadditionalroutes() {
    :;
}
# }} networksetup -getadditionalroutes

# {{ networksetup -setadditionalroutes
# @cmd Use this command to set the list of IPv4 additional routes configured for the service.
# @arg networkservice[`_choice_service`]
# @arg dest-mask-gate+ <dest mask gate>
-setadditionalroutes() {
    :;
}
# }} networksetup -setadditionalroutes

# {{ networksetup -setv4off
# @cmd Use this command to turn IPv4 off on the specified <networkservice>.
# @arg networkservice[`_choice_service`]
-setv4off() {
    :;
}
# }} networksetup -setv4off

# {{ networksetup -setv6off
# @cmd Use this command to turn IPv6 off on the specified <networkservice>.
# @arg networkservice[`_choice_service`]
-setv6off() {
    :;
}
# }} networksetup -setv6off

# {{ networksetup -setv6automatic
# @cmd Use this command to set IPv6 to get its addresses automatically for <networkservice>.
# @arg networkservice[`_choice_service`]
-setv6automatic() {
    :;
}
# }} networksetup -setv6automatic

# {{ networksetup -setv6linklocal
# @cmd Use this command to set IPv6 to only use link local for <networkservice>.
# @arg networkservice[`_choice_service`]
-setv6linklocal() {
    :;
}
# }} networksetup -setv6linklocal

# {{ networksetup -setv6manual
# @cmd Use this command to set IPv6 to get its addresses manually for <networkservice>.
# @arg ip
# @arg prefixlength
# @arg router
-setv6manual() {
    :;
}
# }} networksetup -setv6manual

# {{ networksetup -getv6additionalroutes
# @cmd Use this command to display the list of additional IPv6 routes configured for the service.
# @arg networkservice[`_choice_service`]
-getv6additionalroutes() {
    :;
}
# }} networksetup -getv6additionalroutes

# {{ networksetup -setv6additionalroutes
# @cmd Use this command to set the list of additional routes configured for the service.
# @arg networkservice[`_choice_service`]
# @arg dest-prefixlength-gate+ <dest prefixlength gate>
-setv6additionalroutes() {
    :;
}
# }} networksetup -setv6additionalroutes

# {{ networksetup -getdnsservers
# @cmd Displays DNS info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getdnsservers() {
    :;
}
# }} networksetup -getdnsservers

# {{ networksetup -setdnsservers
# @cmd Use this command to specify the IP addresses of servers you want the specified <networkservice> to use to resolve domain names.
# @arg networkservice[`_choice_service`]
# @arg dns+
-setdnsservers() {
    :;
}
# }} networksetup -setdnsservers

# {{ networksetup -getsearchdomains
# @cmd Displays Domain Name info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getsearchdomains() {
    :;
}
# }} networksetup -getsearchdomains

# {{ networksetup -setsearchdomains
# @cmd Use this command to designate the search domain for the specified <networkservice>.
# @arg networkservice[`_choice_service`]
# @arg domain1
# @arg domain2
-setsearchdomains() {
    :;
}
# }} networksetup -setsearchdomains

# {{ networksetup -create6to4service
# @cmd Use this command to create a new 6 to 4 service with name <newnetworkservicename>.
# @arg newnetworkservicename
-create6to4service() {
    :;
}
# }} networksetup -create6to4service

# {{ networksetup -set6to4automatic
# @cmd Use this command to set the 6 to 4 service such that it will get the relay address automatically.
# @arg newnetworkservicename
-set6to4automatic() {
    :;
}
# }} networksetup -set6to4automatic

# {{ networksetup -set6to4manual
# @cmd Use this command to set the 6 to 4 service such that it will get the relay address manually.
# @arg newnetworkservicename
# @arg relayaddress
-set6to4manual() {
    :;
}
# }} networksetup -set6to4manual

# {{ networksetup -getwebproxy
# @cmd Displays Web proxy (server, port, enabled value) info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getwebproxy() {
    :;
}
# }} networksetup -getwebproxy

# {{ networksetup -setwebproxy
# @cmd Set Web proxy for <networkservice> with <domain> and <port number>.
# @arg networkservice[`_choice_service`]
# @arg domain
# @arg portnumber
# @arg authenticated
# @arg username
# @arg password
-setwebproxy() {
    :;
}
# }} networksetup -setwebproxy

# {{ networksetup -setwebproxystate
# @cmd Set Web proxy on <networkservice> to either <on> or <off>.
# @arg networkservice![`_choice_service`]
# @arg enum[on|off]
-setwebproxystate() {
    :;
}
# }} networksetup -setwebproxystate

# {{ networksetup -getsecurewebproxy
# @cmd Displays Secure Web proxy (server, port, enabled value) info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getsecurewebproxy() {
    :;
}
# }} networksetup -getsecurewebproxy

# {{ networksetup -setsecurewebproxy
# @cmd Set Secure Web proxy for <networkservice> with <domain> and <port number>.
# @arg networkservice[`_choice_service`]
# @arg domain
# @arg portnumber
# @arg authenticated
# @arg username
# @arg password
-setsecurewebproxy() {
    :;
}
# }} networksetup -setsecurewebproxy

# {{ networksetup -setsecurewebproxystate
# @cmd Set SecureWeb proxy on <networkservice> to either <on> or <off>.
# @arg networkservice![`_choice_service`]
# @arg enum[on|off]
-setsecurewebproxystate() {
    :;
}
# }} networksetup -setsecurewebproxystate

# {{ networksetup -getsocksfirewallproxy
# @cmd Displays SOCKS Firewall proxy (server, port, enabled value) info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getsocksfirewallproxy() {
    :;
}
# }} networksetup -getsocksfirewallproxy

# {{ networksetup -setsocksfirewallproxy
# @cmd Set SOCKS Firewall proxy for <networkservice> with <domain> and <port number>.
# @arg networkservice[`_choice_service`]
# @arg domain
# @arg portnumber
# @arg authenticated
# @arg username
# @arg password
-setsocksfirewallproxy() {
    :;
}
# }} networksetup -setsocksfirewallproxy

# {{ networksetup -setsocksfirewallproxystate
# @cmd Set SOCKS Firewall proxy to  either <on> or <off>.
# @arg networkservice![`_choice_service`]
# @arg enum[on|off]
-setsocksfirewallproxystate() {
    :;
}
# }} networksetup -setsocksfirewallproxystate

# {{ networksetup -getproxybypassdomains
# @cmd Displays Bypass Domain Names for <networkservice>.
# @arg networkservice[`_choice_service`]
-getproxybypassdomains() {
    :;
}
# }} networksetup -getproxybypassdomains

# {{ networksetup -setproxybypassdomains
# @cmd Set the Bypass Domain Name Servers for <networkservice> to <domain1> [domain2] [...].
# @arg networkservice[`_choice_service`]
# @arg domain+
-setproxybypassdomains() {
    :;
}
# }} networksetup -setproxybypassdomains

# {{ networksetup -getproxyautodiscovery
# @cmd Displays Proxy Auto Discover for <networkservice>.
# @arg networkservice[`_choice_service`]
-getproxyautodiscovery() {
    :;
}
# }} networksetup -getproxyautodiscovery

# {{ networksetup -setproxyautodiscovery
# @cmd Set Proxy Auto Discover for <networkservice> to either <on> or <off>.
# @arg networkservice![`_choice_service`]
# @arg enum[on|off]
-setproxyautodiscovery() {
    :;
}
# }} networksetup -setproxyautodiscovery

# {{ networksetup -setautoproxyurl
# @cmd Set proxy auto-config to url for <networkservice> and enable it.
# @arg networkservice[`_choice_service`]
# @arg url
-setautoproxyurl() {
    :;
}
# }} networksetup -setautoproxyurl

# {{ networksetup -getautoproxyurl
# @cmd Displays proxy auto-config (url, enabled) info for <networkservice>.
# @arg networkservice[`_choice_service`]
-getautoproxyurl() {
    :;
}
# }} networksetup -getautoproxyurl

# {{ networksetup -getairportnetwork
# @cmd Displays current Wi-Fi Network.
# @arg hardwareport[`_choice_hardwareport`]
-getairportnetwork() {
    :;
}
# }} networksetup -getairportnetwork

# {{ networksetup -setairportnetwork
# @cmd Set Wi-Fi Network to <network> using optional [password] if specified.
# @arg hardwareport[`_choice_hardwareport`]
# @arg network
# @arg password
-setairportnetwork() {
    :;
}
# }} networksetup -setairportnetwork

# {{ networksetup -getairportpower
# @cmd Displays whether Wi-Fi power is on or off.
# @arg hardwareport[`_choice_hardwareport`]
-getairportpower() {
    :;
}
# }} networksetup -getairportpower

# {{ networksetup -setairportpower
# @cmd Set Wi-Fi power to either <on> or <off>.
# @arg hardwareport![`_choice_hardwareport`]
# @arg enum[on|off]
-setairportpower() {
    :;
}
# }} networksetup -setairportpower

# {{ networksetup -listpreferredwirelessnetworks
# @cmd List the preferred wireless networks for <hardwareport>
# @arg hardwareport[`_choice_hardwareport`]
-listpreferredwirelessnetworks() {
    :;
}
# }} networksetup -listpreferredwirelessnetworks

# {{ networksetup -addpreferredwirelessnetworkatindex
# @cmd Add wireless network named <network> to preferred list for <hardwareport> at <index>.
# @arg hardwareport[`_choice_hardwareport`]
# @arg network
# @arg index
# @arg securitytype
# @arg password
-addpreferredwirelessnetworkatindex() {
    :;
}
# }} networksetup -addpreferredwirelessnetworkatindex

# {{ networksetup -removepreferredwirelessnetwork
# @cmd Remove <network> from the preferred wireless network list for <hardwareport>
# @arg hardwareport[`_choice_hardwareport`]
# @arg network
-removepreferredwirelessnetwork() {
    :;
}
# }} networksetup -removepreferredwirelessnetwork

# {{ networksetup -removeallpreferredwirelessnetworks
# @cmd Remove all networks from the preferred wireless network list for <hardwareport>
# @arg hardwareport[`_choice_hardwareport`]
-removeallpreferredwirelessnetworks() {
    :;
}
# }} networksetup -removeallpreferredwirelessnetworks

# {{ networksetup -getnetworkserviceenabled
# @cmd Displays whether a service is on or off (enabled or disabled).
# @arg networkservice[`_choice_service`]
-getnetworkserviceenabled() {
    :;
}
# }} networksetup -getnetworkserviceenabled

# {{ networksetup -setnetworkserviceenabled
# @cmd Use this command to turn the specified network service on or off (enable or disable).
# @arg networkservice![`_choice_service`]
# @arg enum[on|off]
-setnetworkserviceenabled() {
    :;
}
# }} networksetup -setnetworkserviceenabled

# {{ networksetup -createnetworkservice
# @cmd Create a service named <networkservice> on port <hardwareport>.
# @arg networkservicename
# @arg hardwareport[`_choice_hardwareport`]
-createnetworkservice() {
    :;
}
# }} networksetup -createnetworkservice

# {{ networksetup -renamenetworkservice
# @cmd Use this command to rename the specified network service <networkservice> to <newnetworkservicename>.
# @arg networkservice[`_choice_service`]
# @arg newnetworkservicename
-renamenetworkservice() {
    :;
}
# }} networksetup -renamenetworkservice

# {{ networksetup -duplicatenetworkservice
# @cmd Use this command to duplicate an existing network service <networkservice> and rename it to the specified name <newnetworkservicename>.
# @arg networkservice[`_choice_service`]
# @arg newnetworkservicename
-duplicatenetworkservice() {
    :;
}
# }} networksetup -duplicatenetworkservice

# {{ networksetup -removenetworkservice
# @cmd Use this command to delete a network service <networkservice>.
# @arg networkservice[`_choice_service`]
-removenetworkservice() {
    :;
}
# }} networksetup -removenetworkservice

# {{ networksetup -ordernetworkservices
# @cmd Use this command to designate the order network services are contacted on the specified hardware port.
# @arg service*[`_choice_service`]
-ordernetworkservices() {
    :;
}
# }} networksetup -ordernetworkservices

# {{ networksetup -setMTUAndMediaAutomatically
# @cmd Set hardwareport or device specified back to automatically setting the MTU and Media.
# @arg hardwareport[`_choice_hardwareport`]
-setMTUAndMediaAutomatically() {
    :;
}
# }} networksetup -setMTUAndMediaAutomatically

# {{ networksetup -getMTU
# @cmd Get the MTU value for hardwareport or device specified.
# @arg hardwareport[`_choice_hardwareport`]
-getMTU() {
    :;
}
# }} networksetup -getMTU

# {{ networksetup -setMTU
# @cmd Set MTU for hardwareport or device specified.
# @arg hardwareport[`_choice_hardwareport`]
-setMTU() {
    :;
}
# }} networksetup -setMTU

# {{ networksetup -listValidMTURange
# @cmd List the valid MTU range for hardwareport or device specified.
# @arg hardwareport[`_choice_hardwareport`]
-listValidMTURange() {
    :;
}
# }} networksetup -listValidMTURange

# {{ networksetup -getMedia
# @cmd Show both the current setting for media and the active media on hardwareport or device specified.
# @arg hardwareport[`_choice_hardwareport`]
-getMedia() {
    :;
}
# }} networksetup -getMedia

# {{ networksetup -setMedia
# @cmd Set media for hardwareport or device specified to subtype.
# @arg hardwareport[`_choice_hardwareport`]
# @arg subtype
-setMedia() {
    :;
}
# }} networksetup -setMedia

# {{ networksetup -listValidMedia
# @cmd List valid media options for hardwareport or device name.
# @arg hardwareport[`_choice_hardwareport`]
-listValidMedia() {
    :;
}
# }} networksetup -listValidMedia

# {{ networksetup -createVLAN
# @cmd Create a VLAN with the name <name> over the parent device <parentdevice> and with the tag <tag>.
# @arg name
# @arg parentdevice
# @arg tag
-createVLAN() {
    :;
}
# }} networksetup -createVLAN

# {{ networksetup -deleteVLAN
# @cmd Delete the VLAN with the name <name> over the parent device <parentdevice> and with the tag <tag>.
# @arg name
# @arg parentdevice
# @arg tag
-deleteVLAN() {
    :;
}
# }} networksetup -deleteVLAN

# {{ networksetup -listVLANs
# @cmd List the VLANs that have been created.
-listVLANs() {
    :;
}
# }} networksetup -listVLANs

# {{ networksetup -listdevicesthatsupportVLAN
# @cmd List the devices that support VLANs.
-listdevicesthatsupportVLAN() {
    :;
}
# }} networksetup -listdevicesthatsupportVLAN

# {{ networksetup -isBondSupported
# @cmd Displays YES if the device can be added to a bond.
# @arg device[`_choice_device`]
-isBondSupported() {
    :;
}
# }} networksetup -isBondSupported

# {{ networksetup -createBond
# @cmd Create a bond with the user-defined-name name and optionally add any listed devices if they support bonding.
# @arg name
# @arg device*[`_choice_device`]
-createBond() {
    :;
}
# }} networksetup -createBond

# {{ networksetup -deleteBond
# @cmd Delete the bond with the specified device-name.
# @arg bond
-deleteBond() {
    :;
}
# }} networksetup -deleteBond

# {{ networksetup -addDeviceToBond
# @cmd Add device to bond.
# @arg device[`_choice_device`]
# @arg bond
-addDeviceToBond() {
    :;
}
# }} networksetup -addDeviceToBond

# {{ networksetup -removeDeviceFromBond
# @cmd Remove device from bond.
# @arg device[`_choice_device`]
# @arg bond
-removeDeviceFromBond() {
    :;
}
# }} networksetup -removeDeviceFromBond

# {{ networksetup -listBonds
# @cmd List of all bonds.
-listBonds() {
    :;
}
# }} networksetup -listBonds

# {{ networksetup -showBondStatus
# @cmd Display the status of the specified bond.
# @arg bond
-showBondStatus() {
    :;
}
# }} networksetup -showBondStatus

# {{ networksetup -listpppoeservices
# @cmd List all PPPoE services in the current set.
-listpppoeservices() {
    :;
}
# }} networksetup -listpppoeservices

# {{ networksetup -showpppoestatus
# @cmd Display the status of the PPPoE service with the specified name.
# @arg name
-showpppoestatus() {
    :;
}
# }} networksetup -showpppoestatus

# {{ networksetup -createpppoeservice
# @cmd Create a PPPoE service on the specified device with the service name specified.
# @arg device[`_choice_device`]
# @arg name
# @arg account
# @arg password
# @arg pppoename
-createpppoeservice() {
    :;
}
# }} networksetup -createpppoeservice

# {{ networksetup -deletepppoeservice
# @cmd Delete the service.
# @arg service[`_choice_service`]
-deletepppoeservice() {
    :;
}
# }} networksetup -deletepppoeservice

# {{ networksetup -setpppoeaccountname
# @cmd Set the account name for the service.
# @arg service[`_choice_service`]
# @arg account
-setpppoeaccountname() {
    :;
}
# }} networksetup -setpppoeaccountname

# {{ networksetup -setpppoepassword
# @cmd Set the password for the service.
# @arg service[`_choice_service`]
# @arg password
-setpppoepassword() {
    :;
}
# }} networksetup -setpppoepassword

# {{ networksetup -connectpppoeservice
# @cmd Connect the service.
# @arg service[`_choice_service`]
-connectpppoeservice() {
    :;
}
# }} networksetup -connectpppoeservice

# {{ networksetup -disconnectpppoeservice
# @cmd Disconnect the service.
# @arg service[`_choice_service`]
-disconnectpppoeservice() {
    :;
}
# }} networksetup -disconnectpppoeservice

# {{ networksetup -listlocations
# @cmd List all network locations.
-listlocations() {
    :;
}
# }} networksetup -listlocations

# {{ networksetup -getcurrentlocation
# @cmd Display the name of the current set.
-getcurrentlocation() {
    :;
}
# }} networksetup -getcurrentlocation

# {{ networksetup -createlocation
# @cmd Create a set with the user-defined-name name and optionally populate it with the default services.
# @arg location[`_choice_location`]
# @arg populate
-createlocation() {
    :;
}
# }} networksetup -createlocation

# {{ networksetup -deletelocation
# @cmd Delete the set.
# @arg location[`_choice_location`]
-deletelocation() {
    :;
}
# }} networksetup -deletelocation

# {{ networksetup -switchtolocation
# @cmd Make the specified set the current set.
# @arg location[`_choice_location`]
-switchtolocation() {
    :;
}
# }} networksetup -switchtolocation

# {{ networksetup -version
# @cmd Displays version of networksetup tool.
-version() {
    :;
}
# }} networksetup -version

# {{ networksetup -printcommands
# @cmd Displays a list of commands with no detail.
-printcommands() {
    :;
}
# }} networksetup -printcommands

_choice_hardwareport() {
    networksetup -listallhardwareports | \
    sed -n 's/^Hardware Port: \(.*\)/\1/p'
}

_choice_service() {
    networksetup -listallnetworkservices | \
    sed -e '1d' -e 's/\*//'
}

_choice_device() {
    networksetup -listallhardwareports | \
    sed -n 's/^Device: \(.*\)/\1/p'
}

_choice_location() {
    networksetup -listlocations 
}

command eval "$(argc --argc-eval "$0" "$@")"