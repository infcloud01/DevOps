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

service {"smtp":
	ensure     => running,
	enable     => true,
	hasrestart => true,
	hasstatus  => true,
	# pattern    =>"smtp',
}

#validate a puppet file
puppet parser validate file.pp

file { '/etc/motd':
	ensure => file,
	owner  => root,
	group  => root,
	#mode   => mode,
	#source => 'puppet:///modules/class/file.txt';
}

  299  puppet resource service puppet
  300  puppet resource user root
  301  puppet rescource package
  302  puppet resource package

puppet resource service puppet > puppet-service.pp

[root@35773e8e00ba DevOps]# cat puppet-service.pp
service { 'puppet':
  ensure => 'stopped',
  enable => 'false',
}

#vim module for puppet
puppet module install theurbanpenguin/puppet_vim
puppet apply -e " include puppet_vim "



 



