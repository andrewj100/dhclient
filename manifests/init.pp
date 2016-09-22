class dhclient inherits dhclient::params {

 package { $package :
    ensure => installed,
 }
 file { '/etc/dhcp/dhclient.conf':
    ensure => file,
    content => template('dhclient/dhclient.conf.erb'),
    mode => '0644',
    owner => root,
    group => root,
#   require => Package['isc-dhcp-client'],
    notify => Service['network.service'], 
 }
 service { 'network.service' :
   ensure => running,
   enable => true, 
 }
}

