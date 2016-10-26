file { '/etc/motd':
    content => "Hello\n",
    ensure  => 'file',
    owner   => 'infcloud01',
    group   => 'root',
}
