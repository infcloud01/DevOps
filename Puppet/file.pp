file { '/etc/motd' :
  ensure  => 'file',
  content => 'Welcome',
}
