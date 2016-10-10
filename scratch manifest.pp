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

service { "name":
	ensure     => running,
	enable     => true,
	hasrestart => true,
	hasstatus  => true,
	# pattern    => 'name',
}

file { 'name':
	ensure => file,
	owner  => owner,
	group  => group,
	mode   => mode,
	source => 'puppet:///modules/class/file.txt';
}
 



