node 'appserver01' {
	package { 'ntp':
	ensure => 'installed',
	}

	file { '/puppet.txt': 
	ensure => 'present',
	content => "Hello World",
	}

	service { 'ntpd': 
	ensure => 'running',
	enable => true,
	}
}



