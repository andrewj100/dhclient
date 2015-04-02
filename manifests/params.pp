#
# == Class: dhclient::params
#
# Defines some variables based on the operating system
#
class dhclient::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'dhclient'
        }
        'Debian': {
            $package_name = 'isc-dhcp-client'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
