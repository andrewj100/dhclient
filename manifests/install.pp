# == Class: dhclient::install
#
# This class installs dhclient
#
class dhclient::install
(
    $ensure

) inherits dhclient::params
{
    package { $::dhclient::params::package_name:
        ensure => $ensure,
    }
}
