Used to manage dhclient - isc-dhcp-client
https://www.isc.org/downloads/dhcp/

```
dhclient
├── examples
│   └── init.pp
├── files
│   └── role.yaml
├── manifests
│   ├── init.pp
│   └── params.pp
├── README.md
└── templates
    └── dhclient.conf.erb
```

-- examples/init.pp
	Use this to test the manifest localy using:
	puppet apply examples/init.pp

-- files/roles.yaml
	This file needs to be dropped on the target server in: 
	/etc/puppetlabs/facter/facts.d/
	This contains the local or node specific variables:
		domain_name
		domain_search

-- manifests/init.pp
	Main block of code, it inherits dhcclient::params where
	configuration for the client can be added as well as support
	for additional OS's.
	It will require the package to be installed, then put the 
	configuration file in place and finaly restart network services. 

-- manifests/params.pp
	This contains a case statement where variables are set depending
	on the OS family returned by the command facter osfamily.

-- templates/dhclient.conf.erb
	This is the erb file to create the /etc/dhcp/dhcclient.conf


	

