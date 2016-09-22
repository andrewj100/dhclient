class dhclient::params { 
  case $::osfamily {
    'RedHat' : {
      $package = 'isc-dhcp-client'
    }
    'ubuntu' : {
      $package = 'isc-dhcp-client'
    }
    default : {
      fail("Module ${module_name} is not supported on ${::osfamily}")
    }
  }
  $domain_name = undef
  $domain_search = undef
  $timeout = 300 
}
