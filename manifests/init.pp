# == Class: dhclient
#
# This class sets up the ISC DHCP client
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage dhclient using Puppet. Valid values 'yes' (default) and 
#   'no'.
# [*ensure*]
#   Status of dhclient. Valid values 'present' (default) and 'absent'.
# 
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class dhclient
(
    $manage = 'yes',
    $ensure = 'present'

) inherits dhclient::params
{

if $manage == 'yes' {

    class { 'dhclient::install':
        ensure => $ensure,
    }
}
}
